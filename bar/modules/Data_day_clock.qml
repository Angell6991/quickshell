import Quickshell
import Quickshell.Io
import QtQuick

Row {

    anchors.centerIn: parent
    anchors.horizontalCenter: parent
    spacing: 25

    Text {
        id: dateText
        font.family: "frank"
        font.pixelSize: 10
        color: "#e2e2e2"
        text: Qt.formatDate(new Date(), "dd · MM · yyyy")
    }

    Text {
        id: timeText
        font.family: "frank"
        font.pixelSize: 10
        color: "#e2e2e2"
        text: Qt.formatTime(new Date(), "hh : mm")
    }            
    
    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var currentDate = new Date()
            timeText.text = Qt.formatTime(currentDate, "hh : mm")
            dateText.text = Qt.formatDate(currentDate, "dd · MM · yyyy")
        }
    }

}


