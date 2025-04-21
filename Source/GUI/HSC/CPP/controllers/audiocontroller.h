#ifndef AUDIOCONTROLLER_H
#define AUDIOCONTROLLER_H

#include <QObject>
#include <QDebug>
#include <QAudioOutput>

class audioController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int volumeLevel READ volumeLevel WRITE setVolumeLevel NOTIFY volumeLevelChanged FINAL)
public:
    explicit audioController(QObject *parent = nullptr);

    int volumeLevel() const;
    QAudioOutput* audioOutput() const;

    Q_INVOKABLE void increaseVolume(const int &val);
public slots:
    void setVolumeLevel(int newVolumeLevel);
signals:
    void volumeLevelChanged();
private:
    int m_volumeLevel;
    std::unique_ptr<QAudioOutput> m_audioOutput;
};

#endif // AUDIOCONTROLLER_H
