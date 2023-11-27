import QtQuick

Window {
    visible: true;width:200;height: 200
    Loader{
        id:myLoader
        onLoaded: {
            console.log("적용후 width:"+myLoader.width)

        }
    }
    Component.onCompleted: {
        myLoader.setSource("qrc:/componet.qml",{color:"blue"})
    }
    Rectangle{
        anchors.top: myLoader.bottom;width: 200;height: 100
        color: "green"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                myLoader.setSource("qrc:/componet.qml",{"width":200})
            }
        }
    }
}
