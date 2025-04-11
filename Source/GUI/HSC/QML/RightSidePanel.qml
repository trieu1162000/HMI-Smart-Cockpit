import QtQuick 2.15
import QtQuick.Effects
import QtQuick.Controls
import QtLocation 5.15
import QtPositioning 5.15
import QtQuick.Layouts
import QtMultimedia 5.15

Item {
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 0
    anchors.topMargin: 0
    property int currentTrackIndex: -1

    Utils {
        id: helpers
    }

    Item {
        id: topBar
        z: 1
        width: parent.width
        height: parent.height / 15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        RowLayout {
            id: topBarRowLayout
            anchors.fill: parent
            spacing: 15
            Item {
                Layout.preferredWidth: 0
                Layout.preferredHeight: Layout.preferredWidth
            }

            Rectangle {
                Layout.preferredWidth: parent.width / 60
                Layout.preferredHeight: Layout.preferredWidth
                color: "transparent"
                Image {
                    id: lockIcon
                    source: "/images/lock.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
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
            }

            Text {
                id: currentTime
                font.pixelSize: parent.height / 3
                color: "white" // Set the text color to white
                text: Qt.formatDateTime(new Date(), "hh:mm A")
            }

            Timer {
                id: currentTimeTimer
                interval: 1000 // 1 second
                running: true
                repeat: true
                onTriggered: currentTime.text = Qt.formatDateTime(new Date(),
                                                                  "hh:mm A")
            }
            Text {
                id: currentTemp
                font.pixelSize: parent.height / 3
                color: "white" // Set the text color to white
                text: qsTr("17°C")
            }
            RowLayout {
                id: profileRow
                spacing: 0  // No spacing between image and text

                Rectangle {
                    id: currentProfile
                    Layout.preferredWidth: topBarRowLayout.width / 50
                    Layout.preferredHeight: Layout.preferredWidth
                    color: "transparent"

                    Image {
                        id: userIcon
                        source: "/images/user_white_32.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    id: currentProfileText
                    text: qsTr("Profile")
                    color: "white"
                    font.pixelSize: currentProfile.height
                    verticalAlignment: Text.AlignVCenter
                }
            }


            Item { Layout.fillWidth: true }

        }
    }

    Item {
        id: mapItem
        anchors.fill: parent
        Rectangle {
            z: 1
            anchors.fill: parent
            color: "black"    // Full black color
            opacity: 0.4
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
            activeMapType: map.supportedMapTypes[0]
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
            Component.onCompleted: {
                 for(var i in map.supportedMapTypes)
                 console.log("SupportedMapType:",i, map.supportedMapTypes[i].name)
             }

        }
    }

    Item {
        id: musicPlayer
        z: 1
        height: parent.height * 14 / 15
        width: parent.width
        anchors.bottom: parent.bottom
        property bool isFullScreen: true
        // Danh sách bài hát
        property var tracks: [
            { title: "Ready to Rock", duration: 250, source: "ready_to_rock.mp3" },
            { title: "Do it All", duration: 210, source: "do_it_all.mp3" },
            { title: "The Real", duration: 225, source: "the_real.mp3" }
        ]

        // States chuyển giữa full và mini
        states: [
            State {
                name: "fullMusicPlayer"
                when: musicPlayer.isFullScreen
                PropertyChanges { target: fullMusicView; visible: true }
                PropertyChanges { target: musicBar; visible: false }
            },
            State {
                name: "miniMusicPlayer"
                when: !musicPlayer.isFullScreen
                PropertyChanges { target: fullMusicView; visible: false }
                PropertyChanges { target: musicBar; visible: true }
            }
        ]

        // Full Screen
        Item {
            id: fullMusicView
            anchors.fill: parent
            visible: true
            clip: true // Prevents blur from spilling over the edges


            Rectangle {
                anchors.fill: parent
                color: "black"    // Full black color
            }
            Image {
                id: coverSongImage
                anchors.fill: parent
                source: songModel.currentSongImage
                fillMode: Image.PreserveAspectCrop
                visible: false
                scale: 10
                cache: false // Important: forces reload on change
            }
            MultiEffect {
                id: blurEffect
                anchors.fill: parent
                source: coverSongImage
                blurEnabled: true
                blur: 0.99             // từ 0.0 (không mờ) đến 1.0 (mờ tối đa)
                brightness: -0.0       // bạn có thể tinh chỉnh sáng/tối
                contrast: -0.6
            }

            Rectangle {
                anchors.fill: parent
                color: "transparent"    // Full black color
                opacity: 0.4      // Minimum opacity (completely transparent)
            }

            // Top bar in music player
            RowLayout {
                id: musicPlayerTopBar
                height: musicPlayer.height / 20
                width: parent.width
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.topMargin: spacing
                anchors.leftMargin: spacing
                anchors.rightMargin: spacing
                spacing: musicPlayer.width / 80


                // Rectangle that contains the image
                Rectangle {
                    id: imageContainerShrink
                    width: musicPlayer.height / 30
                    height: width
                    color: "transparent"           // Optional background color for the rectangle

                    // Image inside the Rectangle
                    Image {
                        source: "/images/shrink_white_32.png"
                        anchors.centerIn: parent  // Center the image inside the rectangle
                        width: parent.width       // Image width should match the rectangle width
                        height: parent.height     // Image height should match the rectangle height
                        fillMode: Image.PreserveAspectFit  // Preserve aspect ratio and crop if necessary
                        MouseArea {
                            anchors.fill: parent
                            onClicked: musicPlayer.isFullScreen = false
                        }
                    }
                }

                // Spacer to push item to center
                Item { Layout.fillWidth: true }

                Label {
                    text: "MY FAVOURITES"
                    color: "white"
                    font.pixelSize: fullMusicView.height / 40
                    Layout.alignment: Qt.AlignVCenter
                }

                // Spacer to push item to right
                Item { Layout.fillWidth: true }

                // Rectangle that contains the image
                Rectangle {
                    id: imageContainerSearch
                    width: musicPlayer.height / 40
                    height: width
                    color: "transparent"           // Optional background color for the rectangle
                    // Image inside the Rectangle
                    Image {
                        source: "/images/search.png"
                        anchors.centerIn: parent  // Center the image inside the rectangle
                        width: parent.width       // Image width should match the rectangle width
                        height: parent.height     // Image height should match the rectangle height
                        fillMode: Image.PreserveAspectFit  // Preserve aspect ratio and crop if necessary
                        MouseArea {

                        }
                    }
                }

                Rectangle {
                    id: imageContainerPlayList
                    width: musicPlayer.height / 30
                    height: width
                    color: "transparent"           // Optional background color for the rectangle

                    // Image inside the Rectangle
                    Image {
                        source: "/images/playlist_white_32.png"
                        anchors.centerIn: parent  // Center the image inside the rectangle
                        width: parent.width       // Image width should match the rectangle width
                        height: parent.height     // Image height should match the rectangle height
                        fillMode: Image.PreserveAspectFit  // Preserve aspect ratio and crop if necessary
                        MouseArea {

                        }
                    }
                }
            }

            // Main Content
            RowLayout {
                id: rowLayout
                anchors.top: musicPlayerTopBar.bottom
                anchors.topMargin: musicPlayer.height / 20
                width: parent.width
                height: musicPlayer.height * 16 / 20 - musicPlayerTopBar.spacing

                Item {
                    id: imageContainerCurrentSong
                    Layout.preferredWidth: parent.height
                    Layout.preferredHeight: parent.height
                    Layout.alignment: Qt.AlignVCenter
                    Image {
                        id: sourceItem
                        source: songModel.currentSongImage
                        anchors.centerIn: parent
                        width: parent.width / 1.8
                        height: width
                        visible: false
                        cache: false // Important: forces reload on change
                    }

                    MultiEffect {
                        source: sourceItem
                        anchors.fill: sourceItem
                        maskEnabled: true
                        maskSource: mask2
                    }

                    Item {
                        id: mask2
                        width: sourceItem.width
                        height: sourceItem.height
                        layer.enabled: true
                        visible: false

                        Rectangle {
                            width: sourceItem.width
                            height: sourceItem.height
                            radius: width / 20
                            color: "black"
                        }
                    }
                }

                // Song list
                ListView {
                    id: listViewSongs
                    Layout.preferredWidth: parent.width - imageContainerCurrentSong.width
                    Layout.preferredHeight: parent.height
                    Layout.alignment: Qt.AlignVCenter

                    model: songModel

                    delegate: Item {
                        width: ListView.view.width
                        height: listViewSongs.height / 8

                        // Bottom divider
                        Rectangle {
                            anchors.left: parent.left
                            anchors.top: parent.top
                            height: parent.height / 50
                            width: listViewSongs.width / 1.2
                            color: "#a1a09f"
                            opacity: 0.4
                        }

                        Rectangle {
                            anchors.fill: parent
                            color: "transparent"

                            RowLayout {
                                id: listSongRowLayout
                                anchors.verticalCenter: parent.verticalCenter
                                spacing: 0
                                width: parent.width / 1.15

                                Text {
                                    text: playing ? "\u25B6" : ""
                                    color: "#888"
                                    font.pixelSize: listViewSongs.height / 30
                                }

                                ColumnLayout {
                                    spacing: parent.height / 10
                                    Layout.fillWidth: true

                                    Text {
                                        text: title
                                        font.pixelSize: listViewSongs.height / 30
                                        color: "white"
                                        elide: Text.ElideRight
                                        wrapMode: Text.NoWrap
                                        Layout.fillWidth: true
                                        Layout.preferredWidth: listSongRowLayout.width
                                    }

                                    Text {
                                        text: artist
                                        font.pixelSize: listViewSongs.height / 37
                                        color: "#bbbbbb"
                                        elide: Text.ElideRight
                                        wrapMode: Text.NoWrap
                                        Layout.fillWidth: true
                                        Layout.preferredWidth: listSongRowLayout.width
                                    }
                                }

                                Item { Layout.fillWidth: true }

                                Image {
                                    source: "/images/more_white_32.png"
                                    Layout.preferredHeight: listViewSongs.height / 20
                                    Layout.preferredWidth: Layout.preferredHeight
                                }
                            }
                        }

                        MouseArea {
                            anchors.fill: parent
                            z: 999  // Make sure it's on top
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                currentTrackIndex = index
                                songModel.playSongAt(index)
                                console.log("clicked song at", index)
                            }
                        }
                    }
                }

                Item { Layout.fillWidth: true }

            }

            // Bottom bar (Player Controls)
            Rectangle {
                id: bottomBar
                width: parent.width
                height: musicPlayer.height * 2 / 20
                anchors.bottom: parent.bottom
                color: "transparent"  // Màu nền gần giống
                // opacity: 0.4      // Minimum opacity (completely transparent)

                // Progress bar (trên cùng)
                Slider {
                    id: progressBar
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - playControlRowLayout.spacing * 2
                    height: 3

                    from: 0
                    to: songModel.currentSongDuration
                    value: songModel.currentSongProgress

                    // Remove default styling
                    background: Rectangle {
                        anchors.fill: parent
                        color: "transparent"
                    }

                    // Custom progress track
                    Rectangle {
                        id: track
                        anchors.verticalCenter: parent.verticalCenter
                        height: parent.height
                        width: parent.width
                        color: "#999"
                        radius: width / 2
                        z: 0
                    }

                    // Filled part of the track (left of the handle)
                    Rectangle {
                        anchors.verticalCenter: parent.verticalCenter
                        height: parent.height
                        width: progressBar.visualPosition * progressBar.width
                        color: "white"
                        radius: width / 2
                        z: 1
                    }

                    // Custom handle
                    handle: Rectangle {
                        width: 12
                        height: 12
                        radius: width / 2
                        color: "white"
                        x: progressBar.width * (progressBar.value / progressBar.to) - width / 2
                        y: (parent.height - height) / 2
                        z: 1
                    }
                }

                RowLayout {
                    id: playControlRowLayout
                    width: parent.width
                    Layout.alignment: Qt.AlignVCenter
                    spacing: bottomBar.width / 30
                    Item {
                        Layout.preferredHeight: bottomBar.height
                        Layout.preferredWidth: 0
                    }

                    ColumnLayout {
                        clip: true
                        spacing: 2
                        Layout.alignment: Qt.AlignVCenter
                        Layout.preferredWidth: progressBar.width / 2.5  // fixed width
                        Layout.maximumWidth: progressBar.width / 2.5     // cap max width

                        Text {
                            text: songModel.currentSongTitle
                            color: "white"
                            font.pixelSize: 10
                            elide: Text.ElideRight
                            wrapMode: Text.NoWrap
                            Layout.fillWidth: true
                            Layout.preferredWidth: parent.width
                        }

                        Text {
                            text: songModel.currentSongArtist
                            color: "#bbbbbb"
                            font.pixelSize: 9
                            elide: Text.ElideRight
                            wrapMode: Text.NoWrap
                            Layout.fillWidth: true
                            Layout.preferredWidth: parent.width
                        }
                    }

                    // Item { Layout.fillWidth: true }

                    RowLayout {
                        spacing: parent.width / 20
                        Rectangle {
                            height: bottomBar.height / 3
                            width: height
                            color: "transparent"
                            smooth: true
                            Image {
                                id: previousTrackIcon
                                source: "/images/previous_track_white_32.png"
                                anchors.fill: parent     // Image fills the Rectangle
                                fillMode: Image.PreserveAspectFit  // Keeps aspect ratio

                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    currentTrackIndex--
                                    songModel.playSongAt(currentTrackIndex)
                                }
                            }
                        }

                        Rectangle {
                            height: bottomBar.height / 3
                            width: height
                            color: "transparent"
                            smooth: true
                            Image {
                                id: playIcon
                                source: songModel.isPlaying ? "/images/pause_white_32.png" : "/images/continue_white_32.png"
                                anchors.fill: parent     // Image fills the Rectangle
                                fillMode: Image.PreserveAspectFit  // Keeps aspect ratio
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    songModel.togglePlayPause()
                                }
                            }
                        }

                        Rectangle {
                            height: bottomBar.height / 3
                            width: height
                            color: "transparent"
                            smooth: true
                            Image {
                                id: nextTrackIcon
                                source: "/images/next_track_white_32.png"
                                anchors.fill: parent     // Image fills the Rectangle
                                fillMode: Image.PreserveAspectFit  // Keeps aspect ratio
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    currentTrackIndex++
                                    songModel.playSongAt(currentTrackIndex)
                                }
                            }
                        }
                    }
                    Item { Layout.fillWidth: true }

                    Rectangle {
                        height: bottomBar.height / 4
                        width: height
                        color: "transparent"
                        smooth: true
                        Image {
                            id: likeIcon
                            source: "/images/like_24.png"
                            anchors.fill: parent     // Image fills the Rectangle
                            fillMode: Image.PreserveAspectFit  // Keeps aspect ratio
                        }
                    }
                    Item {
                        // color: "black"
                        Layout.preferredHeight: bottomBar.height

                        Layout.preferredWidth: 0
                    }
                }

            }

        }

        Rectangle {
            id: musicBar
            color: "transparent"
            // opacity: 0.7
            radius: width / 80
            anchors.bottom: parent.bottom
            width: parent.width - anchors.bottomMargin * 2
            height: parent.height / 5.5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: height / 25
            MouseArea {
                anchors.fill: parent
                onClicked: musicPlayer.isFullScreen = true
            }
            Rectangle {
                id: backgroundColor
                anchors.fill: parent
                color: "black"
                opacity: 0.7
                radius: parent.radius
            }

            Image {
                id: sourceGoneAva
                source: songModel.currentSongImage
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
                            text: songModel.currentSongTitle
                            color: "#FFFFFF"
                            font.pixelSize: parent.parent.height / 6
                            font.bold: false
                        }
                        Item { Layout.fillWidth: true }
                        Image {
                            source: "/images/like_16.png" // Add a heart icon image

                            // fillMode: Image.PreserveAspectFit
                        }
                    }

                    Text {
                        text: songModel.currentSongArtist
                        color: "#8f8f8f"
                        font.pixelSize: parent.parent.height / 7
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
                                text: helpers.formatTime(songModel.currentSongProgress)
                                color: "#8f8f8f"
                                font.pixelSize: parent.parent.parent.height / 6
                            }

                            Item { Layout.fillWidth: true }

                            Text {
                                text: helpers.formatTime(songModel.currentSongDuration)
                                color: "#8f8f8f"
                                font.pixelSize: parent.parent.parent.height / 6
                            }
                        }

                        Slider {
                            id: smallProgressBar
                            Layout.fillWidth: true
                            height: 3

                            from: 0
                            to: songModel.currentSongDuration
                            value: songModel.currentSongProgress

                            // Remove default styling
                            background: Rectangle {
                                anchors.fill: parent
                                color: "transparent"
                            }

                            // Custom progress track
                            Rectangle {
                                anchors.verticalCenter: parent.verticalCenter
                                height: parent.height
                                width: parent.width
                                color: "#999"
                                radius: width / 2
                                z: 0
                            }

                            // Filled part of the track (left of the handle)
                            Rectangle {
                                anchors.verticalCenter: parent.verticalCenter
                                height: parent.height
                                width: smallProgressBar.visualPosition * smallProgressBar.width
                                color: "white"
                                radius: width / 2
                                z: 1
                            }

                            // Custom handle
                            handle: Rectangle {
                                width: 12
                                height: 12
                                radius: width / 2
                                color: "white"
                                x: smallProgressBar.width * (smallProgressBar.value / smallProgressBar.to) - width / 2
                                y: (parent.height - height) / 2
                                z: 2
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
                    source: "/images/shuffle_white_32.png"
                    width: height
                    height: musicBar.height / 4.5
                }

                Image {
                    source: "/images/previous_track_white_32.png"
                    width: height
                    height: musicBar.height / 4.5
                }

                Image {
                    source: playIcon.source
                    width: height
                    height: musicBar.height / 4.5
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            songModel.togglePlayPause()
                        }
                    }
                }

                Image {
                    source: "/images/next_track_white_32.png"
                    width: height
                    height: musicBar.height / 4.5
                }

                Image {
                    source: "/images/repeat_white_32.png"
                    width: height
                    height: musicBar.height / 4.5
                }

            }
        }

    }

}


