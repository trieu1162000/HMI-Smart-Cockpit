import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Rectangle {
    id: bottomSidePanel
    color: "black"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    width: parent.width
    height: parent.height

    RowLayout {
        anchors.fill: parent  // Fill parent size
        anchors.leftMargin: parent.height / 2   // Small left margin
        anchors.rightMargin: parent.height / 2  // Small right margin
        spacing: parent.height * 2  // Space between items
        height: parent.height
        // 📌 Empty space (Instead of Spacing)
        // Item {
        //     Layout.fillWidth: true
        // }

        // 🚀 Vertically centered images
        Image {
            // Layout.fillWidth: true  // Equal width share
            id: vehicleIcon
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredHeight: parent.height / 2.5
            Layout.preferredWidth: Layout.preferredHeight
            source: "/images/car_32.png"
            fillMode: Image.PreserveAspectFit
        }


        RowLayout {
            // Layout.fillWidth: true  // Equal width share

            spacing: parent.height / 2
            Layout.alignment: Qt.AlignVCenter
            height: parent.height
            Image {
                Layout.preferredHeight: parent.height / 10
                Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
                source: "/images/arrow_left_16.png"
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                Layout.preferredHeight: parent.height
                color: "transparent"  // This should be visible

                Text {
                    anchors.centerIn: parent
                    text: "72"
                    color: "white"
                    font.pixelSize: parent.height / 3
                }
            }

            Image {
                Layout.preferredHeight: parent.height / 10
                Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
                source: "/images/arrow_right_16.png"
                fillMode: Image.PreserveAspectFit
            }
        }


        // 🚀 Inner Row stays on the right & vertically centered
        // Rectangle {
        //     Layout.fillWidth: true
        //     Layout.preferredHeight: parent.height  // Same height as parent
        //     color: "#333333"  // Set background color (dark gray, change as needed)
        //     radius: 10  // Optional: rounded corners

        RowLayout {
            // anchors.fill: parent  // Fill the rectangle completely
            // Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
            spacing: parent.height / 2

            Repeater {
                model: ["phone_32_app.png", "recorder_32_app.png", "spotify_32_app.png",
                        "camera_32_app.png", "bluetooth_32_app.png", "video_32_app.png"]
                delegate: Image {
                    Layout.alignment: Qt.AlignHCenter
                    Layout.preferredHeight: parent.parent.height / 3
                    Layout.preferredWidth: Layout.preferredHeight
                    source: "/images/" + modelData
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
        // }


        RowLayout {

            spacing: parent.height / 2
            Layout.alignment: Qt.AlignVCenter
            height: parent.height
            Image {
                Layout.preferredHeight: parent.height / 10
                Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
                source: "/images/arrow_left_16.png"
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                // Layout.fillWidth: true
                Layout.preferredHeight: parent.height
                color: "transparent"  // This should be visible

                Text {
                    anchors.centerIn: parent
                    text: "72"
                    color: "white"
                    font.pixelSize: parent.height / 3
                }
            }

            Image {
                Layout.preferredHeight: parent.height / 10
                Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
                source: "/images/arrow_right_16.png"
                fillMode: Image.PreserveAspectFit
            }
        }



        // Volume Icon
        // Volume Icon
        RowLayout {
            Layout.alignment: Qt.AlignVCenter
            spacing: parent.height / 4
            width: parent.width / 6

            QtObject {
                id: volumeState
                property bool showVolumeIcon: true
            }

            Repeater {
                model: ["arrow_left_16.png", "volume_32.png", "arrow_right_16.png"]
                delegate: Item {
                    Layout.alignment: Qt.AlignHCenter
                    Layout.preferredHeight: modelData === "volume_32.png" ? parent.parent.height / 3 : parent.parent.height / 10
                    Layout.preferredWidth: Layout.preferredHeight
                    width: Layout.preferredWidth
                    height: Layout.preferredHeight

                    Image {
                        id: volumeIcon
                        visible: modelData !== "volume_32.png" || volumeState.showVolumeIcon
                        source: "/images/" + modelData
                        fillMode: Image.PreserveAspectFit
                        anchors.fill: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onPressed: {
                            if (modelData === "arrow_left_16.png") {
                                audioController.increaseVolume(-1);
                            } else if (modelData === "arrow_right_16.png") {
                                audioController.increaseVolume(1);
                            }
                        }
                    }

                    Text {
                        id: volumeText
                        visible: modelData === "volume_32.png" && !volumeState.showVolumeIcon
                        color: "white"
                        font.pixelSize: 24
                        text: audioController.volumeLevel
                        anchors.centerIn: parent
                    }
                }
            }

            // Connections to handle volume change
            Connections {
                target: audioController
                function onVolumeLevelChanged() {
                    volumeState.showVolumeIcon = false;
                    visibleVolumeTextTimer.restart();
                }
            }

            // Timer to revert to volume icon after delay
            Timer {
                id: visibleVolumeTextTimer
                interval: 1000
                repeat: false
                onTriggered: volumeState.showVolumeIcon = true
            }
        }



    }
}




