import QtQuick
import QtQuick3D
import Custom3D 1.0  // Import our C++ custom geometry

// 3D Button (Clickable)
Node {
    id: buttons3D
    property var trunkMesh  // ✅ Use `var` to store a reference
    property var frunkMesh  // ✅ Use `var` instead of `alias`
    property alias imageOverlayLockIconRoofSource: imageOverlayLockIconRoof.source

    Model {
        id: frunkMeshModelRef  // Internal placeholder model
    }

    Model {
        id: trunkMeshModelRef  // Internal placeholder model
    }

    Model {
        id: buttonOpenFrunk
        objectName: "buttonOpenFrunk"
        pickable: true

        property bool isClicked: false

        position: Qt.vector3d(
            lineOpenFrunk.position.x - 0.18,
            lineOpenFrunk.position.y + lineGeometry.length - 0.15,
            lineOpenFrunk.position.z - 0.0005
        )
        scale: Qt.vector3d(0.005, 0.003, 1)  // Adjust size

        source: "#Rectangle"  // Simple plane for text background

        materials: PrincipledMaterial {
            id: textMaterial
            alphaMode: PrincipledMaterial.Blend  // Enable transparency blending
            baseColorMap: Texture {
                sourceItem: textOverlayOpenFrunk  // Apply text as a texture
            }
        }
    }

    // Text rendered as a texture
    Rectangle {
        id: textOverlayOpenFrunk
        width: 60
        height: 30
        color: "transparent"
        visible: false
        Column {
            anchors.centerIn: parent
            spacing: 0

            Text {
                text: buttonOpenFrunk.isClicked ? "Close" : "Open"
                font.pixelSize: 13
                color: "#8a8180"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                renderType: Text.NativeRendering
            }

            Text {
                text: "Frunk"
                font.pixelSize: 15
                color: "white"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                renderType: Text.NativeRendering
            }
        }
    }

    Model {
        id: lineOpenFrunk
        geometry: LineGeometry {
            id: lineGeometry
            property real varLength: 1.2
            property real dynamicLengthOpenFrunk: varLength + 1.2 * (varLength - varLength/2)*(frunkMesh.eulerRotation.x / 40)
            length: dynamicLengthOpenFrunk
        }
        // eulerRotation: Qt.vector3d(0, 90, 0)  // 90° around X-axis

        property vector3d basePosition: Qt.vector3d( -1.464339256286621, 0.7760639190673828, 1.2156171798706055)
        property vector3d endPosition: Qt.vector3d(-1.4131255149841309, 1.327085018157959, 1.1232330799102783)
        property vector3d worldPosition: position

        // Interpolated position based on eulerRotation.x
        position: Qt.vector3d(
            basePosition.x - (frunkMesh.eulerRotation.x / 40) * (endPosition.x - basePosition.x),
            basePosition.y - (frunkMesh.eulerRotation.x / 40) * (endPosition.y - basePosition.y),
            basePosition.z - (frunkMesh.eulerRotation.x / 40) * (endPosition.z - basePosition.z)
        )
        materials: DefaultMaterial {
            lighting: DefaultMaterial.NoLighting
            diffuseColor: "#8a8180"
        }
    }


    // Open Trunk 3D Button (Clickable)
    Model {
        id: buttonOpenTrunk
        objectName: "buttonOpenTrunk"
        pickable: true

        property bool isClicked: false

        position: Qt.vector3d(
            lineOpenTrunk.position.x - 0.25,
            lineOpenTrunk.position.y + lineGeometryOpenTrunk.length - 0.18,
            lineOpenTrunk.position.z - 0.001
        )
        scale: Qt.vector3d(0.008, 0.005, 1)  // Adjust size

        source: "#Rectangle"  // Simple plane for text background

        materials: PrincipledMaterial {
            id: textMaterialOpenTrunk
            cullMode: PrincipledMaterial.NoCulling
            // alphaMode: PrincipledMaterial.Opaque
            baseColorMap: Texture {
                sourceItem: textOverlayOpenTrunk  // Apply text as a texture
            }
            alphaMode: PrincipledMaterial.Blend  // Enable transparency blending
        }
    }

    // Text rendered as a texture
    Rectangle {
        id: textOverlayOpenTrunk
        width: 320
        height: 160
        color: "transparent"
        visible: false
        Column {
            anchors.centerIn: parent
            spacing: 0

            Text {
                text: buttonOpenTrunk.isClicked ? "Close" : "Open"
                font.pixelSize: 60
                color: "#8a8180"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                renderType: Text.NativeRendering
            }

            Text {
                text: "Trunk"
                font.pixelSize: 65
                color: "white"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                renderType: Text.NativeRendering
            }
        }
    }

    Model {
        id: lineOpenTrunk
        geometry: LineGeometry {
            id: lineGeometryOpenTrunk
            property real varLength: 1.4
            property real dynamicLengthOpenTrunk: varLength - (varLength - varLength/2)*(trunkMesh.eulerRotation.x / 70)
            length: dynamicLengthOpenTrunk
        }

        property vector3d basePosition: Qt.vector3d(1.6168423891067505, 0.9714512825012207, -1.345872163772583)
        property vector3d endPosition: Qt.vector3d(1.5874731540679932, 1.334545612335205, -1.3292546272277832)

        // Interpolated position based on eulerRotation.x
        position: Qt.vector3d(
            basePosition.x + (trunkMesh.eulerRotation.x / 70) * (endPosition.x - basePosition.x),
            basePosition.y + (trunkMesh.eulerRotation.x / 70) * (endPosition.y - basePosition.y),
            basePosition.z + (trunkMesh.eulerRotation.x / 70) * (endPosition.z - basePosition.z)
        )
        materials: DefaultMaterial {
            lighting: DefaultMaterial.NoLighting
            diffuseColor: "#8a8180"
        }
    }

    // Text rendered as a texture
    Image {
        id: imageOverlayLockIconRoof
        visible: false
        width: 60
        height: 30
        source: lineLockRoof.isClicked?"/images/unlock_32.png" : "/images/lock_32.png"
        fillMode: Image.PreserveAspectFit

    }

    // Lock Icon Roof (Clickable)
    Model {
        id: lockIconRoof
        objectName: "lockIconRoof"
        pickable: true

        property bool isClicked: false
        position: Qt.vector3d(
            lineLockRoof.position.x,
            lineLockRoof.position.y + lineGeometryLockRoof.length + 0.2,
            lineLockRoof.position.z
        )
        scale: Qt.vector3d(0.0015, 0.0015, 0.0015)  // Adjust size

        source: "#Rectangle"  // Simple plane for text background

        materials: PrincipledMaterial {
            id: textMaterialLockIconRoof
            alphaMode: PrincipledMaterial.Blend  // Enable transparency blending
            baseColorMap: Texture {
                sourceItem: imageOverlayLockIconRoof  // Apply text as a texture
            }
        }
    }

    Model {
        id: lineLockRoof
        geometry: LineGeometry {
            id: lineGeometryLockRoof
            property real lineLockRoofLength: 0.6
            length: lineLockRoofLength
        }
        // Interpolated position based on eulerRotation.x
        position: Qt.vector3d(0.1779482364654541, 1.3987112045288086, -0.14315199851989746)
        materials: DefaultMaterial {
            lighting: DefaultMaterial.NoLighting
            diffuseColor: "#8a8180"
        }
    }
}
