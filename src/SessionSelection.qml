import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: sessionSelection

  property alias sessionss : sessionss

  Component {
      id: defaultRowDelegate
      Text {
          id: modelText

          rotation: 90

          anchors.fill: parent
          anchors.margins: 3 + sessionss.borderWidth + (LayoutMirroring.enabled ? arrow.width : 0)

          verticalAlignment: Text.AlignVCenter

          color: "#cbcbcb"

          text: parent.modelItem.name
      }
  }
  // Definition of SDDM row delegate
  // - aka Session selection

  ComboBox{
    id: sessionss

    color: "#181818"
    borderColor: "#313030"
    focusColor: "#181818"
    hoverColor: "#181818"
    menuColor: "#181818"
    textColor: "#cbcbcb"
    arrowColor: "#181818"
    borderWidth: 3

    font:interfont

    height: 225
    width: 25
    x: 300
    y: -69
    rotation: -90

    model: sessionModel
    rowDelegate: defaultRowDelegate

    index: sessionModel.lastIndex
  }
  // Selector
}
