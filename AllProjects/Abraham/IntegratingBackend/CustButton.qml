import QtQuick 2.15

Rectangle{
    id: buttonMain
    width:100
    height:50
    color: buttonMouseArea.pressed?"#d6ae7b":"white"
    property string buttonText: "Test"
    anchors.margins: 5
    radius: 5
    signal buttonClicked();
    Text {
        id: name
        text: buttonText
        anchors.centerIn: parent
    }
    MouseArea{
        id: buttonMouseArea
        anchors.fill: parent
        onClicked: {
            buttonClicked();
        }
    }
}
