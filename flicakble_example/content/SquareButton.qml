import QtQuick

Rectangle {
    id: root

    property string myText: ''

    Text {
        id: rootText
        anchors.centerIn: parent
        text: myText; font.pointSize: 15
    }

    signal activated(real xPosition, real yPosition)
    signal deactivated
    width: 100; height: 100

    MouseArea {
        anchors.fill: parent

        onPressed: root.activated(mouseX, mouseY)
        onReleased: {
            //console.log('release')
            root.deactivated()
        }

    }
}


