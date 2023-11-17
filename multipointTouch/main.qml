import QtQuick

Window {
    visible: true
    width: 300
    height: 300
    Rectangle{
        width: parent.width;height: parent.height
        MultiPointTouchArea{
            anchors.fill: parent
            touchPoints: [
                TouchPoint{id:point1},
                TouchPoint{id:point2}



            ]
        }
        Rectangle{
            width: 40;height: 40;color: "green"
            x:point1.x;y:point1.y
        }
        Rectangle{
            width: 40;height: 40;color: "yellow"
            x:point2.x;y:point2.y
        }
    }
}
