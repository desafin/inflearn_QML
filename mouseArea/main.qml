import QtQuick

Window {
    visible: true;
    width: 300
    height: 300
    Rectangle{
        width: parent.width
        height: parent.height
        color: "lightblue"
        Text{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text : "Press me"
        font.pixelSize: 48

        MouseArea{
            anchors.fill: parent
            onPressed:{
                parent.color="green"
            }
            onReleased: {
                parent.color="black"
            }
        }
        }
    }
}
