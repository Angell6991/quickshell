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

            Row{
                anchors.bottom: parent.bottom
                anchors.rightMargin: 5
                spacing: 5

                ///--------------inf_battery----------------///
                Rectangle {
                    width: 70
                    height: 15
                    color: Qt.rgba(226/255, 226/255, 46/255, 0) 
                    topRightRadius: 15
                    // anchors.left: parent.left
                    // anchors.bottom: parent.bottom
                    Battery_indicator{}
                }

                ///-------------power_menu------------------///
                Rectangle {
                    width: 160
                    height: 15
                    color: Qt.rgba(226/255, 226/255, 46/255, 0) 
                    topRightRadius: 15
                    topLeftRadius: 15
                    // anchors.centerIn: parent
                    // anchors.bottom: parent.bottom
                    Power_menu{}
                }

                ///--------------inf_distro-----------------///
                Rectangle {
                    width: 120
                    height: 15
                    color: Qt.rgba(226/255, 226/255, 266/255, 1) 
                    topRightRadius: 15
                    topLeftRadius: 15
                    // anchors.right: parent.right
                    // anchors.bottom: parent.bottom

                    Text{
                        anchors.centerIn:   parent
                        font.family: "frank"
                        font.pixelSize: 10
                        color: "#2e2e2e"
                        text: "arch"
                    }
                }
            }

        }

    }

}


