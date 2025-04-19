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
        z: 0
        anchors.fill: parent
        enabled: true
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
        property bool isFullScreen: false

        // States switch between full và small
        states: [
            State {
                name: "fullMusicPlayer"
                when: musicPlayer.isFullScreen
                PropertyChanges { target: fullMusicView; visible: true }
                PropertyChanges { target: musicBar; visible: false }
                PropertyChanges { target: map; enabled: false }
            },
            State {
                name: "miniMusicPlayer"
                when: !musicPlayer.isFullScreen
                PropertyChanges { target: fullMusicView; visible: false }
                PropertyChanges { target: musicBar; visible: true }
                PropertyChanges { target: map; enabled: true }
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
            Item {
                id: coverSongImageContainer
                anchors.fill: parent
                visible: false

                Image {
                    id: coverSongImage
                    anchors.fill: parent
                    source: currentTrackIndex === -1 ? "/images/background_music.jpg" : songModel.currentSongImage
                    fillMode: Image.PreserveAspectFit
                    cache: false

                    transform: Scale {
                        id: zoomEffect
                        origin.x: coverSongImage.width / 2
                        origin.y: coverSongImage.height / 2
                        xScale: 2
                        yScale: 2
                    }
                }
            }
            MultiEffect {
                id: blurEffect
                anchors.fill: parent
                source: coverSongImageContainer
                blurEnabled: true
                blur: 0.99
                brightness: -0.0
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
                id: contentRowLayout
                anchors.top: musicPlayerTopBar.bottom
                anchors.topMargin: musicPlayer.height / 20
                width: parent.width
                height: musicPlayer.height * 16 / 20 - musicPlayerTopBar.spacing

                Item {
                    id: imageContainerCurrentSong
                    Layout.preferredWidth: parent.height / 1.2
                    Layout.preferredHeight: parent.height / 1.2
                    Layout.alignment: Qt.AlignVCenter

                    // Gray background only when no song is selected
                    Rectangle {
                        id: colorBg
                        anchors.centerIn: parent
                        width: currentTrackIndex === -1 ? parent.width / 1.8 : parent.width / 1.6
                        height: width
                        radius: width / 20
                        color: currentTrackIndex === -1 ? "#cccccc" : "transparent"
                        z: -1
                    }

                    Image {
                        id: sourceItem
                        source: songModel.currentSongImage
                        anchors.centerIn: colorBg
                        width: currentTrackIndex === -1 ? parent.width / 6 : parent.width / 1.6
                        height: width
                        fillMode: Image.Stretch
                        visible: false
                        cache: false
                    }

                    MultiEffect {
                        anchors.fill: sourceItem
                        source: sourceItem
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
                            width: parent.width
                            height: parent.height
                            radius: width / 20
                            color: "black"
                        }
                    }
                }

                // Song list
                ListView {
                    id: listViewSongs
                    Layout.preferredWidth: parent.width - imageContainerCurrentSong.width
                    Layout.preferredHeight: parent.height / 1.2
                    Layout.alignment: Qt.AlignVCenter

                    model: songModel
                    clip: true
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
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                // propagateComposedEvents: true

                                onClicked: {
                                    currentTrackIndex = index
                                    songModel.playSongAt(index)
                                    console.log("clicked song at", index)
                                }
                            }
                            RowLayout {
                                id: listSongRowLayout
                                anchors.verticalCenter: parent.verticalCenter
                                spacing: 0
                                width: parent.width / 1.15

                                Text {
                                    // text: playing ? "\u25B6" : ""
                                    text: ""
                                    color: "#888"
                                    font.pixelSize: contentRowLayout.height / 30
                                }

                                ColumnLayout {
                                    spacing: parent.height / 10
                                    Layout.fillWidth: true

                                    Text {
                                        text: title
                                        font.pixelSize: contentRowLayout.height / 30
                                        color: "white"
                                        elide: Text.ElideRight
                                        wrapMode: Text.NoWrap
                                        Layout.fillWidth: true
                                        Layout.preferredWidth: listSongRowLayout.width
                                    }

                                    Text {
                                        text: artist
                                        font.pixelSize: contentRowLayout.height / 37
                                        color: "#bbbbbb"
                                        elide: Text.ElideRight
                                        wrapMode: Text.NoWrap
                                        Layout.fillWidth: true
                                        Layout.preferredWidth: listSongRowLayout.width
                                    }
                                }

                                Item { Layout.fillWidth: true }

                                Image {
                                    id: moreIcon
                                    source: "/images/more_white_32.png"
                                    // color: "red"
                                    Layout.preferredHeight: contentRowLayout.height / 20
                                    Layout.preferredWidth: Layout.preferredHeight

                                    MouseArea {
                                        id: moreMouseArea
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        cursorShape: Qt.PointingHandCursor
                                        acceptedButtons: Qt.RightButton | Qt.LeftButton

                                        onClicked: {
                                            let menuWidth = listSongRowLayout.width / 3;
                                            moreMenu.width = menuWidth;
                                            moreMenu.popup(moreIcon.x - menuWidth / 1.3, moreIcon.y);
                                        }
                                    }
                                }

                                Menu {
                                    id: moreMenu
                                    // width: listSongRowLayout.width / 3    // Custom background with rounded corners
                                    // x: moreIcon.x - width
                                    // y: moreIcon.y
                                    clip: true
                                    background: Rectangle {
                                        id: menuBackgroundItem
                                        radius: width / 12
                                        clip: true

                                        Image {
                                            id: menuBackgroundItemImage
                                            opacity: 0.3
                                            anchors.fill: parent
                                            source: coverSongImage.source
                                            fillMode: Image.PreserveAspectCrop
                                            // smooth: true
                                            transform: Scale {
                                                id: zoomMenuItemEffect
                                                origin.x: menuBackgroundItemImage.width / 2
                                                origin.y: menuBackgroundItemImage.height / 2
                                                xScale: 2
                                                yScale: 2
                                            }
                                        }
                                    }
                                    MenuItem {
                                        text: "Add"
                                        // contentItem: Text {
                                        //     color: "red"
                                        // }
                                        onTriggered: console.log("Add clicked")
                                    }
                                    MenuItem {
                                        text: "Delete"
                                        onTriggered: console.log("Delete clicked")
                                    }
                                    MenuItem {
                                        text: "Detail"
                                        onTriggered: console.log("Detail clicked")
                                    }
                                }
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
                // This MouseArea captures input ONLY within the music screen area
                MouseArea {
                    id: fullMusicBarBlocker
                    anchors.fill: parent
                    preventStealing: true
                    propagateComposedEvents: false
                    hoverEnabled: true

                    onPressed: mouse => mouse.accepted = true
                    onReleased: mouse => mouse.accepted = true
                    onPositionChanged: mouse => mouse.accepted = true
                }

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

                    // onMoved: {
                    //     // console.log("Set progress clicked")
                    //     songModel.setCurrentSongProgress(value)
                    // }
                    // Click anywhere to set progress
                    MouseArea {
                        width: parent.width
                        height: parent.height * 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        onPressed: (mouse) => {
                            const ratio = mouse.x / width;
                            const newValue = progressBar.from + ratio * (progressBar.to - progressBar.from);
                            songModel.setCurrentSongProgress(newValue);
                        }
                    }

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

                        property bool dragging: false  // to track drag state

                        MouseArea {
                            id: handleMouseArea
                            anchors.centerIn: parent
                            width: 30
                            height: 30
                            hoverEnabled: true
                            cursorShape: Qt.PointingHandCursor
                            onPressed: mouse => {
                                parent.dragging = true;
                            }

                            onReleased: mouse => {
                                parent.dragging = false;
                            }

                            onPositionChanged: mouse => {
                                if (parent.dragging) {
                                    const newValue = progressBar.from + ((mouse.x + parent.x) / progressBar.width) * (progressBar.to - progressBar.from);
                                    const tempValue = Math.max(progressBar.from, Math.min(progressBar.to, newValue));
                                    songModel.setCurrentSongProgress(tempValue);
                                }
                            }
                        }
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
                        Layout.preferredWidth: progressBar.width / 2.5
                        Layout.maximumWidth: progressBar.width / 2.5

                        // === Title Marquee ===
                        Item {
                            Layout.fillWidth: true
                            height: 14  // Adjust to your font size

                            Rectangle {
                                id: titleClip
                                anchors.fill: parent
                                clip: true
                                color: "transparent"

                                Item {
                                    id: titleContainer
                                    width: titleMetrics.width
                                    height: parent.height
                                    property bool shouldScroll: titleMetrics.width > titleClip.width
                                    Text {
                                        id: titleText
                                        anchors.verticalCenter: parent.verticalCenter
                                        text: songModel.currentSongTitle
                                        color: "white"
                                        font.pixelSize: 10
                                        wrapMode: Text.NoWrap
                                    }
                                    SequentialAnimation on x {
                                        id: titleAnim
                                        loops: Animation.Infinite
                                        running: titleContainer.shouldScroll

                                        NumberAnimation {
                                            from: titleClip.width
                                            to: -(titleMetrics.width)
                                            duration: 8000
                                            easing.type: Easing.Linear
                                        }

                                        PauseAnimation { duration: 100 } // Optional: short pause at the end
                                    }

                                    // Restart animation on width or text change
                                    Component.onCompleted: {
                                            x = shouldScroll ? titleClip.width : 0
                                            if (shouldScroll) titleAnim.start()
                                    }
                                    onWidthChanged: {
                                        titleAnim.stop()
                                        if (shouldScroll) {
                                            x = titleClip.width
                                            titleAnim.start()
                                        } else {
                                            x = 0
                                        }
                                    }
                                }
                            }

                            TextMetrics {
                                id: titleMetrics
                                font: titleText.font
                                text: titleText.text
                            }
                        }

                        // === Artist Marquee ===
                        Item {
                            Layout.fillWidth: true
                            height: 13  // Adjust to your font size

                            Rectangle {
                                id: artistClip
                                anchors.fill: parent
                                clip: true
                                color: "transparent"

                                Item {
                                    id: artistContainer
                                    width: artistMetrics.width
                                    height: parent.height

                                    Text {
                                        id: artistText
                                        anchors.verticalCenter: parent.verticalCenter
                                        text: songModel.currentSongArtist
                                        color: "#bbbbbb"
                                        font.pixelSize: 9
                                        wrapMode: Text.NoWrap
                                    }

                                    NumberAnimation on x {
                                        id: artistAnim
                                        from: 0
                                        to: -(artistMetrics.width - artistClip.width)
                                        duration: 8000
                                        loops: Animation.Infinite
                                        running: artistMetrics.width > artistClip.width
                                    }

                                    onWidthChanged: {
                                        if (artistMetrics.width > artistClip.width) {
                                            x = 0
                                            artistAnim.restart()
                                        } else {
                                            x = 0
                                            artistAnim.stop()
                                        }
                                    }
                                }
                            }

                            TextMetrics {
                                id: artistMetrics
                                font: artistText.font
                                text: artistText.text
                            }
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
                                    if (currentTrackIndex < 0)
                                        currentTrackIndex = songModel.count - 1
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
                                    if (currentTrackIndex >= songModel.count)
                                        currentTrackIndex = 0
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

        // Small Screen
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
            z: -10
            // This MouseArea captures input ONLY within the music screen area
            MouseArea {
                id: smallMusicBarBlocker
                z: 0
                anchors.fill: parent
                propagateComposedEvents: false
                preventStealing: true
                // hoverEnabled: true
                // cursorShape: Qt.PointingHandCursor
                // onPressed: mouse => mouse.accepted = true
                // onReleased: mouse => mouse.accepted = true
                // onPositionChanged: mouse => mouse.accepted = true
                // onEntered: {
                //     mapItem.enabled = false
                //     console.log("entered")
                // }
                // onExited: {
                //     mapItem.enabled = true
                //     console.log("exited")

                // }

                onClicked: (mouse) => {
                    musicPlayer.isFullScreen = true

                }
            }

            Rectangle {
                id: backgroundColor
                anchors.fill: parent
                color: "black"
                opacity: 0.7
                radius: parent.radius
            }

            // Gray background only when no song is selected
            Rectangle {
                id: smallColorBg
                anchors.left: musicBar.left
                height: musicBar.height
                width: height
                radius: width / 9
                color: currentTrackIndex === -1 ? "#cccccc" : "transparent"
                z: -1
            }

            Item {
                id: smallCoverSongImageContainer
                anchors.centerIn: smallColorBg
                height: currentTrackIndex === -1
                        ? musicBar.height / 4
                        : musicBar.height
                width: height
                visible: false
                Image {
                    id: smallCoverSongImage
                    anchors.fill: parent
                    source: songModel.currentSongImage
                    fillMode: Image.PreserveAspectCrop
                    cache: false

                    transform: Scale {
                        id: smallZoomEffect
                        origin.x: smallCoverSongImage.width / 2
                        origin.y: smallCoverSongImage.height / 2
                        xScale: currentTrackIndex === -1 ? 1 : 1.7
                        yScale: currentTrackIndex === -1 ? 1 : 2
                    }
                }
            }

            MultiEffect {
                source: smallCoverSongImageContainer
                anchors.fill: smallCoverSongImageContainer
                maskEnabled: true
                maskSource: mask
            }

            Item {
                id: mask
                width: smallCoverSongImageContainer.width
                height: smallCoverSongImageContainer.height
                layer.enabled: true
                visible: false

                Rectangle {
                    width: smallCoverSongImageContainer.width
                    height: smallCoverSongImageContainer.height
                    radius: width / 9
                    color: "black"
                }
            }

            Rectangle {
                id: playingSong
                width: parent.width / 3.2
                height: parent.height / 1.2
                color: "transparent"
                anchors.left: smallColorBg.right
                anchors.leftMargin: width / 20
                anchors.verticalCenter: parent.verticalCenter
                // clip: true

                // // This MouseArea captures input ONLY within the music screen area
                // MouseArea {
                //     id: smallSmallMusicBarBlocker
                //     anchors.fill: parent
                //     preventStealing: true
                //     propagateComposedEvents: false
                //     hoverEnabled: true
                //     // cursorShape: Qt.PointingHandCursor
                //     onPressed: mouse => mouse.accepted = true
                //     onReleased: mouse => mouse.accepted = true
                //     onPositionChanged: mouse => mouse.accepted = true
                // }

                ColumnLayout {
                    id: musicBarColumnLayout
                    anchors.fill: parent
                    spacing: 0
                    Layout.preferredWidth: parent.width // fixed width
                    Layout.maximumWidth: parent.width // cap max width
                    RowLayout {
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignHCenter

                        Rectangle {
                            id: smallTitleClip
                            Layout.preferredWidth: parent.parent.width / 1.2
                            Layout.preferredHeight: parent.parent.height / 3.5
                            color: "transparent"
                            clip: true

                            Item {
                                id: smallTitleContainer
                                width: smallTitleMetrics.width
                                height: parent.height
                                property bool shouldScroll: smallTitleMetrics.width > smallTitleClip.width

                                Text {
                                    id: smallTitleText
                                    anchors.verticalCenter: parent.verticalCenter
                                    text: songModel.currentSongTitle
                                    color: "#FFFFFF"
                                    font.pixelSize: musicBarColumnLayout.height / 6
                                    font.bold: false
                                    wrapMode: Text.NoWrap
                                }

                                SequentialAnimation on x {
                                    id: smallTitleAnim
                                    loops: Animation.Infinite
                                    running: smallTitleContainer.shouldScroll

                                    NumberAnimation {
                                        from: smallTitleClip.width
                                        to: -(smallTitleMetrics.width)
                                        duration: 8000
                                        easing.type: Easing.Linear
                                    }

                                    PauseAnimation { duration: 100 } // Optional: short pause at the end
                                }

                                // Restart animation on width or text change
                                Component.onCompleted: {
                                        x = shouldScroll ? smallTitleClip.width : 0
                                        if (shouldScroll) smallTitleAnim.start()
                                }

                                onWidthChanged: {
                                    smallTitleAnim.stop()
                                    if (shouldScroll) {
                                        x = smallTitleClip.width
                                        smallTitleAnim.start()
                                    } else {
                                        x = 0
                                    }
                                }
                            }

                            TextMetrics {
                                id: smallTitleMetrics
                                font: smallTitleText.font
                                text: smallTitleText.text
                            }
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
                        elide: Text.ElideRight
                        wrapMode: Text.NoWrap
                        Layout.fillWidth: true
                        Layout.preferredWidth: parent.width
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

                            // Click anywhere to set progress
                            MouseArea {
                                width: parent.width
                                height: parent.height * 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                onPressed: (mouse) => {
                                    const ratio = mouse.x / width;
                                    const newValue = smallProgressBar.from + ratio * (smallProgressBar.to - smallProgressBar.from);
                                    songModel.setCurrentSongProgress(newValue);
                                }
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
                                z: 1

                                property bool dragging: false  // to track drag state

                                MouseArea {
                                    id: smallHandleMouseArea
                                    anchors.centerIn: parent
                                    // propagateComposedEvents: false
                                    preventStealing: true

                                    width: 30
                                    height: 30
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse => {
                                        parent.dragging = true;
                                    }

                                    onReleased: mouse => {
                                        parent.dragging = false;
                                    }

                                    onPositionChanged: mouse => {
                                        if (parent.dragging) {
                                            let newValue = smallProgressBar.from + ((mouse.x + parent.x) / smallProgressBar.width) * (smallProgressBar.to - smallProgressBar.from);
                                            let currentValue = Math.max(smallProgressBar.from, Math.min(smallProgressBar.to, newValue));
                                            songModel.setCurrentSongProgress(currentValue);
                                        }
                                    }
                                }
                            }

                        }

                    }
                }



            }

            // Play controls
            RowLayout {
                height: musicBar.height
                Layout.fillWidth: true
                spacing: musicBar.width / 17
                // anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: playingSong.right
                anchors.leftMargin: 0

                Item { Layout.fillWidth: true }

                Rectangle {
                    Layout.preferredHeight: Layout.preferredWidth
                    Layout.preferredWidth: musicBar.height / 4.5
                    color: "transparent"
                    Image {
                        anchors.fill: parent
                        source: "/images/shuffle_white_32.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Rectangle {
                    Layout.preferredHeight: Layout.preferredWidth
                    Layout.preferredWidth: musicBar.height / 4.5
                    color: "transparent"
                    Image {
                        id: smallPreviousTrackIcon
                        source: "/images/previous_track_white_32.png"
                        anchors.fill: parent     // Image fills the Rectangle
                        fillMode: Image.PreserveAspectFit  // Keeps aspect ratio

                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            currentTrackIndex--
                            if (currentTrackIndex < 0)
                                currentTrackIndex = songModel.count - 1
                            songModel.playSongAt(currentTrackIndex)
                        }
                    }
                }


                Rectangle {
                    Layout.preferredHeight: Layout.preferredWidth
                    Layout.preferredWidth: musicBar.height / 4.5
                    color: "transparent"
                    Image {
                        source: playIcon.source
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        MouseArea {
                            id: playMouseArea
                            // preventStealing: true
                            // propagateComposedEvents: false
                            // cursorShape: Qt.PointingHandCursor
                            anchors.fill: parent
                            onClicked: {
                                songModel.togglePlayPause()
                            }
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: Layout.preferredWidth
                    Layout.preferredWidth: musicBar.height / 4.5
                    color: "transparent"
                    Image {
                        anchors.fill: parent
                        source: "/images/next_track_white_32.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            currentTrackIndex++
                            if (currentTrackIndex >= songModel.count)
                                currentTrackIndex = 0
                            songModel.playSongAt(currentTrackIndex)
                        }
                    }
                }

                Rectangle {
                    Layout.preferredHeight: Layout.preferredWidth
                    Layout.preferredWidth: musicBar.height / 4.5
                    color: "transparent"
                    Image {
                        anchors.fill: parent
                        source: "/images/repeat_white_32.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Item { Layout.fillWidth: true }

            }
        }

    }

}


