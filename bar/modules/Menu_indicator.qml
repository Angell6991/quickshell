import QtQuick 
import Quickshell
import Quickshell.Io

import QtQuick.Window 
import QtQuick.Controls 


Button {
    text: "arch"
    width: 120       
    height: 15      
    
    font.family: "frank"      
    font.pointSize: 8     

    Component.onCompleted: {
        contentItem.color = "#2e2e2e"
    }

    background: Rectangle {
        color: "#e2e2e2"     
        topRightRadius: 5
        topLeftRadius: 5          
    }

    Process {
        id: menu_inf
        command: [
            "bash", "-c", "quickshell -p  ~/.config/quickshell/power_menu/shell.qml"
        ]
        running: false
        stdout: StdioCollector {
            onStreamFinished: scriptOutput.text = this.text
        }
    }

    onClicked: {
        menu_inf.running = true;
    }
}

