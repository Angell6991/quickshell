import Quickshell
import Quickshell.Io
import QtQuick


PanelWindow {

    implicitHeight: 20
    color:  "transparent"

    anchors {
        top:    true
        left:   true
        right:  true
    }
    margins {
        left:   1000
    }

    ///----------------bar_top------------------///
    Rectangle {
        width: 100
        height: 100
        anchors.centerIn: parent
        anchors.fill:   parent
        // color: "#2e2e2e"
        color: Qt.rgba(46/255, 46/255, 46/255, 0.7) 
        bottomLeftRadius: 15

        ///---------------inf_date------------------///
        Rectangle {
            width: 150
            height: 15
            color: "#e2e2e2"
            bottomRightRadius: 15
            bottomLeftRadius: 15
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.verticalCenter: top.verticalCenter

            Text {
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

        ///-------------inf_day_hours---------------///
        Rectangle {
            width: 200
            height: 15
            // color: "#2e2e2e"
            color: Qt.rgba(46/255, 46/255, 46/255, 0) 
            bottomLeftRadius: 15
            anchors.right: parent.right
            anchors.verticalCenter: top.verticalCenter
            
            Row {
                anchors.centerIn: parent
                anchors.horizontalCenter: parent
                spacing: 25

                Text {
                    font.family: "frank"
                    font.pixelSize: 10
                    color: "#e2e2e2"
                    text: Qt.formatDate(new Date(), "dd · MM · yyyy")
                }

                Text {
                    font.family: "frank"
                    font.pixelSize: 10
                    color: "#e2e2e2"
                    text: Qt.formatTime(new Date(), "hh : mm")
                }            
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


    }
    
    ///---------------bar_bottom----------------///
    PanelWindow{
        implicitHeight: 20
        color:  "transparent"

        anchors {
            bottom: true
            left:   true
            right:  true
        }
        margins {
            right:  1000
        }

        Rectangle {
            width: 100
            height: 100
            anchors.centerIn: parent
            anchors.fill:   parent
            color: Qt.rgba(46/255, 46/255, 46/255, 0.7) 
            topRightRadius: 15
            
            Rectangle {
                width: 150
                height: 15
                color: "#e2e2e2"
                topRightRadius: 15
                anchors.left: parent.left
                anchors.bottom: parent.bottom
            }

            Rectangle {
                width: 200
                height: 15
                color: Qt.rgba(46/255, 46/255, 46/255, 0) 
                topRightRadius: 15
                topLeftRadius: 15
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.bottom: parent.bottom
            }



        }

    }

}


