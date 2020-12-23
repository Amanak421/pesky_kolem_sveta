import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: loadPage

    anchors.fill: parent // vyplní celou obrazovku

    Image{

        source: "qrc:/img/icon.png" // zdroj ikony -> img.qrc

        anchors.centerIn: parent

    }

}
