import Quickshell
import Quickshell.Io
import QtQuick

Row { 
    anchors.centerIn: parent
    anchors.horizontalCenter: parent
    spacing: 25

    Text {
        id: scriptOutput
        font.family: "3270 Nerd Font"
        font.pixelSize: 12
        color: "#e2e2e2"

        Process {
            id: myScriptProcess
            command: [
                "bash", "-c", "~/.config/quickshell/bar/scripts/battery.sh"
            ]
            running: false
            stdout: StdioCollector {
                onStreamFinished: scriptOutput.text = this.text
            }
        }
    }

    Timer {
        id: timer
        interval: 1000  // 60,000 ms = 60 segundos
        repeat: true
        running: true
        onTriggered: {
            myScriptProcess.running = false // parar proceso si estuviera corriendo
            myScriptProcess.running = true  // iniciar proceso
        }
    }

    Component.onCompleted: {
        timer.start()             // iniciar timer
        myScriptProcess.running = true  // ejecuta el proceso la primera vez
    }

}


