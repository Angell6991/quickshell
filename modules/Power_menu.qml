import QtQuick 
import Quickshell
import Quickshell.Io

import QtQuick.Window 
import QtQuick.Controls 


Row{

    anchors.bottom: parent.bottom
    spacing: 20

    ///---------------poweroff------------------///
    Button {
        text: "⏻ "
        width: 20       
        height: 15      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 8     

        Component.onCompleted: {
            contentItem.color = "#ff69b4"
        }

        background: Rectangle {
            color: "#161616"     
            topRightRadius: 5
            topLeftRadius: 5          
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
        width: 20       
        height: 15      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 8     

        Component.onCompleted: {
            contentItem.color = "#e2e2e2"
        }

        background: Rectangle {
            color: "#161616"     
            topRightRadius: 5
            topLeftRadius: 5        
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

    ///--------------close_secion---------------///
    Button {
        text: " "
        width: 20       
        height: 15      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 8     

        Component.onCompleted: {
            contentItem.color = "#e2e2e2"
        }

        background: Rectangle {
            color: "#161616"     
            topRightRadius: 5
            topLeftRadius: 5               
        }

        Process {
            id: close_secion
            command: ["bash", "-c", "niri disconnect"]
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
        width: 20       
        height: 15      
        
        font.family: "3270 Nerd Font"      
        font.pointSize: 8     

        Component.onCompleted: {
            contentItem.color = "#e2e2e2"
        }

        background: Rectangle {
            color: "#161616"     
            topRightRadius: 5
            topLeftRadius: 5              
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

