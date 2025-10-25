import QtQuick 
import Quickshell
import Quickshell.Io

import QtQuick.Window 
import QtQuick.Controls 


Column{

    anchors.centerIn: parent
    // anchors.left: parent.left
    spacing: 12

    ///---------------poweroff------------------///
    Button {
        text: "⏻ "
        width: 35       
        height: 45      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 20     

        Component.onCompleted: {
            contentItem.color = Qt.rgba(0/255, 255/255, 252/255, 0.9)
        }

        background: Rectangle {
            color: Qt.rgba(46/255, 46/255, 46/255, 0.3)
            radius: 10
            // topRightRadius: 10
            // bottomRightRadius: 10
        }

        Process {
            id: poweroff_init
            command: ["bash", "-c", "poweroff"]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }

        onClicked: {
            poweroff_init.running = true;
        }
    }


    ///--------------init_hyprlock--------------///
    Button {
        text: "󰷛 "
        width: 35       
        height: 45      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 20     

        Component.onCompleted: {
            contentItem.color = Qt.rgba(0/255, 255/255, 252/255, 0.9)
        }

        background: Rectangle {
            color: Qt.rgba(46/255, 46/255, 46/255, 0.3)
            radius: 10
            // topRightRadius: 10
            // bottomRightRadius: 10
        }


        Process {
            id: lock_init
            command: ["bash", "-c", "hyprlock"]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }

        onClicked: {
            lock_init.running =   true;
        }
    }


    ///----------------title--------------------///
    Button {
        text: ""
        width: 35       
        height: 45     
        
        font.family: "warhammer40k"      
        font.pointSize: 20     

        Component.onCompleted: {
            contentItem.color = "#e2e2e2"
        }

        background: Rectangle {
            color: Qt.rgba(46/255, 46/255, 46/255, 0)
            radius:10
        }

        Process {
            id: exit_init
            command: ["bash", "-c", "poweroff"]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }

        onClicked: {
            Qt.quit()
            // exit_init.running = true;
        }
    }

    ///--------------close_secion---------------///
    Button {
        text: " "
        width: 35       
        height: 45      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 20     

        Component.onCompleted: {
            contentItem.color = Qt.rgba(0/255, 255/255, 252/255, 0.9)
        }

        background: Rectangle {
            color: Qt.rgba(46/255, 46/255, 46/255, 0.3)
            radius: 10
            // topRightRadius: 10
            // bottomRightRadius: 10
        }

        Process {
            id: close_secion
            command: ["bash", "-c", "loginctl terminate-user $USER"]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }

        onClicked: {
            close_secion.running    =   true;
        }
    }

    ///-----------------reboot------------------///
    Button {
        text: " "
        width: 35       
        height: 45      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 20     

        Component.onCompleted: {
            contentItem.color = Qt.rgba(0/255, 255/255, 252/255, 0.9)
        }

        background: Rectangle {
            color: Qt.rgba(46/255, 46/255, 46/255, 0.3)
            radius: 10
            // topRightRadius: 10
            // bottomRightRadius: 10
        }
        
        Process {
            id: rebbot
            command: ["bash", "-c", "systemctl reboot"]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }

        onClicked: {
            rebbot.running  =   true;
        }
    }


}

