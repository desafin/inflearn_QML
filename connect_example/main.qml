import QtQuick

Window {
    width: 200
    height: 200
    visible: true
    Rectangle{
        id:rect
        width: 200;height: 200;color: "blue"

        MouseArea{
            id:mouseArea
            anchors.fill: parent

        }
        Connections{
            target: mouseArea
            function onClicked(){
                rect.color=Qt.rgba(Math.random(),
                                   Math.random(),
                                   Math.random(),1)
            }
        }
    }
}
