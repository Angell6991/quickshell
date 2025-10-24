import Quickshell
import Quickshell.Io
import QtQuick

Row {
    
    anchors.centerIn: parent
    anchors.horizontalCenter: parent
    spacing: 25
    
    Text {
        id: dayOfWeekText
        anchors.centerIn: parent
        anchors.horizontalCenter: parent
        font.family: "frank"
        font.pixelSize: 10
        color: "#2e2e2e"
        text: Qt.formatDate(new Date(), "dddd").toLowerCase()
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var currentDate = new Date()
            dayOfWeekText.text = Qt.formatDate(currentDate, "dddd").toLowerCase()
        }
    }
}


