import QtQuick 2.15
import QtQuick.Controls
import QtQuick3D 6.7

Rectangle {
    id: sideBar
    color: "white"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.leftMargin: 0
    anchors.topMargin: 0

    property real lastX: 0
    property real lastY: 0
    property real rotationX: 0
    property real rotationY: 0
    property real zoom: 0.5

    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
                clearColor: "black"
                backgroundMode: SceneEnvironment.SkyBox
                antialiasingMode: SceneEnvironment.MSAA // Bật khử răng cưa
        }

        FullCar {
            id: carModel
            position: Qt.vector3d(0, 0, 0)
            scale: Qt.vector3d(zoom, zoom, zoom)
            eulerRotation: Qt.vector3d(rotationX, rotationY, 0)
        }

        PerspectiveCamera {
            position: Qt.vector3d(0, 0, 10)
            eulerRotation: Qt.vector3d(0, 0, 0)
            clipNear: 0.01
            clipFar: 10000
        }

        DirectionalLight {
            eulerRotation.x: -30
            eulerRotation.y: 30
        }

        MouseArea {
            anchors.fill: parent
            onPressed: (mouse) => {
                lastX = mouse.x
                lastY = mouse.y
            }

            onPositionChanged: (mouse) => {
                if (mouse.buttons & Qt.LeftButton) {
                    let dx = mouse.x - lastX
                    let dy = mouse.y - lastY

                    rotationY += dx * 0.5
                    rotationX += dy * 0.5

                    lastX = mouse.x
                    lastY = mouse.y
                }
            }

            onWheel: (wheel) => {
                let zoomFactor = 0.1
                zoom += wheel.angleDelta.y > 0 ? zoomFactor : -zoomFactor
                zoom = Math.max(0.2, Math.min(3, zoom))  // Limit zoom range
                carModel.scale = Qt.vector3d(zoom, zoom, zoom)
            }
        }
    }
}

// Rectangle {
//     id: sideBar
//     // width: dashboardHSC.width / 3.5
//     // height: dashboardHSC.height - bottomBar.height
//     color: "#000000"
//     anchors.left: parent.left
//     anchors.top: parent.top
//     anchors.leftMargin: 0
//     anchors.topMargin: 0

//     Image {
//         id: headLight
//         anchors.top: sideBar.top
//         anchors.right: sideBar.right
//         anchors.rightMargin: 10
//         height: parent.height / 18
//         source: "/images/lights_off.png"

//         fillMode: Image.PreserveAspectFit

//         MouseArea {
//             id: mouseAreaHeadLight
//             anchors.fill: headLight

//             onPressed: {
//                 lightController.setLightControl(!lightController.lightControl)
//             }
//         }
//         Connections {
//             target: lightController
//             function onLightControlChanged() {
//                 headLight.source = lightController.lightControl ? "/images/lights_on.png" : "/images/lights_off.png"
//             }
//         }
//     }

//     Text {
//         id: currentSpeed
//         width: sideBar.width
//         height: sideBar.height / 12
//         anchors.top: sideBar.top
//         anchors.topMargin: headLight.height
//         font.pixelSize: height
//         horizontalAlignment: Text.AlignHCenter
//         font.family: "Arial"
//         font.bold: true
//         color: "white"
//         text: qsTr("40")
//     }

//     Label {
//         id: unitLabel
//         width: sideBar.width
//         height: sideBar.height / 40
//         anchors.top: currentSpeed.bottom
//         anchors.topMargin: 3
//         color: "#858585"
//         text: qsTr("KM/H")
//         horizontalAlignment: Text.AlignHCenter
//         font.pointSize: height / 1.8
//         font.family: "Arial"
//         // font.bold: true
//     }

//     Image {
//         id: batteryIcon
//         height: sideBar.height / 30
//         width: sideBar.width / 10
//         y: unitLabel.y - 3
//         anchors.right: sideBar.right
//         source: "/images/full_battery.png"
//         fillMode: Image.PreserveAspectFit
//     }

//     Text {
//         id: currentBattery
//         width: sideBar.width
//         height: sideBar.height / 40
//         anchors.top: currentSpeed.bottom
//         anchors.topMargin: 3
//         anchors.right: batteryIcon.left
//         anchors.rightMargin: 0
//         color: "#858585"
//         text: "318" + " mi"
//         horizontalAlignment: Text.AlignRight
//         font.pointSize: height / 1.8
//         font.family: "Arial"
//         // font.bold: true
//     }

//     // The bold edge or bottom border
//     Rectangle {
//         id: bottomLine
//         width: parent.width
//         height: currentSpeed.height / 40 // Adjust height to make the line as bold as needed
//         color: "#858585" // Same color as the text or change to any color
//         anchors.top: unitLabel.bottom
//         anchors.topMargin: 2.5
//     }

