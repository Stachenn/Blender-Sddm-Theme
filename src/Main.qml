import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle{
  id: main
  property bool lastState: false

  FontLoader {
    id: interfont
    source: "../res/fonts/Inter.ttf"
  }

  Image {
    id: mainImage
    source: "../res/minimalized.png"
  }

  Login {
    id: loginForm
  }

  Fullscreen{
    id: fullscreenButton
  }
  Component {
      id: defaultRowDelegate
      Text {
            rotation: 90
            anchors.fill: parent
            anchors.margins: 3 + sessionss.borderWidth + (LayoutMirroring.enabled ? arrow.width : 0)
            verticalAlignment: Text.AlignVCenter
            color: "#cbcbcb"
            text:parent.modelItem.name
      }
  }
  ComboBox{
    id: sessionss
    model: sessionModel
    rotation: -90
    rowDelegate: defaultRowDelegate

    borderColor: "#181830"
    focusColor: "#181818"
    hoverColor: "#181818"
    menuColor: "#181818"
    arrowColor: "#181818"
    font:interfont

    height: 225
    width: 25

    x:300
    y: -68

    index: sessionModel.lastIndex
  }
  Button{
    id: ti
    x: 960
    y: 900
    property var s: []
    onClicked: debug.log()
  }
  DebugLog {
    id: debug
    size: 30
    posX: 960
    posY: 540
    color: "white"
  }
}
