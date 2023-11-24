import QtQuick

Window {
    visible: true
    width: 200
    height: 200

    Loader{
        id:pageLoader
        anchors.top: myRect.bottom

        onStatusChanged: {
            if(pageLoader.status==Loader.Null)
                console.log('Null')
            else if(pageLoader.status==Loader.Ready)
                console.log('ready')
            else if(pageLoader.status==Loader.Loading)
                console.log("loading")
            else if(pageLoader.status==Loader.Error)
                console.log('error')
        }
    }
    Rectangle{
        id:myRect;width: 200;height: 100;color: "yellow"
        Text {
            anchors.centerIn: parent
            text: "main.qml";font.bold: true
        }
        MouseArea{
            anchors.fill: parent
            onClicked: pageLoader.source="page.qml"
        }
    }
}
