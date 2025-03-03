#ifndef APPTYPE_H
#define APPTYPE_H

#include <QObject>

class Side : public QObject {
    Q_OBJECT
public:
    enum class Type {
        LEFT,
        RIGHT
    };
    Q_ENUM(Type)  // Makes it accessible in QML
};


#endif // APPTYPE_H
