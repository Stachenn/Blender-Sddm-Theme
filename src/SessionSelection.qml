import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: sessionSelection
  
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

    color: "#181818"
    borderColor: "#313030"
    focusColor: "#181818"
    hoverColor: "#181818"
    menuColor: "#181818"
    textColor: "#cbcbcb"
    arrowColor: "#181818"

    font:interfont
    borderWidth: 3

    height: 15*15
    width: 25
    x: 300
    y: -68

    model: sessionModel
    rotation: -90
    rowDelegate: defaultRowDelegate

    index: sessionModel.lastIndex
  }
}
