

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Layouts
import QtQuick.Effects
import HSC 1.0

// import QtGraphs
Rectangle {
    id: dashboardHSC
    width: 1024
    height: 600
    color: Constants.backgroundColor
    // anchors.fill: parent
    // Component.onCompleted: {
    //     Service
    // }


    LeftSidePanel {
        width: parent.width * 3 / 8
        height: parent.height * 0.9
    }

    BottomBar {
        height: parent.height / 10
        width: parent.width
    }

    RightSidePanel {
        id: rightSidePanel
        width: parent.width * 5 / 8
        height: parent.height * 9 / 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.topMargin: 0
    }

}
