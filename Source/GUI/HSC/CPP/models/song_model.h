#ifndef SONG_MODEL_H
#define SONG_MODEL_H

#include <QAbstractListModel>
#include <QString>
#include <QVector>
#include <QImage>
#include <QMediaPlayer>
#include <QAudioOutput>
#include "../controllers/audiocontroller.h"

struct songItem {
    QString title;
    QString artist;
    QString duration;
    bool liked;
    QString filePath;
    QImage coverImage;  // New: Add this to store album art
};

class songModel : public QAbstractListModel
{
    Q_OBJECT
public:
    songModel(audioController* controller = nullptr, QObject* parent = nullptr);

    enum SongRoles {
        TitleRole = Qt::UserRole + 1,
        ArtistRole,
        DurationRole,
        LikedRole,
    };

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    QHash<int, QByteArray> roleNames() const override;

    Q_PROPERTY(QUrl currentSongImage READ currentSongImage NOTIFY currentSongImageChanged FINAL)
    Q_PROPERTY(QString currentSongTitle READ currentSongTitle NOTIFY currentSongTitleChanged FINAL)
    Q_PROPERTY(QString currentSongArtist READ currentSongArtist NOTIFY currentSongArtistChanged FINAL)
    Q_PROPERTY(qint64 currentSongProgress READ currentSongProgress WRITE setCurrentSongProgress NOTIFY currentSongProgressChanged FINAL)
    Q_PROPERTY(qint64 currentSongDuration READ currentSongDuration NOTIFY currentSongDurationChanged FINAL)
    Q_PROPERTY(bool isPlaying READ isPlaying NOTIFY isPlayingChanged FINAL)
    Q_PROPERTY(int count READ rowCount NOTIFY countChanged)

    Q_INVOKABLE void setCurrentSongProgress(qreal value);
    Q_INVOKABLE void loadFromFolder(const QString &path);
    Q_INVOKABLE void playSongAt(int index);
    Q_INVOKABLE void togglePlayPause();

    QUrl imageToUrl(const QImage& image) const;


    QUrl currentSongImage() const;
    // void setcurrentSongImage(const QImage &newCurrentSongImage);

    QString currentSongTitle() const;
    QString currentSongArtist() const;
    qint64 currentSongProgress() const;
    qint64 currentSongDuration() const;
    bool isPlaying() const;

signals:
    void currentSongImageChanged();
    void currentSongTitleChanged();
    void currentSongArtistChanged();
    void currentSongProgressChanged();
    void currentSongDurationChanged();
    void isPlayingChanged();
    void countChanged();

private:
    QVector<songItem> m_songs;
    std::unique_ptr<QMediaPlayer> m_player;
    std::unique_ptr<audioController> m_audioController;
    songItem* m_currentPlayingSong;
    int m_currentPlayingIndex = -1;
};

#endif // SONG_MODEL_H