//     Rectangle {
//         id: bottomCenterLine
//         width: parent.width / 15
//         height: currentSpeed.height / 12 // Adjust height to make the line as bold as needed
//         color: "#2c9f03" // Same color as the text or change to any color
//         anchors.horizontalCenter: parent.horizontalCenter
//         // anchors.verticalCenter: parent.verticalCenter
//         anchors.top: unitLabel.bottom
//         anchors.topMargin: 1
//         radius: 5
//     }

//     Rectangle {
//         width: parent.width / 10 // Width of the rectangle
//         height: parent.height / 13 // Height of the rectangle
//         color: "white" // Background color of the rectangle
//         border.color: "black" // Optional: border color
//         border.width: 1 // Optional: border width
//         // radius: 5            // Optional: corner radius for rounded edges
//         anchors.top: bottomLine.bottom
//         anchors.right: parent.right
//         Column {
//             // anchors.fill: parent // Make the column fill the rectangle
//             width: parent.width // Same width as the rectangle
//             // height: 60         // Fixed height for the column
//             anchors.top: parent.top
//             anchors.topMargin: 3
//             anchors.horizontalCenter: parent.horizontalCenter
//             anchors.verticalCenter: parent.verticalCenter // Center the column vertically
//             // First line of text
//             Text {
//                 text: "SPEED\nLIMIT"
//                 font.pixelSize: parent.width / 4 // Size of the first line of text
//                 horizontalAlignment: Text.AlignHCenter
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 color: "black" // Text color
//             }

//             // Second line of text
//             Text {
//                 text: "80"
//                 font.pixelSize: parent.width / 2 // Size of the second line of text
//                 horizontalAlignment: Text.AlignHCenter
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 color: "black" // Text color
//             }
//         }
//     }

//     Item {
//         id: speedItem
//         width: parent.width
//         height: parent.height / 10
//         anchors.top: bottomLine.bottom
//         anchors.topMargin: 5
//         // Property to store and control speed value
//         // property int speed: 30

//         Connections {
//             target: speedController
//             function onCarSpeedChanged() {
//                 // to do something
//             }
//         }

//         // Circle with the speed text inside
//         Rectangle {
//             id: speedCircle
//             width: parent.width / 8
//             height: width
//             radius: width / 2
//             color: "transparent" // Transparent to only show the border
//             border.color: "#858585" // Edge color
//             border.width: 3 // 5-pixel thick edge
//             anchors.horizontalCenter: parent.horizontalCenter
//             anchors.verticalCenter: parent.verticalCenter

//             // Text displaying the speed inside the circle
//             Text {
//                 id: speedText
//                 text: speedController.carSpeed
//                 font.pixelSize: parent.height / 1.7 // Adjust to fit text inside the circle
//                 anchors.centerIn: parent
//                 color: "#858585"
//                 font.bold: false
//             }
//         }

//         // Minus button on the left side of the circle
//         Rectangle {
//             id: minusButton
//             width: speedCircle.width / 2
//             height: width
//             radius: width / 2
//             color: "black"
//             anchors.right: speedCircle.left
//             anchors.rightMargin: 10
//             anchors.verticalCenter: speedCircle.verticalCenter
//             Text {
//                 text: "-"
//                 font.pixelSize: speedText.font.pixelSize
//                 anchors.centerIn: parent
//                 color: "#858585"
//                 font.bold: false
//             }
//             MouseArea {
//                 anchors.fill: parent
//                 onPressed: {
//                     speedController.increaseCarSpeed(-1)

//                 }
//             }

//         }

//         // Plus button on the right side of the circle
//         Rectangle {
//             id: plusButton
//             width: speedCircle.width / 2
//             height: width
//             radius: width / 2
//             color: "black"
//             anchors.left: speedCircle.right
//             anchors.leftMargin: 10
//             anchors.verticalCenter: speedCircle.verticalCenter
//             Text {
//                 text: "+"
//                 font.pixelSize: 30
//                 anchors.centerIn: parent
//                 color: "#858585"
//                 font.bold: false
//             }
//             MouseArea {
//                 anchors.fill: parent
//                 onPressed: {
//                     speedController.increaseCarSpeed(1)

//                 }
//             }
//         }
//     }

//     Image {
//         id: xanhsm_car
//         anchors.top: speedItem.bottom
//         anchors.topMargin: parent.height / 5
//         width: parent.width / 1.2
//         anchors.horizontalCenter: parent.horizontalCenter
//         source: "/images/xanhsm_car.png"
//         fillMode: Image.PreserveAspectFit
//     }
// }
