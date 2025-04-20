#include "audiocontroller.h"

audioController::audioController(QObject *parent)
    : QObject(parent),
      m_volumeLevel(0),
      m_audioOutput(std::make_unique<QAudioOutput>())
{
    if (m_audioOutput)
        m_audioOutput->setVolume(m_volumeLevel);
}

QAudioOutput* audioController::audioOutput() const
{
    qDebug() << "Volume output get";
    return m_audioOutput.get();
}

int audioController::volumeLevel() const
{
    return m_volumeLevel;
}

void audioController::increaseVolume(const int &val)
{
    int newVolumeLevel {m_volumeLevel + val};

    if (newVolumeLevel < 0)
        newVolumeLevel = 0;
    else if (newVolumeLevel > 100)
        newVolumeLevel = 100;

    setVolumeLevel(newVolumeLevel);
    qDebug() << "Volume increased to:" << newVolumeLevel;
}

void audioController::setVolumeLevel(int newVolumeLevel)
{
    if (m_volumeLevel == newVolumeLevel)
        return;

    m_volumeLevel = newVolumeLevel;

    if (m_audioOutput) {
        qDebug() << "Volume increased to :" << m_volumeLevel;

        m_audioOutput->setVolume(m_volumeLevel / 100.0);
    }

    emit volumeLevelChanged();
}
