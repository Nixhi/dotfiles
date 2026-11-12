import Quickshell
import Quickshell.Io
import QtQuick

ShellRoot {

  // System clock
  SystemClock {
	  id: theClock
	  precision: SystemClock.Seconds
  }

  PanelWindow {

    // Panel ID
    id: masterPanel

	// Layout
	anchors {
	  top: true
	  left: true
	  right: true
	}

	// Height
	implicitHeight: 38

	// Color
	color: "transparent"

    // Master Button
	Rectangle {

	  // Container layout
      anchors.left: parent.left
      anchors.verticalCenter: parent.verticalCenter
      anchors.leftMargin: 3

	  height: 32
	  width: 55
	  radius: 6
	  color: "#232323"
	  
	  Text {
	    anchors.centerIn: parent
	    text: ""
		color: "#EBDBB2"
		font.pixelSize: 20
	  }
    }

	// Power button
	Rectangle {

	  // Container layout
      anchors.right: parent.right
      anchors.verticalCenter: parent.verticalCenter
      anchors.rightMargin: 3

	  height: 32
	  width: 55
	  radius: 6
	  color: "#232323"

	  Text {
	    anchors.centerIn: parent
	    text: "⏻"
		color: "#EBDBB2"
		font.pixelSize: 30
	  }

	  MouseArea {
	    anchors.fill: parent
		onClicked: {
		powerOff.running = true
        }
	  }

	  Process {
	    id: powerOff
		command: ["loginctl", "poweroff"]
		running: false
	  }
	}

	// Clock
	Rectangle {

      // Container layout
	  anchors.centerIn: parent

	  // General
	  height: 32
	  width: 185
	  radius: 6
	  color: "#242424"

	  Row {
	    id: clockContent
		anchors.centerIn: parent
		spacing: 0

		Text {
		  text: Qt.formatDateTime(theClock.date, "dd/MM/yyyy  hh:mm:ss") 
		  font.pixelSize: 14
		  font.bold: true
		  color: "#EBDBB2"
		}
	  }
	}
  }
}
