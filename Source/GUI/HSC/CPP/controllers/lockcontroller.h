#ifndef LOCKCONTROLLER_H
#define LOCKCONTROLLER_H

#include <QObject>

class lockController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged FINAL)
public:
    explicit lockController(QObject *parent = nullptr);

    bool carLocked() const;

public slots:
    void setCarLocked(bool newCarLocked);
signals:
    void carLockedChanged();
private:
    bool m_carLocked;
};

#endif // LOCKCONTROLLER_H
