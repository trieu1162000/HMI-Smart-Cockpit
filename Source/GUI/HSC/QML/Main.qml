import QtQuick
// import HSC 1.0  // Import your QML module
Window {
    width: 1024
    height: 600
    visible: true
    title: qsTr("HMI Smart Cockpit v1.0")
    MainDashBoard {
        id: mainDashBoard
    }
}
