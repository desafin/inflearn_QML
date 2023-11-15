import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 200
    height: 100
    title: "Variavle"

    property var a: Qt.vector2d(1,2);
    property var b: Qt.vector2d(3,4);
    property int c: a.x+b.x;

    Text{
        anchors.centerIn: parent
        font.pointSize: 15
        text: c.toString()

    }
    property int d: a.x+b.y

    Component.onCompleted: {
        console.log("b value is",d)//6
    }
}




