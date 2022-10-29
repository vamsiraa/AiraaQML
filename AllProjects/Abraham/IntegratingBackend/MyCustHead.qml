import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Rectangle{
    height:60
    color: "#001E60"
    Image {
        id: logoComp
        height: 55
        width: 90
        source: "MicrosoftTeams-image.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 3
        MouseArea{
            anchors.fill: parent
            onClicked: headerPopup.open()
        }
    }
    Text {
        id: airaaText
        text: qsTr("Airaa Corp..")
        color: "white"
        font.pixelSize: 20
        anchors.left : logoComp.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 5
    }
    Text {
        id: name
        text: myDnT.time  //qsTr("text")
        color: "white"
        anchors.verticalCenter: parent.verticalCenter
        anchors.centerIn: parent

    }
}
