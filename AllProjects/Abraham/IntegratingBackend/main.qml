import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")
    property alias headerPopup: blinkIt;
    Popup{
        id: blinkIt
        height: 1080/4
        width: 1920/4
        anchors.centerIn: parent
        modal: true
        Rectangle{
            anchors.fill: parent
            gradient: Gradient{
                orientation: Gradient.Horizontal
                GradientStop { position: 0.0; color: "#000428" }
                GradientStop { position: 1.0; color: "#001E60" }
            }
            Image {
                id: popupImage
                height: 55
                width: 90
                source: "MicrosoftTeams-image.png"
                anchors.bottom: popupText.top
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: popupText
                text: qsTr("This is Airaa corporates\n It service provider company")
                color: "white"
                anchors.centerIn: parent

            }
            Button{
                text: "Close"
                onClicked: blinkIt.close()
                anchors.bottom: parent.Bottom
                anchors.margins: 4
            }
        }
    }


    header: MyCustHead{

    }

    StackView{

    }

    footer:MyFooter{

    }

}
