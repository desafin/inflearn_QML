import QtQuick
import "content"

Window {
    visible: true
    id: window; width: 240; height: 100
    color: "white"
    title: 'Accessible'

    Column {
        id: column; spacing: 6; anchors.margins: 10;
        anchors.fill: parent
        width: parent.width

        Text {
            id : status; width: column.width; height: 20
            font.pixelSize: 20
        }

        Row {
            spacing: 6
            Button {
                id: sendButton
                width: 100; height: 40; text: "Send"
                onClicked: { status.text = "Send 버튼 클릭함" }
            }
            Button { id: discardButton
                width: 100; height: 40; text: "Discard"
                onClicked: { status.text = "Discard 버튼 클릭함" }
            }
        }
    }
}
