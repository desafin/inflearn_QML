import QtQuick
import QtQuick.Controls

Window {

    width : 200; height: 100; visible: true

    Text {
        id : myText;
        anchors.centerIn: parent
        text: msg.author

        Component.onCompleted: {
            msg.author = "Hello"
            myText.text = msg.author
        }
    }
}
