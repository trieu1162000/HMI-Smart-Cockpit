import QtQuick 2.15
import QtQuick.Controls
import QtQuick3D 6.7
import QtQuick.Layouts 2.15
import Custom3D 1.0  // Import our C++ custom geometry

Rectangle {
    id: sideBar
    color: "#191818"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.leftMargin: 0
    anchors.topMargin: 0

    property real lastX: 0
    property real lastY: 0
    property real rotationX: 0
    property real rotationY: 0
    property real zoom: 2/3
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
                    text: "318" + " mi"
                    font.pixelSize: parent.height / 2
                    color: "gray"
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
            source: "/images/head_light_on_32.png"
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
        Rectangle {
            color: "transparent"
            anchors.fill: parent
            Image {
                id: homeViewIcon
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                height: sideBar.height / 40
                width: height
                source: "/images/home_white_32.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: mouseAreaHomeViewIcon
                    anchors.fill: homeViewIcon

                    onPressed: {
                        rotationCarView.start()
                    }
                }
                SequentialAnimation {
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
        }
        // Rectangle {
        //     color: "White"
        //     anchors.fill: parent
        // }
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
                eulerRotation: Qt.vector3d(rotationX, rotationY, 0)  // Rotation properties
                scale: Qt.vector3d(zoom, zoom, zoom)
                PerspectiveCamera {
                    id: camera
                    position: Qt.vector3d(0, carView3D.height / 270, carView3D.height / 54)
                    clipNear: 0.01
                    clipFar: 10000
                }
            }
            // PerspectiveCamera {
            //     id: sceneCamera
            //     position: Qt.vector3d(0, carView3D.height / 270, carView3D.height / 54)

            //     eulerRotation: Qt.vector3d(0, rotationX, 0)
            //     clipNear: 0.01
            //     clipFar: 10000
            //     Component.onCompleted: {
            //         // console.log("Parent height:", parent.parent.height);
            //     }
            // }

            DirectionalLight {
                eulerRotation.x: -30
                eulerRotation.y: 30
            }


            // MouseArea for Picking
            MouseArea {
                anchors.fill: parent
                onClicked: (mouse) => {
                    var result = carView3D.pick(mouse.x, mouse.y);
                    if (result.objectHit) {
                        var pickedObject = result.objectHit;
                        pickedObject.isClicked = !pickedObject.isClicked;
                        if (pickedObject.objectName === "buttonOpenFrunk") {
                            console.log("Open Frunk Button Clicked!");
                            if(pickedObject.isClicked)
                            {
                                buttons3DLeftSidePanel.visible = false
                                changeFrunkView.start();
                                carModel.openFrunkEvent.start();
                            }
                            else
                            {
                                // cameraRoot.eulerRotation = Qt.vector3d(0, 0, 0)
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
                                carModel.openTrunkEvent.start();
                            }
                            else
                               carModel.closeTrunkEvent.start();
                        }
                        else {
                            console.log("3D Button Clicked!");
                        }

                    }
                }
                onPressed: (mouse) => {
                    lastX = mouse.x
                    lastY = mouse.y
                }


                onPositionChanged: (event) => {
                    var dx = event.x - lastX
                    var dy = event.y - lastY

                    rotationX -= dy * 0.5   // Adjust vertical rotation (pitch)
                    rotationY -= dx * 0.5   // Adjust horizontal rotation (yaw)

                    cameraRoot.eulerRotation = Qt.vector3d(rotationX, rotationY, 0)  // Apply rotation
                    console.log("rotationX:", rotationX);
                    console.log("rotationY:", rotationY);
                    lastX = event.x
                    lastY = event.y
                }
                // onPositionChanged: (mouse) => {
                //     if (mouse.buttons & Qt.LeftButton) {
                //         let dx = mouse.x - lastX
                //         let dy = mouse.y - lastY

                //         rotationY += dx * 0.5
                //         rotationX += dy * 0.5

                //         lastX = mouse.x
                //         lastY = mouse.y
                //     }


                // }

                onWheel: (wheel) => {
                    let zoomFactor = 0.1
                    zoom -= wheel.angleDelta.y > 0 ? zoomFactor : -zoomFactor
                    zoom = Math.max(0.5, Math.min(3, zoom))  // Limit zoom range
                    cameraRoot.scale = Qt.vector3d(zoom, zoom, zoom)
                }
            }
        }
    }

    NumberAnimation {
        id: changeFrunkView
        target: cameraRoot
        property: "eulerRotation.y"
        to: -50
        duration: 500
        easing.type: Easing.InOutQuad
    }
    NumberAnimation {
        id: changeTrunkView
        target: cameraRoot
        property: "eulerRotation.y"
        to: 130
        duration: 500
        easing.type: Easing.InOutQuad
    }
}

