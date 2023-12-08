#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<QQmlContext>
#include "message.h"



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/interection2/main.qml"_qs);

    Message msg;
    engine.rootContext()->setContextProperty("msg",&msg);

    engine.load(url);

    return app.exec();
}
