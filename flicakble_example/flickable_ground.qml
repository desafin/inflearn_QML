import QtQuick

Window{
    visible: true; width: Screen.width
    height: Screen.height

    Flickable{
        width: screen.width;height: screen.height
        contentWidth: screen.width
        contentHeight: screen.height*2

        interactive: true


        Image {
            id: ground
            anchors.fill: parent
            sourceSize.width: screen.width
            sourceSize.height: screen.height*2
            source: "qrc:/images/ground.jpg"

        }

        Image {
            id: player
            source: "qrc:/images/player.png"
            x:screen.width/2
            y:screen.height/2
        }
    }



}
