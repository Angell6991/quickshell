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
        
        onClicked: {
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
        
        onClicked: {
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
        
        onClicked: {
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
        
        onClicked: {
        }
    }


}

