import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: ctnamePage

    anchors.fill: parent // vyplní celou obrazovku

    /*Row{
        id: backButtonRow

        anchors.top: parent.top

        height: parent.height / 15
        width: parent.width

        padding: 15
        spacing: (parent.width - backButton.width - ctNameMainText.width) / 2 - 10

        Image {
            id: backButton
            source: "qrc:/img/back.png"

            height: parent.height - 15

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    mainStackView.push(mainMenuPage);
                }
            }

        }

        Image{
            id: ctNameTitleText
            source: "qrc:/img/podklad.png"

            height: parent.height
            width: parent.width - backButton.width - 2 * 15
        }

        Label {
            id: ctNameMainText

            text: "Vytvoření týmu"

            font.bold: true
            font.pixelSize: 35

            height: parent.height


        }

    }*/

    /*Row{

        anchors.top: parent.top
        anchors.left: backButtonRow.right
        //anchors.verticalCenter: backButtonRow.verticalCenter



        height: parent.height / 17
        width: parent.width - backButtonRow.width

        leftPadding: (width - ctNameMainText.width) / 2 - 10
        //topPadding: (height - ctNameMainText.height)



    }*/

    Image {
        id: backButton
        source: "qrc:/img/back.png"

        anchors.top: parent.top
        anchors.verticalCenter: ctNameTitleText.verticalCenter

        anchors.margins: 15

        //height: parent.height / 25

        scale: 0.9

        MouseArea{
            anchors.fill: parent

            onClicked: {
                mainStackView.push(mainMenuPage);
            }
        }

    }

    Image{
        id: ctNameTitleText
        source: "qrc:/img/podklad.png"

        anchors.top: parent.top
        anchors.left: backButton.right
        anchors.right: parent.right

        anchors.margins: 10

        height: parent.height / 13

        Label {
            id: ctNameMainText

            text: "Vytvoření týmu"

            font.bold: true
            font.pixelSize: 28
            color: "white"

            anchors.centerIn: parent


        }
    }

}
