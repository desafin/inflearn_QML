import QtQuick

Rectangle {
    id: button

    property alias text : buttonText.text
    Accessible.role: Accessible.Button
    Accessible.onPressAction: {
        button.clicked()
    }

    signal clicked

    width: buttonText.width + 20
    height: 50

    color: "blue"
    radius: 5
    antialiasing: true
    Text {
        id: buttonText
        text: parent.description
        anchors.centerIn: parent
        font.pixelSize: 20
        color: "white"
        styleColor: "black"

    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: parent.clicked()

    }
}
