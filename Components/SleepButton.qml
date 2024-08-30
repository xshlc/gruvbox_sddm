import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
  implicitHeight: sleepButton.height
  implicitWidth: sleepButton.width
  Button {
    id: sleepButton
    height: inputHeight
    width: inputHeight
    hoverEnabled: true
    icon {
      source: Qt.resolvedUrl("../icons/sleep.svg")
      height: height
      width: width
      color: config.background_dark
    }
    background: Rectangle {
      id: sleepButtonBg
      color: config.original_yellow
      radius: 3
    }
    states: [
      State {
        name: "hovered"
        when: sleepButton.hovered
        PropertyChanges {
          target: sleepButtonBg
          color: config.bright_yellow
        }
      }
    ]
    transitions: Transition {
      PropertyAnimation {
        properties: "color"
        duration: 300
      }
    }
    onClicked: sddm.suspend()
  }
}
