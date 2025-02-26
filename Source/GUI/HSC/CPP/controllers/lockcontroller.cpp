#include "lockcontroller.h"

lockController::lockController(QObject *parent)
    : QObject(parent),
      m_carLocked(true)
{

}

bool lockController::carLocked() const
{
    return m_carLocked;
}

void lockController::setCarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}
