#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "message.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Message msg;
    engine.rootContext()->setContextProperty("msg", &msg);

    engine.load(QUrl("qrc:/main.qml"));
    return app.exec();
}

/***
 * QuickView 클래스를 사용하는 방식
 * - 위의 소스코드 주석처리 하고 아래 주석 제거 후 사용.
 */

//#include <QGuiApplication>
//#include <QQmlApplicationEngine>

//#include <QQuickView>
//#include <QQmlContext>
//#include "message.h"

//int main(int argc, char *argv[])
//{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

//    QGuiApplication app(argc, argv);

//    QQuickView viewer;
//    Message msg;
//    viewer.engine()->rootContext()->setContextProperty("msg", &msg);
//    viewer.setSource(QUrl( "qrc:/main.qml" ) );

//    return app.exec();
//}
