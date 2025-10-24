import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

import Quickshell.Io
import QtQuick.Window 
import QtQuick.Controls

import  "modules"


ShellRoot {
    Variants {

		model: Quickshell.screens

		PanelWindow {
			id: w

			property var modelData
			screen: modelData
			implicitWidth: 50
            color:  "transparent"
			WlrLayershell.layer: WlrLayer.Overlay

            anchors {
                left:   true
                top:    true
				bottom: true
			}

			margins {
                top:    200
                bottom: 200
			}

			Rectangle {
                // width: 20
                // height: 500

                color: Qt.rgba(226/255, 226/255, 226/255, 0.2) 
                topRightRadius: 15
                bottomRightRadius: 15
                anchors.fill: parent
                // anchors.right: parent.right
                // anchors.bottom: parent.bottom
                Power_menu{}
			}
		}
	}
}
