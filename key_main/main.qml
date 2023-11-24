import QtQuick

Window {
    width: 640
    height: 480
    visible: true

    Loader{
        id:loader
        focus: true
        source: "qrc:/keyreader.qml"
        anchors.centerIn: parent
    }
}
