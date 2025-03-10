#ifndef LINEMODEL_H
#define LINEMODEL_H

#include <QQuick3DGeometry>

class lineModel : public QQuick3DGeometry {
    Q_OBJECT
    Q_PROPERTY(float length READ length WRITE setLength NOTIFY lengthChanged)

public:
    explicit lineModel(QObject *parent = nullptr);

    float length() const { return m_length; }
    void setLength(float newLength);

signals:
    void lengthChanged();

private:
    float m_length;
    void setLine(float length);
};

#endif // LINEMODEL_H
