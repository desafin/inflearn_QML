import QtQuick

Window {
    width: 400
    height: 400
    visible: true
    Rectangle{
        id:root
        width: 400
        height: 400
        Loader{
            id:myLoader
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.bottom
            anchors.bottom: menu1Button.bottom
            onLoaded: { source:"menu1.qml"}
        }
        Rectangle{
            id:menu1Button
            anchors.left:  parent.left
            anchors.bottom: parent.bottom
            color: "gray"
            width: parent.width/2
            height: 100
            Text {
                anchors.centerIn: parent
                text:"첫번째 메뉴"
                font.bold: true
                font.pixelSize: 20
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: root.state="menu1"
            }
        }
        Rectangle{
            id:menu2Button
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            color: "gray"
            width: parent.width/2
            height: 100
            Text {
                anchors.centerIn: parent
                text:"두번째 메뉴"
                font.bold: true
                font.pixelSize: 20
                color: "black"
            }
            MouseArea{
                anchors.fill: parent;
                onClicked: root.state="menu2"
            }
        }
        state: "menu1"
        states: [
            State {
                name: "menu1"
                PropertyChanges {target: menu1Button;color: "green"}
                PropertyChanges {target: myLoader;source:"menu1.qml"}
            },

            State {
                name: "menu2"
                PropertyChanges {target: menu2Button;color: "green"}
                PropertyChanges {target: myLoader;source:"menu2.qml"}
            }
        ]

    }
}
