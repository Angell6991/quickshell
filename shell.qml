import Quickshell
import Quickshell.Io
import QtQuick

import  "modules" 

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
            anchors.top: parent.top
            
            Data_name_day{}
        }

        ///-------------inf_day_hours---------------///
        Rectangle {
            width: 200
            height: 15
            color: Qt.rgba(46/255, 46/255, 46/255, 0) 
            bottomLeftRadius: 15
            anchors.right: parent.right
            anchors.top: parent.top

            Data_day_clock{}
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

            ///--------------inf_battery----------------///
            Rectangle {
                width: 150
                height: 15
                color: "#e2e2e2"
                topRightRadius: 15
                anchors.left: parent.left
                anchors.bottom: parent.bottom    
                
                Battery_indicator{}     
            }

            ///-----------------------------------------///
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


