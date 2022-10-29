import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle{
    height: 80
    gradient: Gradient{
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#000428" }
        GradientStop { position: 1.0; color: "#001E60" }
    }
    RowLayout{
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 20
        anchors.left: parent.left
        CustButton{
            id: backButton
            buttonText: "Back"
            onButtonClicked:{
                speedButton.visible = true
                gainButon.visible = true
                filterButton.visible = true
                settingsButton.visible = true
                gainGroup.visible = false


            }
        }
        CustButton{
            id: speedButton
            buttonText: "Speed"
            onButtonClicked:{
                gainButon.visible = false
                filterButton.visible = false
                settingsButton.visible = false
                gainGroup.visible = false

            }
        }
        CustButton{
            id: gainButon
            buttonText: "Gain"
            onButtonClicked:{
                speedButton.visible = false
                filterButton.visible = false
                settingsButton.visible = false
                gainGroup.visible = true
            }

        }
        CustButton{
            id: filterButton
            buttonText: "Filter"
            onButtonClicked:{
                speedButton.visible = false
                gainButon.visible = false
                settingsButton.visible = false
                gainGroup.visible = false

            }

        }
        CustButton{
            id: settingsButton
            buttonText: "Settings"
            onButtonClicked:{
                speedButton.visible = false
                filterButton.visible = false
                gainButon.visible = false
                gainGroup.visible = false
            }

        }
        RowLayout{
            id: gainGroup
            visible: false
            CustButton{
                id: gain10Button
                buttonText: "10"
                color: "#e29587"
                onButtonClicked:{
                }
            }
            CustButton{
                id: gain20Button
                buttonText: "20"
                color: "#e29587"
                onButtonClicked:{
                }
            }
            CustButton{
                id: gain30Button
                buttonText: "30"
                color: "#e29587"
                onButtonClicked:{
                }
            }
            CustButton{
                id: gain40Button
                buttonText: "40"
                color: "#e29587"
                onButtonClicked:{
                }
            }
            CustButton{
                id: gain50Button
                buttonText: "50"
                color: "#e29587"
                onButtonClicked:{
                }
            }
        }


    }

    Image {
        id: footerLogo
        height: 25
        width: 40
        source: "MicrosoftTeams-image.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: aboutText.left
    }
    Text {
        id: aboutText
        text: qsTr("| www.airaacorporates.com")
        color: "white"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 7
    }
}
