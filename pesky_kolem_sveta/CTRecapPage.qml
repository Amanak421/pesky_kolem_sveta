import QtQuick 2.12
import QtQuick.Controls 2.12

Page {

    anchors.fill: parent // vyplní celou obrazovku

    Button{
        id: back

        text: "Zpět"

        onClicked: {
            ctStackView.push(colorPage);
        }

    }

    Button{
        id: contin

        text: "Start"

        anchors.left: back.right

        onClicked: {
            mainStackView.push(gameSW);
        }


    }

}
