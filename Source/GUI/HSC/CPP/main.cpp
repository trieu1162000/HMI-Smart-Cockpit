#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "controllers/audioController.h"
#include "controllers/lightController.h"
#include "controllers/speedController.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    // Controller
    audioController a_controller;
    lightController l_controller;
    speedController s_controller;

    QQmlContext *context( engine.rootContext() );

    // Expose the controller objects to QML
    context->setContextProperty("audioController", &a_controller);
    context->setContextProperty("lightController", &l_controller);
    context->setContextProperty("speedController", &s_controller);

    engine.loadFromModule("HSC", "Main");

    return app.exec();
}
