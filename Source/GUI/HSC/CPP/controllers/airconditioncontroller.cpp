#include "airconditioncontroller.h"
#include <QDebug>

airConditionController::airConditionController(QObject *parent)
    : QObject(parent)
    , m_leftTempControl(25U)
    , m_rightTempControl(25U)
{

}

uint8_t airConditionController::tempControl(Side::Type type) const
{
    if (Side::Type::LEFT == type) {
        return leftTempControl();
    } else if (Side::Type::RIGHT == type) {
        return rightTempControl();
    } else {
        // optional
        return 0U;
    }
}

void airConditionController::increaseTemp(Side::Type type, int value)
{
    int newTempLevel {0};
    if (Side::Type::LEFT == type) {
        newTempLevel = m_leftTempControl + value;
    } else if (Side::Type::RIGHT == type){
        newTempLevel = m_rightTempControl + value;

    } else {
        // optional
        return;
    }
    if ( 0 >= newTempLevel )
    {
        newTempLevel = 0;
    }
    if ( 30 <= newTempLevel )
    {
        newTempLevel = 30;
    }
    setTempControl(static_cast<uint8_t>(newTempLevel), type);
}

void airConditionController::setTempControl(const uint8_t &newTempControl, Side::Type type)
{
    if (Side::Type::LEFT == type) {
        setLeftTempControl(newTempControl);

    } else if (Side::Type::RIGHT == type) {
        setRightTempControl(newTempControl);
    } else {
        // optional
        return;
    }
}

uint8_t airConditionController::rightTempControl() const
{
    return m_rightTempControl;
}

void airConditionController::setRightTempControl(uint8_t newRightTempControl)
{
    if (m_rightTempControl == newRightTempControl)
        return;
    m_rightTempControl = newRightTempControl;
    emit rightTempControlChanged();
}

uint8_t airConditionController::leftTempControl() const
{
    return m_leftTempControl;
}

void airConditionController::setLeftTempControl(uint8_t newLeftTempControl)
{

    if (m_leftTempControl == newLeftTempControl)
        return;
    m_leftTempControl = newLeftTempControl;
    emit leftTempControlChanged();
}
