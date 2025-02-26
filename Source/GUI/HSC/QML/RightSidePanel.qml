import QtQuick 2.15
import QtQuick.Effects
import QtQuick.Controls
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Layouts

Rectangle {


    Image {
        id: lockIcon
        width: parent.width / 35
        height: 18
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 10
        source: "/images/lock.png"
        fillMode: Image.PreserveAspectFit
        z: 1
        MouseArea {
            id: mouseAreaCarLocked
            anchors.fill: parent

            onPressed: {
                lockController.setCarLocked(!lockController.carLocked)
            }
        }
        Connections {
            target: lockController
            function onCarLockedChanged() {
                lockIcon.source = lockController.carLocked ? "/images/lock.png" : "/images/unlock_32.png"
            }
        }
    }
    Image {
        id: bluetoothIcon
        width: parent.width / 35
        anchors.left: lockIcon.right
        anchors.top: parent.top
        anchors.margins: 10
        anchors.leftMargin: 20
        anchors.topMargin: 10
        source: "/images/bluetooth.png"
        fillMode: Image.PreserveAspectFit
        z: 1
    }
    Image {
        id: fourGIcon
        // x: 89
        width: parent.width / 40
        anchors.left: bluetoothIcon.right
        anchors.top: parent.top
        anchors.margins: 10
        anchors.leftMargin: 20
        anchors.topMargin: 9
        source: "/images/4g.png"
        fillMode: Image.PreserveAspectFit
        z: 1
    }

    Text {
        id: currentTemp
        font.pixelSize: 20
        anchors.right: currentTime.left
        anchors.top: parent.top
        anchors.margins: 10
        color: "white" // Set the text color to white
        text: qsTr("17°C")
        z: 1
    }

    Text {
        id: currentTime
        font.pixelSize: 20
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 10
        color: "white" // Set the text color to white
        text: Qt.formatDateTime(new Date(), "hh:mm A")
        z: 1
    }

    Timer {
        id: currentTimeTimer
        interval: 1000 // 1 second
        running: true
        repeat: true
        onTriggered: currentTime.text = Qt.formatDateTime(new Date(),
                                                          "hh:mm A")
    }

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(10.76, 106.66)
        zoomLevel: 14
        property geoCoordinate startCentroid

        PinchHandler {
            id: pinch
            target: null
            onActiveChanged: if (active) {
                                 map.startCentroid = map.toCoordinate(
                                             pinch.centroid.position, false)
                             }
            onScaleChanged: delta => {
                                map.zoomLevel += Math.log2(delta)
                                map.alignCoordinateToPoint(
                                    map.startCentroid,
                                    pinch.centroid.position)
                            }
            onRotationChanged: delta => {
                                   map.bearing -= delta
                                   map.alignCoordinateToPoint(
                                       map.startCentroid,
                                       pinch.centroid.position)
                               }
            grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
            id: wheel
            // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
            // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
            // and we don't yet distinguish mice and trackpads on Wayland either
            acceptedDevices: Qt.platform.pluginName === "cocoa"
                             || Qt.platform.pluginName
                             === "wayland" ? PointerDevice.Mouse
                                             | PointerDevice.TouchPad : PointerDevice.Mouse
            rotationScale: 1 / 120
            property: "zoomLevel"
        }
        DragHandler {
            id: drag
            target: null
            onTranslationChanged: delta => map.pan(-delta.x, -delta.y)
        }
        Shortcut {
            enabled: map.zoomLevel < map.maximumZoomLevel
            sequence: StandardKey.ZoomIn
            onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }
        Shortcut {
            enabled: map.zoomLevel > map.minimumZoomLevel
            sequence: StandardKey.ZoomOut
            onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
    }

    Rectangle {
        id: musicBar
        color: "black"

        radius: width / 80
        anchors.bottom: parent.bottom
        width: parent.width / 1.03
        height: parent.height / 5.5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: height / 10

        Image {
            id: sourceGoneAva
            source: "/images/music_gone.jpg"
            anchors.left: musicBar.left
            height: musicBar.height
            width: height
            visible: false
        }

        MultiEffect {
            source: sourceGoneAva
            anchors.fill: sourceGoneAva
            maskEnabled: true
            maskSource: mask
        }

        Item {
            id: mask
            width: sourceGoneAva.width
            height: sourceGoneAva.height
            layer.enabled: true
            visible: false

            Rectangle {
                width: sourceGoneAva.width
                height: sourceGoneAva.height
                radius: width / 9
                color: "black"
            }
        }

        Rectangle {
            id: playingSong
            width: parent.width / 4
            height: parent.height / 1.2
            color: "transparent"
            anchors.left: sourceGoneAva.right
            anchors.leftMargin: width / 10
            anchors.verticalCenter: parent.verticalCenter

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                RowLayout {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter

                    Text {
                        text: "GONE"
                        color: "#FFFFFF"
                        font.pointSize: parent.parent.height / 6
                        font.bold: false
                    }
                    Item { Layout.fillWidth: true }
                    Image {
                        source: "/images/like_16.png" // Add a heart icon image

                        // fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    text: "Rosé"
                    color: "#8f8f8f"
                    font.pointSize: parent.parent.height / 7
                    // Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 0
                }

                ColumnLayout {
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignVCenter

                    RowLayout {
                        Layout.alignment: Qt.AlignHCenter
                        spacing: 0
                        Text {
                            text: "2:45"
                            color: "#8f8f8f"
                            font.pixelSize: parent.parent.parent.height / 6
                        }
                        Item { Layout.fillWidth: true }
                        Text {
                            text: "4:58"
                            color: "#8f8f8f"
                            font.pixelSize: parent.parent.parent.height / 6
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        height: parent.parent.parent.height / 25
                        color: "#006699"
                        radius: height / 4

                        Rectangle {
                            width: parent.width * 0.55 // Approximate progress
                            height: parent.height
                            color: "#99ddff"
                            radius: height / 4
                        }
                    }
                }
            }



        }

        // Play controls
        Row {
            spacing: musicBar.width / 15
            // anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: playingSong.right
            anchors.leftMargin: musicBar.width / 10

            Image {
                source: "/images/previous_song.png"
                width: height
                height: musicBar.height / 4.5
            }

            Image {
                source: "/images/pause.png"
                width: height
                height: musicBar.height / 4.5
            }

            Image {
                source: "/images/next_song.png"
                width: height
                height: musicBar.height / 4.5
            }

            Image {
                source: "/images/search.png"
                width: height
                height: musicBar.height / 4.5
            }

            Image {
                source: "/images/eject.png"
                width: height
                height: musicBar.height / 4.5
            }
        }
    }
}
