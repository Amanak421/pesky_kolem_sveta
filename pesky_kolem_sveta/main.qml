import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rectangle1
        anchors.top: mainWindow.top
        anchors.bottom: rectangle2.top
        anchors.left: mainWindow.left
        anchors.right: mainWindow.right

        width: 150
        height: 150


        color: "red"
    }

    Rectangle{
        id: rectangle2

        anchors.top: rectangle1.bottom
        anchors.bottom: mainWindow.bottom
        anchors.left: mainWindow.left
        anchors.right: mainWindow.right

        width: 150
        height: 150

        color: "blue"

    }
}
