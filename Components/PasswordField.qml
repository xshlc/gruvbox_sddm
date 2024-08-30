import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
  id: passwordField
  focus: true
  selectByMouse: true
  placeholderText: "Password"
  echoMode: TextInput.Password
  passwordCharacter: "•"
  passwordMaskDelay: config.PasswordShowLastLetter
  selectionColor: config.foreground2  // config.overlay0
  renderType: Text.NativeRendering
  font.family: config.Font
  font.pointSize: config.FontSize
  font.bold: true
  color: config.foreground  // config.text
  horizontalAlignment: TextInput.AlignHCenter
  background: Rectangle {
    id: passFieldBackground
    radius: 3
    color: config.background_light  // config.surface0 
  }
  states: [
    State {
      name: "focused"
      when: passwordField.activeFocus
      PropertyChanges {
        target: passFieldBackground
        color: config.comment  // config.surface1
      }
    },
    State {
      name: "hovered"
      when: passwordField.hovered
      PropertyChanges {
        target: passFieldBackground
        color: config.comment  // config.surface1
      }
    }
  ]
  transitions: Transition {
    PropertyAnimation {
      properties: "color"
      duration: 300
    }
  }
}
