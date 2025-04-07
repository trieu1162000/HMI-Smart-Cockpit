#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "controllers/airconditioncontroller.h"
#include "controllers/audioController.h"
#include "controllers/lightController.h"
#include "controllers/speedController.h"
#include "controllers/lockcontroller.h"
#include "apptype.h"
#include "custom3DModel/linemodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    // Use a fully customizable style
    QQuickStyle::setStyle("Fusion");
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    // Register enum class for use in QML
    qmlRegisterUncreatableType<Side>("com.example.side", 1, 0, "Side",
                                          "Enum values only");
    qmlRegisterType<lineModel>("Custom3D", 1, 0, "LineGeometry");

    // Register Global Singleton
    engine.addImportPath("qrc:/");  // Ensure QML modules are found
    engine.load(QUrl(QStringLiteral("qrc:/QML/GlobalVar.qml")));

    // Controller
    airConditionController ac_controller;
    audioController a_controller;
    lightController l_controller;
    speedController s_controller;
    lockController locked_controller;


    QQmlContext *context( engine.rootContext() );

    // Expose the controller objects to QML
    context->setContextProperty("airConditionController", &ac_controller);
    context->setContextProperty("audioController", &a_controller);
    context->setContextProperty("lightController", &l_controller);
    context->setContextProperty("speedController", &s_controller);
    context->setContextProperty("lockController", &locked_controller);

    engine.loadFromModule("HSC", "Main");

    return app.exec();
}
