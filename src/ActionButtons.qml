import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: buttons

  Button{
    id: powerbt
    onClicked: {
      if (GreeterProxy.canPowerOff() == true){
        GreeterProxy.powerOff()
      }
    }
  }
  Button{
    id: hibernatebt
    onClicked: {
      if (GreeterProxy.canHibernate() == true){
        GreeterProxy.hibernate()
      }
    }
  }
  Button{
    id: rebootbt
    onClicked: {
      if (GreeterProxy.canReboot() == true){
        GreeterProxy.reboot()
      }
    }
  }
}
