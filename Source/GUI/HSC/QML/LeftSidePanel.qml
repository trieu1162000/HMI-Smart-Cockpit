import QtQuick 2.15
import QtQuick.Controls
import QtQuick3D 6.7
import QtQuick.Layouts 2.15
import Custom3D 1.0  // Import our C++ custom geometry

Rectangle {
    id: sideBar
    color: "white"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.leftMargin: 0
    anchors.topMargin: 0
    // opacity: 0.95
    property real lastX: 0
    property real lastY: 0
    property alias rotationX: cameraRoot.eulerRotation.x
    property alias rotationY: cameraRoot.eulerRotation.y
    property real zoom: 2/3

    Rectangle {
        anchors.fill: parent
        color: "black"
        opacity: 0.89
    }

    Item {
        id: headerBar
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height / 17
        RowLayout {
            id: headerBarRowLayout
            anchors.leftMargin: parent.width / 40
            anchors.rightMargin: parent.width / 40
            anchors.fill: headerBar
            anchors.verticalCenter: parent.verticalCenter
            Text {
                id: modeDriveP
                text: "P"
                font.pixelSize: parent.height / 2
                color: "white"
                font.bold: true
            }
            Text {
                id: modeDriveR
                text: "R"
                font.pixelSize: parent.height / 2
                color: "gray"
            }
            Text {
                id: modeDriveN
                text: "N"
                font.pixelSize: parent.height / 2
                color: "gray"
            }
            Text {
                id: modeDriveD
                text: "D"
                font.pixelSize: parent.height / 2
                color: "gray"
            }
            // Spacer to push items to corners
            Item {
                Layout.fillWidth: true
            }

            RowLayout {
                Layout.alignment: Qt.AlignVCenter
                width: parent.width / 5
                height: parent.height
                spacing: parent.width / 50
                Text {
                    id: batteryText
                    property bool showPercentage: false  // Flag to switch display mode

                    text: showPercentage ? "98%" : "318 min"  // Toggle between mi and %
                    font.pixelSize: parent.height / 2
                    color: "white"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: batteryText.showPercentage = !batteryText.showPercentage  // Toggle state
                    }
                }
                Image {
                    id: batteryIcon
                    height: sideBar.height / 30
                    width: sideBar.width / 10
                    source: "/images/full_battery.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

        }
    }

    ColumnLayout {
        Layout.preferredWidth: parent.width / 15
        Layout.preferredHeight: parent.height / 3
        spacing: parent.width / 50
        anchors.left: parent.left
        anchors.top: headerBar.bottom
        anchors.leftMargin: parent.width / 40
        Image {
            id: headLightIcon
            source: lightController.lightControl ? "/images/head_light_on_32.png" : "/images/head_light_off_32.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.width / 1.2
            Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
            fillMode: Image.PreserveAspectFit
            MouseArea {
                id: mouseAreaHeadLight
                anchors.fill: headLightIcon

                onPressed: {
                    lightController.setLightControl(!lightController.lightControl)
                }
            }
            Connections {
                target: lightController
                function onLightControlChanged() {
                    headLightIcon.source = lightController.lightControl ? "/images/head_light_on_32.png" : "/images/head_light_off_32.png"
                }
            }
        }
        Image {
            id: highBeamIcon
            source: "/images/high_beam_on_32.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.width / 1.2
            Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: fogLightIcon
            source: "/images/fog_light_on_32.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.width / 1.0
            Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: tirePressureIcon
            source: "/images/tire_pressure_on_32.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.width / 1.3
            Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
            fillMode: Image.PreserveAspectFit
        }
        Item {

        }

        Image {
            id: seatbeltWarningIcon
            source: "/images/seatbelt_warning_on_32.png"
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.width / 1.4
            // Layout.preferredWidth: Layout.preferredHeight  // Ensure it has a width
            fillMode: Image.PreserveAspectFit

        }
    }

    Item {
        id: vehicleInfoItem
        anchors.top: headerBar.bottom
        anchors.right: parent.right
        width: parent.width * 9 / 10
        height: parent.height * 3 / 34
    }

    Item {
        id: carView3DItem
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: parent.width * 9 / 10
        height: parent.height * 14 / 17
        View3D {
            id: carView3D
            anchors.fill: parent
            environment: SceneEnvironment {
                clearColor: "transparent"
                backgroundMode: SceneEnvironment.SkyBox
                antialiasingMode: SceneEnvironment.MSAA // Turn on Anti-aliasing
            }
            camera: sceneCamera

            Node {
                id: carModelNode
                position: Qt.vector3d(0, 0, 0)
                eulerRotation: Qt.vector3d(0, 0, 0)

                FullCar {
                    id: carModel
                    eulerRotation: Qt.vector3d(30, 0, 0)
                }

                Buttons3D {
                    id: buttons3DLeftSidePanel
                    trunkMesh: carModel.trunkCarMesh
                    frunkMesh: carModel.frunkCarMesh
                }
            }

            Node {
                id: cameraRoot
                position: Qt.vector3d(0, 0, 0)  // Center rotation at (0,0,0)
                eulerRotation: Qt.vector3d(0, 0, 0)  // Rotation properties
                scale: Qt.vector3d(zoom, zoom, zoom)
                PerspectiveCamera {
                    id: camera
                    position: Qt.vector3d(0, 0.5, carView3D.height / 54)
                    clipNear: 0.01
                    clipFar: 10000
                }
            }

            DirectionalLight {
                eulerRotation.x: cameraRoot.eulerRotation.x
                eulerRotation.y: cameraRoot.eulerRotation.y
                // brightness: 1.5
                // castsShadow: true
            }


            // MouseArea for Picking
            MouseArea {
                anchors.fill: parent
                property bool dragging: false
                onClicked: (mouse) => {
                    var result = carView3D.pick(mouse.x, mouse.y);
                    if (result.objectHit) {
                        cameraRoot.scale = Qt.vector3d(zoom, zoom, zoom)
                        var pickedObject = result.objectHit;
                       // Only toggle isClicked if the object has this property
                        if ("isClicked" in pickedObject) {
                           pickedObject.isClicked = !pickedObject.isClicked;
                        }
                        if (pickedObject.objectName === "buttonOpenFrunk") {
                            console.log("Open Frunk Button Clicked!");
                            if(pickedObject.isClicked)
                            {
                                buttons3DLeftSidePanel.visible = false
                                changeFrunkView.start();
                            }
                            else
                            {
                                carModel.closeFrunkEvent.start();
                            }
                        } else if(pickedObject.objectName === "lockIconRoof") {
                            buttons3DLeftSidePanel.imageOverlayLockIconRoofSource =  pickedObject.isClicked? "/images/unlock_32.png" : "/images/lock_32.png";
                            console.log("3D Lock Clicked!");
                        } else if(pickedObject.objectName === "buttonOpenTrunk") {
                            console.log("Open Trunk Button Clicked!");
                            if(pickedObject.isClicked) {
                                buttons3DLeftSidePanel.visible = false
                                changeTrunkView.start();
                            }
                            else
                               carModel.closeTrunkEvent.start();
                        } else if( (pickedObject.objectName === carModel.frunkCarMeshObjectName)
                                || (pickedObject.objectName === carModel.trunkCarMeshObjectName) ) {
                            rotationCarView.start();
                        } else {
                            console.log("3D Object Clicked!");
                        }

                    }
                }
                onPressed: (mouse) => {
                    carModel.eulerRotation.x = 0
                    dragging = true;  // Start tracking movement
                    lastX = mouse.x
                    lastY = mouse.y
                }

                onReleased: (mouse) => {
                    dragging = false;  // Stop tracking movement
                }

                onPositionChanged: (event) => {
                    if(dragging) {
                        // carModel.eulerRotation = Qt.vector3d(0, 0, 0)
                        buttons3DLeftSidePanel.visible = false
                        var dx = event.x - lastX
                        var dy = event.y - lastY

                        rotationX -= dy * 0.5   // Adjust vertical rotation (pitch)
                        rotationY -= dx * 0.5   // Adjust horizontal rotation (yaw)

                        // Normalize rotationX to stay within -180 to 180
                        if (rotationX < -100) rotationX = -100
                        if (rotationX > 0) rotationX = 0

                        // Normalize rotationY to stay within -180 to 180
                        if (rotationY > 180) rotationY -= 360
                        if (rotationY < -180) rotationY += 360

                        cameraRoot.eulerRotation = Qt.vector3d(rotationX, rotationY, 0)  // Apply rotation
                        console.log("rotationX:", rotationX);
                        console.log("rotationY:", rotationY);
                        lastX = event.x
                        lastY = event.y
                    }
                }

                onWheel: (wheel) => {
                    let zoomFactor = 0.1
                    zoom -= wheel.angleDelta.y > 0 ? zoomFactor : -zoomFactor
                    zoom = Math.max(0.5, Math.min(3, zoom))  // Limit zoom range
                    cameraRoot.scale = Qt.vector3d(zoom, zoom, zoom)
                }
            }
        }
    }

    // Animations
    ParallelAnimation  {
        id: changeFrunkView
        onStopped: {
            carModel.openFrunkEvent.start();
        }
        NumberAnimation {
            target: carModel
            property: "eulerRotation.x"
            to: 0
            duration: 500
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: cameraRoot
            property: "eulerRotation.y"
            to: -50
            duration: 500
            easing.type: Easing.InOutQuad
        }
    }
    ParallelAnimation  {
        id: changeTrunkView
        onStopped: {
            carModel.openTrunkEvent.start();
        }
        NumberAnimation {
            target: carModel
            property: "eulerRotation.x"
            to: 0
            duration: 500
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: cameraRoot
            property: "eulerRotation.y"
            to: 130
            duration: 500
            easing.type: Easing.InOutQuad
        }
    }

    ParallelAnimation  {
        id: rotationCarView
        onStopped: {
            buttons3DLeftSidePanel.visible = true
        }
        NumberAnimation {
            target: cameraRoot
            property: "eulerRotation.x"
            to: 0
            duration: 800
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            id: changeCarDefaultRotation
            target: carModel
            property: "eulerRotation.x"
            to: 30
            duration: 500
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: cameraRoot
            property: "eulerRotation.y"
            to: 0
            duration: 800
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: cameraRoot
            property: "eulerRotation.z"
            to: 0
            duration: 800
            easing.type: Easing.InOutQuad
        }
    }
}

