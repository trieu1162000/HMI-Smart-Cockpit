#ifndef AIRCONDITIONCONTROLLER_H
#define AIRCONDITIONCONTROLLER_H

#include <QObject>
#include <stdint.h>
#include "../apptype.h"

class airConditionController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(uint8_t leftTempControl READ leftTempControl WRITE setLeftTempControl NOTIFY leftTempControlChanged FINAL)
    Q_PROPERTY(uint8_t rightTempControl READ rightTempControl WRITE setRightTempControl NOTIFY rightTempControlChanged FINAL)
public:
    explicit airConditionController(QObject *parent = nullptr);

    Q_INVOKABLE uint8_t tempControl(Side::Type type) const;

    Q_INVOKABLE void increaseTemp(Side::Type dir, int value);
    uint8_t rightTempControl() const;
    void setRightTempControl(uint8_t newRightTempControl);

    uint8_t leftTempControl() const;
    void setLeftTempControl(uint8_t newLeftTempControl);

public slots:
    void setTempControl(const uint8_t &newTempControl, Side::Type type );
signals:
    void rightTempControlChanged();

    void leftTempControlChanged();

private:
    uint8_t m_rightTempControl;
    uint8_t m_leftTempControl;
};

#endif // AIRCONDITIONCONTROLLER_H
