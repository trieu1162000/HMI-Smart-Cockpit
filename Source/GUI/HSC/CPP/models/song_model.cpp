#include "song_model.h"
#include <QDir>
#include <QFileInfoList>
#include <QDebug>
#include <QMediaPlayer>
#include <QEventLoop>
#include <QTimer>
#include <QMediaMetaData>
#include <QStandardPaths>
#include <QBuffer>

songModel::songModel(QObject *parent)
    : QAbstractListModel(parent)
{
    m_audioOutput = std::make_unique<QAudioOutput>();
    m_currentPlayingSong = nullptr;
    m_player = std::make_unique<QMediaPlayer>();
    m_player->setAudioOutput(m_audioOutput.get());

    connect(m_player.get(), &QMediaPlayer::positionChanged, this, [this](qint64){
        emit currentSongProgressChanged();
    });
    connect(m_player.get(), &QMediaPlayer::durationChanged, this, [this](qint64){
        emit currentSongDurationChanged();
    });
    connect(m_player.get(), &QMediaPlayer::playbackStateChanged, this, [this]() {
        emit isPlayingChanged();
    });
}

int songModel::rowCount(const QModelIndex &parent) const {
    Q_UNUSED(parent);
    return m_songs.size();
}

QVariant songModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid() || index.row() >= m_songs.size())
        return {};

    const auto &song = m_songs.at(index.row());
    switch (role) {
        case TitleRole: return song.title;
        case ArtistRole: return song.artist;
        case DurationRole: return song.duration;
        case LikedRole: return song.liked;
    }
    return {};
}

QHash<int, QByteArray> songModel::roleNames() const {
    return {
        { TitleRole, "title" },
        { ArtistRole, "artist" },
        { DurationRole, "duration" },
        { LikedRole, "liked" },
    };
}

void songModel::loadFromFolder(const QString &path) {
    beginResetModel();
    m_songs.clear();

    QDir dir(path);
    QStringList filters = { "*.mp3", "*.wav" };
    QFileInfoList files = dir.entryInfoList(filters, QDir::Files);

    QMediaPlayer player;
    for (const QFileInfo &file : files) {
        QEventLoop loop;
        QTimer timer;

        // Timeout fallback in case metadata doesn't load
        timer.setSingleShot(true);
        QObject::connect(&timer, &QTimer::timeout, &loop, &QEventLoop::quit);

        QObject::connect(&player, &QMediaPlayer::mediaStatusChanged, [&](QMediaPlayer::MediaStatus status) {
            if (status == QMediaPlayer::LoadedMedia || status == QMediaPlayer::InvalidMedia)
                loop.quit();
        });

        player.setSource(QUrl::fromLocalFile(file.absoluteFilePath()));
        timer.start(1000); // 1 second timeout
        loop.exec(); // Wait until metadata is ready or timeout

        songItem item;
        item.title = player.metaData().stringValue(QMediaMetaData::Title);
        item.artist = player.metaData().stringValue(QMediaMetaData::ContributingArtist);
        item.duration = player.metaData().stringValue(QMediaMetaData::Duration);
        item.coverImage = player.metaData().value(QMediaMetaData::ThumbnailImage).value<QImage>();
        item.filePath =  file.absoluteFilePath();

        // Fallbacks
        if (item.title.isEmpty()) item.title = file.baseName();
        if (item.artist.isEmpty()) item.artist = "Unknown";
        if (item.duration.isEmpty()) item.artist = "0:00";

        item.liked = false;

        qDebug() << "Loaded song:" << item.title \
                 << "| Artist:" << item.artist \
                 << "| Duration: " << item.duration \
                 << "| Has cover:" << !item.coverImage.isNull();
        m_songs.append(item);
    }

    endResetModel();
}

void songModel::playSongAt(int index) {
    if (index < 0 || index >= m_songs.size())
        return;

    // Stop previous
    if (m_currentPlayingIndex != -1 && m_currentPlayingIndex != index) {
        emit dataChanged(this->index(m_currentPlayingIndex), this->index(m_currentPlayingIndex));
    }


    m_currentPlayingSong = &m_songs[index];
    m_currentPlayingIndex = index;
    emit dataChanged(this->index(index), this->index(index));
    emit currentSongImageChanged();
    emit currentSongTitleChanged();
    emit currentSongArtistChanged();

    m_player->setSource(QUrl::fromLocalFile(m_songs[index].filePath));
    m_player->play();
}

QUrl songModel::currentSongImage() const {
    if (m_currentPlayingSong && !m_currentPlayingSong->coverImage.isNull()) {
        QUrl url = imageToUrl(m_currentPlayingSong->coverImage);
        // qDebug() << "Generated image URL:" << url.toString();
        return url;
    }
    return QUrl("qrc:/images/music_note_white_32.png");
}

QUrl songModel::imageToUrl(const QImage& image) const
{
    QByteArray byteArray;
    QBuffer buffer(&byteArray);
    buffer.open(QIODevice::WriteOnly);
    image.save(&buffer, "png");
    QString base64 = QString::fromUtf8(byteArray.toBase64());
    return QString("data:image/png;base64,") + base64;
}

QString songModel::currentSongTitle() const {
    if (m_currentPlayingSong)
        return m_currentPlayingSong->title;
    return QString("Not Playing");
}

QString songModel::currentSongArtist() const
{
    if (m_currentPlayingSong)
        return m_currentPlayingSong->artist;
    return QString();
}

qint64 songModel::currentSongProgress() const {
    return m_player ? m_player->position() : 0;
}

qint64 songModel::currentSongDuration() const {
    return m_player ? m_player->duration() : 0;
}

bool songModel::isPlaying() const {
    return m_player && m_player->playbackState() == QMediaPlayer::PlayingState;
}

void songModel::togglePlayPause() {
    if (!m_player)
        return;

    if (m_player->playbackState() == QMediaPlayer::PlayingState) {
        m_player->pause();
    } else {
        m_player->play();
    }
}

void songModel::setCurrentSongProgress(qreal value)
{
    if (!m_player)
        return;
    else {
        m_player->setPosition(static_cast<qint64>(value)); // if value is in seconds
    }
}
