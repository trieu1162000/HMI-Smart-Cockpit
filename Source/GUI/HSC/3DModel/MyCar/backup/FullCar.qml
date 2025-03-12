import QtQuick
import QtQuick3D

import QtQuick.Timeline
import Custom3D 1.0  // Import our C++ custom geometry
import QtQuick.Controls 2.15
// import QtQuick3D.Helpers 2.15
// import "/QML/GlobalVar.qml" as Global

Node {
    id: myNode
    Node {
        id: node
        eulerRotation: Qt.vector3d(0, -50, 0)

        // Resources
        property alias lineFrunkPosition: lineOpenFrunk.position
        property alias lineGeometryLength: lineGeometry.length

        property url textureData: "/3DModel/myCar/maps/textureData.png"
        Texture {
            id: _0_texture
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: node.textureData
        }
        PrincipledMaterial {
            id: polo17seats2_002_material
            objectName: "polo17seats2.002"
            baseColor: "#ff1c1c1c"
            roughness: 0.975674033164978
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17gabarit_002_material
            objectName: "polo17gabarit.002"
            baseColor: "#ff1f0001"
            roughness: 0.9942693710327148
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: tire_01a_002_material
            objectName: "tire_01a.002"
            baseColor: "#ff070707"
            roughness: 0.9941529035568237
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17wheel_002_material
            objectName: "polo17wheel.002"
            baseColor: "#ff3f3c3c"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17lightglass_R_002_material
            objectName: "polo17lightglass_R.002"
            baseColor: "#80ffffff"
            baseColorMap: _0_texture
            roughness: 0.25
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        PrincipledMaterial {
            id: polo17lightR_002_material
            objectName: "polo17lightR.002"
            baseColor: "#ffcc0000"
            roughness: 0.9617149829864502
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: etk800_002_material
            objectName: "etk800.002"
            baseColor: "#ff969696"
            roughness: 0.8685191869735718
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17kover_002_material
            objectName: "polo17kover.002"
            baseColor: "#ff050505"
            roughness: 0.9960134625434875
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17black_002_material
            objectName: "polo17black.002"
            baseColor: "#ff000000"
            roughness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17chrome_002_material
            objectName: "polo17chrome.002"
            baseColor: "#ff3d3d3d"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17gauges2_002_material
            objectName: "polo17gauges2.002"
            baseColor: "#ffcccccc"
            roughness: 0.8211145401000977
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17salon2_002_material
            objectName: "polo17salon2.002"
            baseColor: "#ff070707"
            roughness: 0.993802011013031
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17_glass_int_002_material
            objectName: "polo17_glass_int.002"
            baseColor: "#40090909"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        PrincipledMaterial {
            id: polo17plastik_002_material
            objectName: "polo17plastik.002"
            baseColor: "#ff080808"
            roughness: 0.9930642247200012
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17body_002_material
            objectName: "polo17body.002"
            baseColor: "#ffffd4e0"
            roughness: 0.25
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: sunburst_002_material
            objectName: "sunburst.002"
            baseColor: "#ff060606"
            roughness: 0.9948192834854126
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17light_002_material
            objectName: "polo17light.002"
            baseColor: "#ff626060"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17stop_002_material
            objectName: "polo17stop.002"
            baseColor: "#ffcc0001"
            roughness: 0.9618708491325378
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: polo17_red_002_material
            objectName: "polo17_red.002"
            baseColor: "#ffcc0002"
            roughness: 0.961843729019165
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: sunburst_engine_002_material
            objectName: "sunburst_engine.002"
            baseColor: "#ffa5a5a5"
            roughness: 0.855402410030365
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        // Nodes:
        Node {
            id: sketchfab_model
            objectName: "Sketchfab_model"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(1, 1, 1)
            Node {
                id: node2017_Volkswagen_Polo_Sedan_fbx
                objectName: "2017 Volkswagen Polo Sedan.fbx"
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                scale: Qt.vector3d(0.01, 0.01, 0.01)
                Node {
                    id: rootNode
                    objectName: "RootNode"
                    Node {
                        id: polo17_akpp
                        objectName: "polo17_akpp"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_akpp_polo17black_0
                            objectName: "polo17_akpp_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_akpp_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_akpp_polo17chrome_0
                            objectName: "polo17_akpp_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_akpp_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                        Model {
                            id: polo17_akpp_polo17gauges2_0
                            objectName: "polo17_akpp_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_akpp_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_akpp_polo17salon2_0
                            objectName: "polo17_akpp_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_akpp_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_backlight_int
                        objectName: "polo17_backlight_int"
                        position: Qt.vector3d(0, -0.108671, 0)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_backlight_int_polo17_glass_int_0
                            objectName: "polo17_backlight_int_polo17_glass_int_0"
                            source: "/3DModel/myCar/meshes/polo17_backlight_int_polo17_glass_int_0_002_mesh.mesh"
                            materials: [
                                polo17_glass_int_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_body
                        objectName: "polo17_body"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_body_polo17black_0
                            objectName: "polo17_body_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_body_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_body_polo17body_0
                            objectName: "polo17_body_polo17body_0"
                            position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                            source: "/3DModel/myCar/meshes/polo17_body_polo17body_0_002_mesh.mesh"
                            materials: [
                                polo17body_002_material
                            ]
                        }
                        Model {
                            id: polo17_body_polo17chrome_0
                            objectName: "polo17_body_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_body_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_body_F
                        objectName: "polo17_body_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_body_F_sunburst_0
                            objectName: "polo17_body_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_body_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_brace
                        objectName: "polo17_brace"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_brace_sunburst_0
                            objectName: "polo17_brace_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_brace_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_brakepedal
                        objectName: "polo17_brakepedal"
                        position: Qt.vector3d(30.9293, 52.3947, 88.1255)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_brakepedal_polo17black_0
                            objectName: "polo17_brakepedal_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_brakepedal_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_bumper_F
                        objectName: "polo17_bumper_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_bumper_F_polo17_glass_0
                            objectName: "polo17_bumper_F_polo17_glass_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_F_polo17_glass_0_002_mesh.mesh"
                            materials: [
                                polo17_glass_int_002_material
                            ]
                        }
                        Model {
                            id: polo17_bumper_F_polo17black_0
                            objectName: "polo17_bumper_F_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_F_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_bumper_F_polo17body_0
                            objectName: "polo17_bumper_F_polo17body_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_F_polo17body_0_002_mesh.mesh"
                            materials: [
                                polo17body_002_material
                            ]
                        }
                        Model {
                            id: polo17_bumper_F_polo17chrome_0
                            objectName: "polo17_bumper_F_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_F_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_bumper_R
                        objectName: "polo17_bumper_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_bumper_R_polo17body_0
                            objectName: "polo17_bumper_R_polo17body_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_R_polo17body_0_002_mesh.mesh"
                            materials: [
                                polo17body_002_material
                            ]
                        }
                        Model {
                            id: polo17_bumper_R_polo17chrome_0
                            objectName: "polo17_bumper_R_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_R_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                        Model {
                            id: polo17_bumper_R_polo17lightR_0
                            objectName: "polo17_bumper_R_polo17lightR_0"
                            source: "/3DModel/myCar/meshes/polo17_bumper_R_polo17lightR_0_002_mesh.mesh"
                            materials: [
                                polo17lightR_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_bumperbar_F
                        objectName: "polo17_bumperbar_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_bumperbar_F_etk800_0
                            objectName: "polo17_bumperbar_F_etk800_0"
                            source: "/3DModel/myCar/meshes/polo17_bumperbar_F_etk800_0_002_mesh.mesh"
                            materials: [
                                etk800_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_clutchpedal
                        objectName: "polo17_clutchpedal"
                        position: Qt.vector3d(46.8648, 52.3947, 88.1255)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_clutchpedal_polo17black_0
                            objectName: "polo17_clutchpedal_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_clutchpedal_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_coilover_R
                        objectName: "polo17_coilover_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_coilover_R_sunburst_0
                            objectName: "polo17_coilover_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_coilover_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash
                        objectName: "polo17_dash"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash_polo17black_0
                            objectName: "polo17_dash_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash_polo17gauges2_0
                            objectName: "polo17_dash_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash_polo17pribhazard_0
                            objectName: "polo17_dash_polo17pribhazard_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17pribhazard_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash_polo17pribpov_L_0
                            objectName: "polo17_dash_polo17pribpov_L_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17pribpov_L_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash_polo17pribpov_R_0
                            objectName: "polo17_dash_polo17pribpov_R_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17pribpov_R_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash_polo17salon2_0
                            objectName: "polo17_dash_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_dash_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash11
                        objectName: "polo17_dash11"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash11_polo17salon_0
                            objectName: "polo17_dash11_polo17salon_0"
                            source: "/3DModel/myCar/meshes/polo17_dash11_polo17salon_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash2
                        objectName: "polo17_dash2"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash2_polo17sgray_0
                            objectName: "polo17_dash2_polo17sgray_0"
                            source: "/3DModel/myCar/meshes/polo17_dash2_polo17sgray_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash3
                        objectName: "polo17_dash3"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash3_polo17black_0
                            objectName: "polo17_dash3_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_dash3_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash4
                        objectName: "polo17_dash4"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash4_polo17black_0
                            objectName: "polo17_dash4_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_dash4_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash5
                        objectName: "polo17_dash5"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash5_polo17black_0
                            objectName: "polo17_dash5_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_dash5_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash5_polo17kover_0
                            objectName: "polo17_dash5_polo17kover_0"
                            position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                            source: "/3DModel/myCar/meshes/polo17_dash5_polo17kover_0_002_mesh.mesh"
                            materials: [
                                polo17kover_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash5_polo17plastik_0
                            objectName: "polo17_dash5_polo17plastik_0"
                            source: "/3DModel/myCar/meshes/polo17_dash5_polo17plastik_0_002_mesh.mesh"
                            materials: [
                                polo17plastik_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash5_polo17roof_0
                            objectName: "polo17_dash5_polo17roof_0"
                            source: "/3DModel/myCar/meshes/polo17_dash5_polo17roof_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_dash5_polo17stop_0
                            objectName: "polo17_dash5_polo17stop_0"
                            source: "/3DModel/myCar/meshes/polo17_dash5_polo17stop_0_002_mesh.mesh"
                            materials: [
                                polo17stop_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash6
                        objectName: "polo17_dash6"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash6_polo17chrome_0
                            objectName: "polo17_dash6_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_dash6_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash7
                        objectName: "polo17_dash7"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash7_mirror_0
                            objectName: "polo17_dash7_mirror_0"
                            source: "/3DModel/myCar/meshes/polo17_dash7_mirror_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash8
                        objectName: "polo17_dash8"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash8_polo17gauges_0
                            objectName: "polo17_dash8_polo17gauges_0"
                            source: "/3DModel/myCar/meshes/polo17_dash8_polo17gauges_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_dash9
                        objectName: "polo17_dash9"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_dash9_polo17_red_0
                            objectName: "polo17_dash9_polo17_red_0"
                            source: "/3DModel/myCar/meshes/polo17_dash9_polo17_red_0_002_mesh.mesh"
                            materials: [
                                polo17_red_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_decals_gau
                        objectName: "polo17_decals_gau"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_decals_gau_polo17pribchek_0
                            objectName: "polo17_decals_gau_polo17pribchek_0"
                            source: "/3DModel/myCar/meshes/polo17_decals_gau_polo17pribchek_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_decals_gau_polo17pribfuel_0
                            objectName: "polo17_decals_gau_polo17pribfuel_0"
                            source: "/3DModel/myCar/meshes/polo17_decals_gau_polo17pribfuel_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_decals_gau_polo17pribhigh_0
                            objectName: "polo17_decals_gau_polo17pribhigh_0"
                            source: "/3DModel/myCar/meshes/polo17_decals_gau_polo17pribhigh_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_decals_gau_polo17priblow_0
                            objectName: "polo17_decals_gau_polo17priblow_0"
                            source: "/3DModel/myCar/meshes/polo17_decals_gau_polo17priblow_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_decals_gau_polo17pribparkin_0
                            objectName: "polo17_decals_gau_polo17pribparkin_0"
                            source: "/3DModel/myCar/meshes/polo17_decals_gau_polo17pribparkin_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_door_FL
                        objectName: "polo17_door_FL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_door_FL_polo17body_0
                            objectName: "polo17_door_FL_polo17body_0"
                            position: Qt.vector3d(0.698161, -0.883516, 0.662482)
                            source: "/3DModel/myCar/meshes/polo17_door_FL_polo17body_0_mesh.mesh"
                            materials: [
                                polo17body_002_material,
                                polo17black_002_material,
                                polo17chrome_002_material,
                                polo17_glass_int_002_material,
                                polo17gauges2_002_material,
                                polo17plastik_002_material,
                                polo17gauges2_002_material,
                                sunburst_002_material,
                                polo17gauges2_002_material,
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_door_FR
                        objectName: "polo17_door_FR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_door_FR_polo17black_0
                            objectName: "polo17_door_FR_polo17black_0"
                            position: Qt.vector3d(-0.712947, -0.872038, 0.39072)
                            source: "/3DModel/myCar/meshes/polo17_door_FR_polo17black_0_mesh.mesh"
                            materials: [
                                polo17black_002_material,
                                polo17body_002_material,
                                polo17chrome_002_material,
                                polo17_glass_int_002_material,
                                polo17gauges2_002_material,
                                polo17plastik_002_material,
                                polo17gauges2_002_material,
                                sunburst_002_material,
                                polo17gauges2_002_material,
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_door_RL
                        objectName: "polo17_door_RL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_door_RR
                        objectName: "polo17_door_RR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorglass_FL
                        objectName: "polo17_doorglass_FL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorglass_FR
                        objectName: "polo17_doorglass_FR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorglass_RL
                        objectName: "polo17_doorglass_RL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorglass_RR
                        objectName: "polo17_doorglass_RR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_doorglass_RR_polo17_glass_0
                            objectName: "polo17_doorglass_RR_polo17_glass_0"
                            position: Qt.vector3d(-0.740903, 0.132373, 0.504491)
                            source: "/3DModel/myCar/meshes/polo17_doorglass_RR_polo17_glass_0_mesh.mesh"
                            materials: [
                                polo17_glass_int_002_material,
                                polo17black_002_material,
                                polo17body_002_material,
                                polo17chrome_002_material,
                                polo17gauges2_002_material,
                                polo17plastik_002_material,
                                polo17gauges2_002_material,
                                sunburst_002_material,
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_doorpanel_FL
                        objectName: "polo17_doorpanel_FL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorpanel_FR
                        objectName: "polo17_doorpanel_FR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_doorpanel_RL
                        objectName: "polo17_doorpanel_RL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_doorpanel_RL_polo17plastik_0
                            objectName: "polo17_doorpanel_RL_polo17plastik_0"
                            position: Qt.vector3d(0.770578, 0.15671, 0.559991)
                            source: "/3DModel/myCar/meshes/polo17_doorpanel_RL_polo17plastik_0_mesh.mesh"
                            materials: [
                                polo17plastik_002_material,
                                polo17black_002_material,
                                polo17body_002_material,
                                polo17chrome_002_material,
                                polo17_glass_int_002_material,
                                polo17gauges2_002_material,
                                polo17gauges2_002_material,
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_doorpanel_RR
                        objectName: "polo17_doorpanel_RR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_engbaycrap
                        objectName: "polo17_engbaycrap"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_engbaycrap_sunburst_0
                            objectName: "polo17_engbaycrap_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_engbaycrap_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_engine
                        objectName: "polo17_engine"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_engine_sunburst_engine_0
                            objectName: "polo17_engine_sunburst_engine_0"
                            source: "/3DModel/myCar/meshes/polo17_engine_sunburst_engine_0_002_mesh.mesh"
                            materials: [
                                sunburst_engine_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_exhaust
                        objectName: "polo17_exhaust"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_exhaust_polo17chrome_0
                            objectName: "polo17_exhaust_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_exhaust_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                        Model {
                            id: polo17_exhaust_sunburst_0
                            objectName: "polo17_exhaust_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_exhaust_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_fender_L
                        objectName: "polo17_fender_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_fender_L_polo17black_0
                            objectName: "polo17_fender_L_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_L_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_fender_L_polo17body_0
                            objectName: "polo17_fender_L_polo17body_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_L_polo17body_0_002_mesh.mesh"
                            materials: [
                                polo17body_002_material
                            ]
                        }
                        Model {
                            id: polo17_fender_L_polo17chrome_0
                            objectName: "polo17_fender_L_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_L_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_fender_R
                        objectName: "polo17_fender_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_fender_R_polo17black_0
                            objectName: "polo17_fender_R_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_R_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_fender_R_polo17body_0
                            objectName: "polo17_fender_R_polo17body_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_R_polo17body_0_002_mesh.mesh"
                            materials: [
                                polo17body_002_material
                            ]
                        }
                        Model {
                            id: polo17_fender_R_polo17chrome_0
                            objectName: "polo17_fender_R_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_fender_R_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_foglights
                        objectName: "polo17_foglights"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_foglights_polo17fog_0
                            objectName: "polo17_foglights_polo17fog_0"
                            source: "/3DModel/myCar/meshes/polo17_foglights_polo17fog_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_fueltank
                        objectName: "polo17_fueltank"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_fueltank_sunburst_0
                            objectName: "polo17_fueltank_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_fueltank_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_gaspedal
                        objectName: "polo17_gaspedal"
                        position: Qt.vector3d(19.9044, 52.3947, 88.1255)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_gaspedal_polo17black_0
                            objectName: "polo17_gaspedal_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_gaspedal_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_gauges21
                        objectName: "polo17_gauges21"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_gauges21_polo17clock_0
                            objectName: "polo17_gauges21_polo17clock_0"
                            source: "/3DModel/myCar/meshes/polo17_gauges21_polo17clock_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_gauges21_polo17gauges_0
                            objectName: "polo17_gauges21_polo17gauges_0"
                            source: "/3DModel/myCar/meshes/polo17_gauges21_polo17gauges_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_gaugesss
                        objectName: "polo17_gaugesss"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_gaugesss_polo17gauges2_0
                            objectName: "polo17_gaugesss_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_gaugesss_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_grille
                        objectName: "polo17_grille"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_grille_polo17black_0
                            objectName: "polo17_grille_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_grille_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_grille_polo17chrome_0
                            objectName: "polo17_grille_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_grille_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_halfshaft_F
                        objectName: "polo17_halfshaft_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_halfshaft_F_sunburst_0
                            objectName: "polo17_halfshaft_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_halfshaft_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_headlight_L
                        objectName: "polo17_headlight_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_headlight_L_polo17head_0
                            objectName: "polo17_headlight_L_polo17head_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_L_polo17head_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_L_polo17light_0
                            objectName: "polo17_headlight_L_polo17light_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_L_polo17light_0_002_mesh.mesh"
                            materials: [
                                polo17light_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_L_polo17long_0
                            objectName: "polo17_headlight_L_polo17long_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_L_polo17long_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_L_polo17pov_L_0
                            objectName: "polo17_headlight_L_polo17pov_L_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_L_polo17pov_L_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_L_polo17run_0
                            objectName: "polo17_headlight_L_polo17run_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_L_polo17run_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_headlight_R
                        objectName: "polo17_headlight_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_headlight_R_polo17head_0
                            objectName: "polo17_headlight_R_polo17head_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_R_polo17head_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_R_polo17light_0
                            objectName: "polo17_headlight_R_polo17light_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_R_polo17light_0_002_mesh.mesh"
                            materials: [
                                polo17light_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_R_polo17long_0
                            objectName: "polo17_headlight_R_polo17long_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_R_polo17long_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_R_polo17pov_R_0
                            objectName: "polo17_headlight_R_polo17pov_R_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_R_polo17pov_R_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_headlight_R_polo17run_0
                            objectName: "polo17_headlight_R_polo17run_0"
                            source: "/3DModel/myCar/meshes/polo17_headlight_R_polo17run_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_hood
                        objectName: "polo17_hood"
                        position: Qt.vector3d(-0.495744, 0.12446, 0.431092)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)

                        Model {
                            id: polo17_hood_polo17black_0
                            objectName: "polo17_hood_polo17black_0"
                            position: Qt.vector3d(0.0090227, -1.09553, 0.953161)
                            source: "/3DModel/myCar/meshes/polo17_hood_polo17black_0_mesh.mesh"
                            materials: [
                                polo17black_002_material,
                                polo17chrome_002_material,
                                polo17body_002_material
                            ]
                        }
                        // 🔹 Dynamic Line on the Hood
                        Model {
                            id: lineOpenFrunk
                            geometry: LineGeometry {
                                id: lineGeometry
                                property real dynamicLength: 2.0 + (polo17_hood_polo17black_0.eulerRotation.x / 40)
                                length: dynamicLength
                            }
                            property vector3d basePosition: Qt.vector3d(-0.0039, -1.8088, 0.8128)
                            property vector3d endPosition: Qt.vector3d(-0.0084, -1.7063, 1.2810)
                            property vector3d worldPosition: position

                            // Interpolated position based on eulerRotation.x
                            position: Qt.vector3d(
                                basePosition.x - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.x - basePosition.x),
                                basePosition.y - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.y - basePosition.y),
                                basePosition.z - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.z - basePosition.z)
                            )

                            materials: DefaultMaterial {
                                lighting: DefaultMaterial.NoLighting
                                diffuseColor: "#8a8180"
                            }
                            // 🔹 Print position whenever it changes
                            onPositionChanged: {
                                console.log("lineOpenFrunk Position:", position);
                            }
                        }
                        // Node {
                        //     id: polo17_hood_button
                        //     objectName: "polo17_hood_button"

                        //     // 3D Button (Clickable)
                        //     Model {
                        //         id: button3D
                        //         objectName: "Button3D"
                        //         source: "#Rectangle"
                        //         pickable: true  // Enable picking
                        //         property bool isClicked: false

                        //         eulerRotation: Qt.vector3d(0, 90, 0)  // 90° around X-axis

                        //         position: Qt.vector3d(
                        //             lineOpenFrunk.position.x,
                        //             lineOpenFrunk.position.y,
                        //             lineOpenFrunk.position.z + lineGeometry.length + 0.05  // Slight offset to avoid overlap
                        //         )
                        //         scale: Qt.vector3d(0.05, 0.05, 0.05)  // Set size
                        //         materials: DefaultMaterial {
                        //             diffuseColor: button3D.isClicked ? "#41cd52" : "red"
                        //         }
                        //     }
                        // }
                    }

                    // Node {
                    //     id: polo17_hood_button
                    //     objectName: "polo17_hood_button"
                    //     position: Qt.vector3d(-0.495744, 0.12446, 0.431092)
                    //     rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    //     scale: Qt.vector3d(100, 100, 100)

                    //     // 🔹 Dynamic Line on the Hood
                    //     Model {
                    //         id: lineOpenFrunk
                    //         geometry: LineGeometry {
                    //             id: lineGeometry
                    //             property real dynamicLength: 2.0 + (polo17_hood_polo17black_0.eulerRotation.x / 40)
                    //             length: dynamicLength
                    //         }
                    //         property vector3d basePosition: Qt.vector3d(-0.0039, -1.8088, 0.8128)
                    //         property vector3d endPosition: Qt.vector3d(-0.0084, -1.7063, 1.2810)
                    //         property vector3d worldPosition: position

                    //         // Interpolated position based on eulerRotation.x
                    //         position: Qt.vector3d(
                    //             basePosition.x - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.x - basePosition.x),
                    //             basePosition.y - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.y - basePosition.y),
                    //             basePosition.z - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.z - basePosition.z)
                    //         )

                    //         materials: DefaultMaterial {
                    //             lighting: DefaultMaterial.NoLighting
                    //             diffuseColor: "#8a8180"
                    //         }
                    //     }
                    //     // 3D Button (Clickable)
                    //     Model {
                    //         id: button3D
                    //         objectName: "Button3D"
                    //         source: "#Rectangle"
                    //         pickable: true  // Enable picking
                    //         property bool isClicked: false
                    //         // Rotate the button to make it vertical
                    //         property real angleY: -50
                    //         property real radY: angleY * Math.PI / 180  // Convert degrees to radians
                    //         // eulerRotation: Qt.vector3d(90, 0, 0)  // 90° around X-axis
                    //         // Create quaternion for 50° rotation around Y-axis
                    //         rotation: Qt.quaternion(
                    //             Math.sin(radY / 2),  // w
                    //             0,                   // x
                    //             0,                    // z
                    //             Math.cos(radY / 2),  // y
                    //         )
                    //         position: Qt.vector3d(
                    //             lineOpenFrunk.position.x,
                    //             lineOpenFrunk.position.y,
                    //             lineOpenFrunk.position.z + lineGeometry.length + 0.05  // Slight offset to avoid overlap
                    //         )
                    //         scale: Qt.vector3d(0.05, 0.05, 0.05)  // Set size
                    //         materials: DefaultMaterial {
                    //             diffuseColor: button3D.isClicked ? "#41cd52" : "red"
                    //         }
                    //     }
                    // }

                        // Model {
                        //     id: my3DButton
                        //     source: "#Rectangle"  // The 3D shape of the button
                        //     pickable: true  // Enable interaction
                        //     position: Qt.vector3d(
                        //         lineOpenFrunk.position.x,
                        //         lineOpenFrunk.position.y,
                        //         lineOpenFrunk.position.z + lineGeometry.length + 0.05  // Slight offset to avoid overlap
                        //     )
                        //     scale: Qt.vector3d(0.01, 0.01, 0.01)  // Adjust button size

                        //     // Rotate the button to make it vertical
                        //     eulerRotation: Qt.vector3d(90, 0, 0)  // 90° around X-axis

                        //     materials: DefaultMaterial {
                        //         emissiveFactor: Qt.vector3d(1, 1, 1)  // Makes it glow slightly
                        //         emissiveMap: diffuseMap  // Display the 2D scene on the 3D button
                        //         diffuseMap: Texture {
                        //             sourceItem: Rectangle {  // The 2D scene for the button
                        //                 width: 20
                        //                 height: 10
                        //                 radius: 10
                        //                 color: "beige"

                        //                 // 🔹 Debugging: Ensure clicks are detected
                        //                 MouseArea {
                        //                     anchors.fill: parent
                        //                     onClicked: {
                        //                         console.log("3D Button Clicked!")
                        //                     }
                        //                 }

                        //                 Text {
                        //                     text: "Press Me"
                        //                     font.pixelSize: 2
                        //                     anchors.centerIn: parent
                        //                 }
                        //             }
                        //         }
                        //     }
                        // }
                    Node {
                        id: polo17_hub_F
                        objectName: "polo17_hub_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_hub_F_sunburst_0
                            objectName: "polo17_hub_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_hub_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_hub_R
                        objectName: "polo17_hub_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_hub_R_sunburst_0
                            objectName: "polo17_hub_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_hub_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_intake_NA
                        objectName: "polo17_intake_NA"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_intake_NA_sunburst_engine_0
                            objectName: "polo17_intake_NA_sunburst_engine_0"
                            source: "/3DModel/myCar/meshes/polo17_intake_NA_sunburst_engine_0_002_mesh.mesh"
                            materials: [
                                sunburst_engine_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_lowerarm_F
                        objectName: "polo17_lowerarm_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_lowerarm_F_sunburst_0
                            objectName: "polo17_lowerarm_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_lowerarm_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_lowerarm_R
                        objectName: "polo17_lowerarm_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_lowerarm_R_sunburst_0
                            objectName: "polo17_lowerarm_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_lowerarm_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_mirror_L
                        objectName: "polo17_mirror_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_mirror_R
                        objectName: "polo17_mirror_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_mirrorsignal_L
                        objectName: "polo17_mirrorsignal_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_mirrorsignal_R
                        objectName: "polo17_mirrorsignal_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                    }
                    Node {
                        id: polo17_needle_speedo
                        objectName: "polo17_needle_speedo"
                        position: Qt.vector3d(25.392, 86.5774, 73.333)
                        rotation: Qt.quaternion(0.804337, -0.594174, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_needle_speedo_polo17black_0
                            objectName: "polo17_needle_speedo_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_speedo_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_needle_speedo_polo17gauges2_0
                            objectName: "polo17_needle_speedo_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_speedo_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_needle_speedo_polo17sgray_0
                            objectName: "polo17_needle_speedo_polo17sgray_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_speedo_polo17sgray_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_needle_tacho
                        objectName: "polo17_needle_tacho"
                        position: Qt.vector3d(42.6419, 86.6196, 72.6001)
                        rotation: Qt.quaternion(0.814098, -0.580727, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_needle_tacho_polo17black_0
                            objectName: "polo17_needle_tacho_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_tacho_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_needle_tacho_polo17gauges2_0
                            objectName: "polo17_needle_tacho_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_tacho_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_needle_tacho_polo17sgray_0
                            objectName: "polo17_needle_tacho_polo17sgray_0"
                            source: "/3DModel/myCar/meshes/polo17_needle_tacho_polo17sgray_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_parkingbrake
                        objectName: "polo17_parkingbrake"
                        position: Qt.vector3d(0, 36.3465, 0)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_parkingbrake_polo17black_0
                            objectName: "polo17_parkingbrake_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_parkingbrake_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_parkingbrake_polo17plastik_0
                            objectName: "polo17_parkingbrake_polo17plastik_0"
                            source: "/3DModel/myCar/meshes/polo17_parkingbrake_polo17plastik_0_002_mesh.mesh"
                            materials: [
                                polo17plastik_002_material
                            ]
                        }
                        Model {
                            id: polo17_parkingbrake_polo17salon2_0
                            objectName: "polo17_parkingbrake_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_parkingbrake_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_radiator
                        objectName: "polo17_radiator"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_radiator_sunburst_engine_0
                            objectName: "polo17_radiator_sunburst_engine_0"
                            source: "/3DModel/myCar/meshes/polo17_radiator_sunburst_engine_0_002_mesh.mesh"
                            materials: [
                                sunburst_engine_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_seats_FL
                        objectName: "polo17_seats_FL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_seats_FL_polo17seats2_0
                            objectName: "polo17_seats_FL_polo17seats2_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_FL_polo17seats2_0_002_mesh.mesh"
                            materials: [
                                polo17seats2_002_material
                            ]
                        }
                        Model {
                            id: polo17_seats_FL_polo17seats_0
                            objectName: "polo17_seats_FL_polo17seats_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_FL_polo17seats_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_seats_FR
                        objectName: "polo17_seats_FR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_seats_FR_polo17seats2_0
                            objectName: "polo17_seats_FR_polo17seats2_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_FR_polo17seats2_0_002_mesh.mesh"
                            materials: [
                                polo17seats2_002_material
                            ]
                        }
                        Model {
                            id: polo17_seats_FR_polo17seats_0
                            objectName: "polo17_seats_FR_polo17seats_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_FR_polo17seats_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_seats_R
                        objectName: "polo17_seats_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_seats_R_polo17seats2_0
                            objectName: "polo17_seats_R_polo17seats2_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_R_polo17seats2_0_002_mesh.mesh"
                            materials: [
                                polo17seats2_002_material
                            ]
                        }
                        Model {
                            id: polo17_seats_R_polo17seats_0
                            objectName: "polo17_seats_R_polo17seats_0"
                            source: "/3DModel/myCar/meshes/polo17_seats_R_polo17seats_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_shifter_boot_M
                        objectName: "polo17_shifter_boot_M"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_shifter_boot_M_polo17black_0
                            objectName: "polo17_shifter_boot_M_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_shifter_boot_M_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_shifter_knob_M
                        objectName: "polo17_shifter_knob_M"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_shifter_knob_M_polo17black_0
                            objectName: "polo17_shifter_knob_M_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_shifter_knob_M_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_shifter_knob_M_polo17salon2_0
                            objectName: "polo17_shifter_knob_M_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_shifter_knob_M_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                        Model {
                            id: polo17_shifter_knob_M_polo17sgray_0
                            objectName: "polo17_shifter_knob_M_polo17sgray_0"
                            source: "/3DModel/myCar/meshes/polo17_shifter_knob_M_polo17sgray_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_signalstalk
                        objectName: "polo17_signalstalk"
                        position: Qt.vector3d(41.1249, 82.094, 57.3368)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_signalstalk_polo17salon2_0
                            objectName: "polo17_signalstalk_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_signalstalk_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_steer
                        objectName: "polo17_steer"
                        position: Qt.vector3d(34.3058, 83.3387, 54.7334)
                        rotation: Qt.quaternion(-0.22454, 0.974465, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_steer_polo17black_0
                            objectName: "polo17_steer_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_steer_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_steer_polo17chrome_0
                            objectName: "polo17_steer_polo17chrome_0"
                            source: "/3DModel/myCar/meshes/polo17_steer_polo17chrome_0_002_mesh.mesh"
                            materials: [
                                polo17chrome_002_material
                            ]
                        }
                        Model {
                            id: polo17_steer_polo17gauges2_0
                            objectName: "polo17_steer_polo17gauges2_0"
                            source: "/3DModel/myCar/meshes/polo17_steer_polo17gauges2_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_steer_polo17salon2_0
                            objectName: "polo17_steer_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_steer_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_strut_F
                        objectName: "polo17_strut_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_strut_F_sunburst_0
                            objectName: "polo17_strut_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_strut_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_subframe_F
                        objectName: "polo17_subframe_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_subframe_F_sunburst_0
                            objectName: "polo17_subframe_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_subframe_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_subframe_R
                        objectName: "polo17_subframe_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_subframe_R_sunburst_0
                            objectName: "polo17_subframe_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_subframe_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_swaybar_F
                        objectName: "polo17_swaybar_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_swaybar_F_sunburst_0
                            objectName: "polo17_swaybar_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_swaybar_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_swaybar_R
                        objectName: "polo17_swaybar_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_swaybar_R_sunburst_0
                            objectName: "polo17_swaybar_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_swaybar_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_taillight_L
                        objectName: "polo17_taillight_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_taillight_L_polo17gabarit_0
                            objectName: "polo17_taillight_L_polo17gabarit_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_L_polo17gabarit_0_002_mesh.mesh"
                            materials: [
                                polo17gabarit_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_L_polo17lightR_0
                            objectName: "polo17_taillight_L_polo17lightR_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_L_polo17lightR_0_002_mesh.mesh"
                            materials: [
                                polo17lightR_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_L_polo17pov_L_0
                            objectName: "polo17_taillight_L_polo17pov_L_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_L_polo17pov_L_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_L_polo17reve_0
                            objectName: "polo17_taillight_L_polo17reve_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_L_polo17reve_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_L_polo17stop_0
                            objectName: "polo17_taillight_L_polo17stop_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_L_polo17stop_0_002_mesh.mesh"
                            materials: [
                                polo17stop_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_taillight_R
                        objectName: "polo17_taillight_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_taillight_R_polo17gabarit_0
                            objectName: "polo17_taillight_R_polo17gabarit_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_R_polo17gabarit_0_002_mesh.mesh"
                            materials: [
                                polo17gabarit_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_R_polo17lightR_0
                            objectName: "polo17_taillight_R_polo17lightR_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_R_polo17lightR_0_002_mesh.mesh"
                            materials: [
                                polo17lightR_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_R_polo17pov_R_0
                            objectName: "polo17_taillight_R_polo17pov_R_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_R_polo17pov_R_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_R_polo17reve_0
                            objectName: "polo17_taillight_R_polo17reve_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_R_polo17reve_0_002_mesh.mesh"
                            materials: [
                                polo17gauges2_002_material
                            ]
                        }
                        Model {
                            id: polo17_taillight_R_polo17stop_0
                            objectName: "polo17_taillight_R_polo17stop_0"
                            source: "/3DModel/myCar/meshes/polo17_taillight_R_polo17stop_0_002_mesh.mesh"
                            materials: [
                                polo17stop_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_taillightglass_L
                        objectName: "polo17_taillightglass_L"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_taillightglass_L_polo17lightglass_R_0
                            objectName: "polo17_taillightglass_L_polo17lightglass_R_0"
                            source: "/3DModel/myCar/meshes/polo17_taillightglass_L_polo17lightglass_R_0_002_mesh.mesh"
                            materials: [
                                polo17lightglass_R_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_taillightglass_R
                        objectName: "polo17_taillightglass_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_taillightglass_R_polo17lightglass_R_0
                            objectName: "polo17_taillightglass_R_polo17lightglass_R_0"
                            source: "/3DModel/myCar/meshes/polo17_taillightglass_R_polo17lightglass_R_0_002_mesh.mesh"
                            materials: [
                                polo17lightglass_R_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_tierod_F
                        objectName: "polo17_tierod_F"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_tierod_F_sunburst_0
                            objectName: "polo17_tierod_F_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_tierod_F_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_trailingarm_R
                        objectName: "polo17_trailingarm_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_trailingarm_R_sunburst_0
                            objectName: "polo17_trailingarm_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_trailingarm_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_transmission_awd
                        objectName: "polo17_transmission_awd"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_transmission_awd_sunburst_0
                            objectName: "polo17_transmission_awd_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_transmission_awd_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_trunk
                        objectName: "polo17_trunk"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_trunk_polo17chrome_0
                            objectName: "polo17_trunk_polo17chrome_0"
                            position: Qt.vector3d(0.000378104, 1.8316, 1.00383)
                            source: "/3DModel/myCar/meshes/polo17_trunk_polo17chrome_0_mesh.mesh"
                            materials: [
                                polo17chrome_002_material,
                                polo17black_002_material,
                                polo17body_002_material,
                                polo17plastik_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_tubs_FL
                        objectName: "polo17_tubs_FL"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_tubs_FL_polo17black_0
                            objectName: "polo17_tubs_FL_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_tubs_FL_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_tubs_FR
                        objectName: "polo17_tubs_FR"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_tubs_FR_polo17black_0
                            objectName: "polo17_tubs_FR_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_tubs_FR_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_unebody
                        objectName: "polo17_unebody"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_unebody_polo17black_0
                            objectName: "polo17_unebody_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_unebody_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17_unebody_sunburst_0
                            objectName: "polo17_unebody_sunburst_0"
                            position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                            source: "/3DModel/myCar/meshes/polo17_unebody_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_upperarm_R
                        objectName: "polo17_upperarm_R"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_upperarm_R_sunburst_0
                            objectName: "polo17_upperarm_R_sunburst_0"
                            source: "/3DModel/myCar/meshes/polo17_upperarm_R_sunburst_0_002_mesh.mesh"
                            materials: [
                                sunburst_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_windshield
                        objectName: "polo17_windshield"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_windshield_polo17_glass_0
                            objectName: "polo17_windshield_polo17_glass_0"
                            source: "/3DModel/myCar/meshes/polo17_windshield_polo17_glass_0_002_mesh.mesh"
                            materials: [
                                polo17_glass_int_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_wiperL
                        objectName: "polo17_wiperL"
                        position: Qt.vector3d(45.9229, 92.0844, 115.811)
                        rotation: Qt.quaternion(0.902467, -0.427263, 0.054567, 0.0046501)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_wiperL_polo17black_0
                            objectName: "polo17_wiperL_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_wiperL_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_wiperR
                        objectName: "polo17_wiperR"
                        position: Qt.vector3d(17.1307, 93.3975, 119.826)
                        rotation: Qt.quaternion(0.901488, -0.428261, 0.0571636, 0.0253923)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_wiperR_polo17black_0
                            objectName: "polo17_wiperR_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_wiperR_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_wipers
                        objectName: "polo17_wipers"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_wipers_polo17black_0
                            objectName: "polo17_wipers_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17_wipers_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17_wiperstalk
                        objectName: "polo17_wiperstalk"
                        position: Qt.vector3d(26.755, 82.094, 57.3368)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 100, 100)
                        Model {
                            id: polo17_wiperstalk_polo17salon2_0
                            objectName: "polo17_wiperstalk_polo17salon2_0"
                            source: "/3DModel/myCar/meshes/polo17_wiperstalk_polo17salon2_0_002_mesh.mesh"
                            materials: [
                                polo17salon2_002_material
                            ]
                        }
                    }
                    Node {
                        id: polo17wheel
                        objectName: "polo17wheel"
                        position: Qt.vector3d(-71.3512, 28.4852, 129.428)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 88.9372, 88.9372)
                        Model {
                            id: polo17wheel_polo17black_0
                            objectName: "polo17wheel_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17wheel_polo17wheel_0
                            objectName: "polo17wheel_polo17wheel_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_polo17wheel_0_002_mesh.mesh"
                            materials: [
                                polo17wheel_002_material
                            ]
                        }
                        Node {
                            id: tire_01a_16x7_25
                            objectName: "tire_01a_16x7_25"
                            scale: Qt.vector3d(0.01, 0.01, 0.01)
                            Model {
                                id: tire_01a_16x7_25_tire_01a_0
                                objectName: "tire_01a_16x7_25_tire_01a_0"
                                position: Qt.vector3d(-7.62939e-06, 2.08147e-05, -5.94008e-06)
                                source: "/3DModel/myCar/meshes/tire_01a_16x7_25_tire_01a_0_002_mesh.mesh"
                                materials: [
                                    tire_01a_002_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: polo17wheel_001
                        objectName: "polo17wheel.001"
                        position: Qt.vector3d(-74.8212, 28.4852, -127.572)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(100, 88.9372, 88.9372)
                        Model {
                            id: polo17wheel_001_polo17black_0
                            objectName: "polo17wheel.001_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_001_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17wheel_001_polo17wheel_0
                            objectName: "polo17wheel.001_polo17wheel_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_001_polo17wheel_0_002_mesh.mesh"
                            materials: [
                                polo17wheel_002_material
                            ]
                        }
                        Node {
                            id: tire_01a_16x7_25_001
                            objectName: "tire_01a_16x7_25.001"
                            scale: Qt.vector3d(0.01, 0.01, 0.01)
                            Model {
                                id: tire_01a_16x7_25_001_tire_01a_0
                                objectName: "tire_01a_16x7_25.001_tire_01a_0"
                                position: Qt.vector3d(-1.52588e-05, -9.70289e-06, -6.13647e-06)
                                source: "/3DModel/myCar/meshes/tire_01a_16x7_25_001_tire_01a_0_002_mesh.mesh"
                                materials: [
                                    tire_01a_002_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: polo17wheel_002
                        objectName: "polo17wheel.002"
                        position: Qt.vector3d(70.7198, 28.4852, -127.572)
                        rotation: Qt.quaternion(-1.37679e-07, -1.00486e-14, 0.707107, 0.707107)
                        scale: Qt.vector3d(100, 88.9373, 88.9373)
                        Model {
                            id: polo17wheel_002_polo17black_0
                            objectName: "polo17wheel.002_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_002_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17wheel_002_polo17wheel_0
                            objectName: "polo17wheel.002_polo17wheel_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_002_polo17wheel_0_002_mesh.mesh"
                            materials: [
                                polo17wheel_002_material
                            ]
                        }
                        Node {
                            id: tire_01a_16x7_25_002
                            objectName: "tire_01a_16x7_25.002"
                            scale: Qt.vector3d(0.01, 0.01, 0.01)
                            Model {
                                id: tire_01a_16x7_25_002_tire_01a_0
                                objectName: "tire_01a_16x7_25.002_tire_01a_0"
                                position: Qt.vector3d(-7.49718e-06, 1.97857e-05, 0)
                                source: "/3DModel/myCar/meshes/tire_01a_16x7_25_002_tire_01a_0_002_mesh.mesh"
                                materials: [
                                    tire_01a_002_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: polo17wheel_003
                        objectName: "polo17wheel.003"
                        position: Qt.vector3d(70.7198, 28.4852, 129.428)
                        rotation: Qt.quaternion(-1.37679e-07, -1.00486e-14, 0.707107, 0.707107)
                        scale: Qt.vector3d(100, 88.9373, 88.9373)
                        Model {
                            id: polo17wheel_003_polo17black_0
                            objectName: "polo17wheel.003_polo17black_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_003_polo17black_0_002_mesh.mesh"
                            materials: [
                                polo17black_002_material
                            ]
                        }
                        Model {
                            id: polo17wheel_003_polo17wheel_0
                            objectName: "polo17wheel.003_polo17wheel_0"
                            source: "/3DModel/myCar/meshes/polo17wheel_003_polo17wheel_0_002_mesh.mesh"
                            materials: [
                                polo17wheel_002_material
                            ]
                        }
                        Node {
                            id: tire_01a_16x7_25_003
                            objectName: "tire_01a_16x7_25.003"
                            scale: Qt.vector3d(0.01, 0.01, 0.01)
                            Model {
                                id: tire_01a_16x7_25_003_tire_01a_0
                                objectName: "tire_01a_16x7_25.003_tire_01a_0"
                                position: Qt.vector3d(-1.08632e-05, 4.52694e-06, -7.37359e-06)
                                source: "/3DModel/myCar/meshes/tire_01a_16x7_25_003_tire_01a_0_002_mesh.mesh"
                                materials: [
                                    tire_01a_002_material
                                ]
                            }
                        }
                    }
                }
            }
        }

        // Animations:
        // Infinite Rotation Animation
        SequentialAnimation {
            id: infiniteRotation
            // loops: Animation.Infinite

            NumberAnimation {
                target: polo17_hood_polo17black_0
                property: "eulerRotation.x"
                from: 0
                to: -40
                duration: 1000
                easing.type: Easing.InOutQuad
            }

            NumberAnimation {
                target: polo17_hood_polo17black_0
                property: "eulerRotation.x"
                from: -40
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
            }
        }

        Component.onCompleted: {
            infiniteRotation.start()
        }

        // Timeline {
        //     id: polo17_door_FL_polo17body_0Action_timeline
        //     objectName: "polo17_door_FL_polo17body_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 1459
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 1459
        //         from: 0
        //         to: 1459
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_door_FL_polo17body_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 41.6667
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 83.3333
        //             value: Qt.quaternion(0.999999, -7.10544e-15, 5.20911e-10, -0.00171948)
        //         }
        //         Keyframe {
        //             frame: 125
        //             value: Qt.quaternion(0.999977, -7.10559e-15, 2.03915e-09, -0.00673107)
        //         }
        //         Keyframe {
        //             frame: 166.667
        //             value: Qt.quaternion(0.99989, -7.10621e-15, 4.49132e-09, -0.0148255)
        //         }
        //         Keyframe {
        //             frame: 208.333
        //             value: Qt.quaternion(0.999667, -7.10779e-15, 7.81703e-09, -0.0258033)
        //         }
        //         Keyframe {
        //             frame: 250
        //             value: Qt.quaternion(0.999221, -1.42219e-14, 1.1957e-08, -0.0394691)
        //         }
        //         Keyframe {
        //             frame: 291.667
        //             value: Qt.quaternion(0.998452, -7.11645e-15, 1.68514e-08, -0.0556251)
        //         }
        //         Keyframe {
        //             frame: 333.333
        //             value: Qt.quaternion(0.997253, -7.125e-15, 2.24379e-08, -0.0740657)
        //         }
        //         Keyframe {
        //             frame: 375
        //             value: Qt.quaternion(0.995518, -7.13742e-15, 2.86507e-08, -0.0945734)
        //         }
        //         Keyframe {
        //             frame: 416.667
        //             value: Qt.quaternion(0.993142, -7.15449e-15, 3.54187e-08, -0.116914)
        //         }
        //         Keyframe {
        //             frame: 458.333
        //             value: Qt.quaternion(0.990033, -1.43539e-14, 4.26659e-08, -0.140836)
        //         }
        //         Keyframe {
        //             frame: 500
        //             value: Qt.quaternion(0.986114, -8.10617e-15, 5.03101e-08, -0.166069)
        //         }
        //         Keyframe {
        //             frame: 541.667
        //             value: Qt.quaternion(0.981331, -8.14568e-15, 5.82642e-08, -0.192325)
        //         }
        //         Keyframe {
        //             frame: 583.333
        //             value: Qt.quaternion(0.975657, -7.28271e-15, 6.64364e-08, -0.219301)
        //         }
        //         Keyframe {
        //             frame: 625
        //             value: Qt.quaternion(0.969096, -7.33202e-15, 7.47322e-08, -0.246685)
        //         }
        //         Keyframe {
        //             frame: 666.667
        //             value: Qt.quaternion(0.961684, -7.38853e-15, 8.30557e-08, -0.27416)
        //         }
        //         Keyframe {
        //             frame: 708.333
        //             value: Qt.quaternion(0.953494, -9.31499e-15, 9.1312e-08, -0.301413)
        //         }
        //         Keyframe {
        //             frame: 750
        //             value: Qt.quaternion(0.944629, -9.4024e-15, 9.94089e-08, -0.32814)
        //         }
        //         Keyframe {
        //             frame: 791.667
        //             value: Qt.quaternion(0.935225, -7.59756e-15, 1.07259e-07, -0.354053)
        //         }
        //         Keyframe {
        //             frame: 833.333
        //             value: Qt.quaternion(0.925444, -3.83893e-15, 1.14781e-07, -0.378884)
        //         }
        //         Keyframe {
        //             frame: 875
        //             value: Qt.quaternion(0.915468, -3.88076e-15, 1.21903e-07, -0.40239)
        //         }
        //         Keyframe {
        //             frame: 916.667
        //             value: Qt.quaternion(0.905496, -3.9235e-15, 1.28557e-07, -0.424356)
        //         }
        //         Keyframe {
        //             frame: 958.333
        //             value: Qt.quaternion(0.895734, -1.18988e-14, 1.34687e-07, -0.444591)
        //         }
        //         Keyframe {
        //             frame: 1000
        //             value: Qt.quaternion(0.886395, -1.60322e-14, 1.40243e-07, -0.462931)
        //         }
        //         Keyframe {
        //             frame: 1041.67
        //             value: Qt.quaternion(0.877689, -1.21434e-14, 1.45181e-07, -0.479231)
        //         }
        //         Keyframe {
        //             frame: 1083.33
        //             value: Qt.quaternion(0.869823, -1.22532e-14, 1.49463e-07, -0.493364)
        //         }
        //         Keyframe {
        //             frame: 1125
        //             value: Qt.quaternion(0.862996, -4.11672e-15, 1.53052e-07, -0.505211)
        //         }
        //         Keyframe {
        //             frame: 1166.67
        //             value: Qt.quaternion(0.857397, -1.24308e-14, 1.55913e-07, -0.514656)
        //         }
        //         Keyframe {
        //             frame: 1208.33
        //             value: Qt.quaternion(0.853203, -1.24919e-14, 1.58011e-07, -0.52158)
        //         }
        //         Keyframe {
        //             frame: 1250
        //             value: Qt.quaternion(0.850578, 0, 1.59304e-07, -0.525849)
        //         }
        //         Keyframe {
        //             frame: 1291.67
        //             value: Qt.quaternion(0.849673, -3.34502e-14, 1.59747e-07, -0.527311)
        //         }
        //         Keyframe {
        //             frame: 1333.33
        //             value: Qt.quaternion(0.890998, -3.18987e-14, 1.3754e-07, -0.454007)
        //         }
        //         Keyframe {
        //             frame: 1375
        //             value: Qt.quaternion(0.961684, -2.95541e-14, 8.30557e-08, -0.27416)
        //         }
        //         Keyframe {
        //             frame: 1416.67
        //             value: Qt.quaternion(0.996459, -3.58762e-14, 2.54704e-08, -0.0840755)
        //         }
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //     }
        // }
        // Timeline {
        //     id: polo17_door_FR_polo17black_0Action_timeline
        //     objectName: "polo17_door_FR_polo17black_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 1459
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 1459
        //         from: 0
        //         to: 1459
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_door_FR_polo17black_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 0
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 41.6667
        //             value: Qt.quaternion(0.999998, -1.42109e-14, -5.39546e-10, 0.00178099)
        //         }
        //         Keyframe {
        //             frame: 83.3333
        //             value: Qt.quaternion(0.999976, -1.42112e-14, -2.11234e-09, 0.00697265)
        //         }
        //         Keyframe {
        //             frame: 125
        //             value: Qt.quaternion(0.999882, -7.10627e-15, -4.65335e-09, 0.0153603)
        //         }
        //         Keyframe {
        //             frame: 166.667
        //             value: Qt.quaternion(0.999642, -1.42159e-14, -8.10092e-09, 0.0267404)
        //         }
        //         Keyframe {
        //             frame: 208.333
        //             value: Qt.quaternion(0.999163, -7.11138e-15, -1.23947e-08, 0.0409139)
        //         }
        //         Keyframe {
        //             frame: 250
        //             value: Qt.quaternion(0.998335, -7.11728e-15, -1.74737e-08, 0.0576791)
        //         }
        //         Keyframe {
        //             frame: 291.667
        //             value: Qt.quaternion(0.997045, -1.4253e-14, -2.32742e-08, 0.076826)
        //         }
        //         Keyframe {
        //             frame: 333.333
        //             value: Qt.quaternion(0.995174, 0, -2.97284e-08, 0.0981309)
        //         }
        //         Keyframe {
        //             frame: 375
        //             value: Qt.quaternion(0.99261, -7.15833e-15, -3.67631e-08, 0.121352)
        //         }
        //         Keyframe {
        //             frame: 416.667
        //             value: Qt.quaternion(0.989251, -7.18263e-15, -4.42989e-08, 0.146227)
        //         }
        //         Keyframe {
        //             frame: 458.333
        //             value: Qt.quaternion(0.985014, -7.21353e-15, -5.22498e-08, 0.172472)
        //         }
        //         Keyframe {
        //             frame: 500
        //             value: Qt.quaternion(0.97984, -7.25162e-15, -6.05241e-08, 0.199785)
        //         }
        //         Keyframe {
        //             frame: 541.667
        //             value: Qt.quaternion(0.973697, -7.29737e-15, -6.90249e-08, 0.227845)
        //         }
        //         Keyframe {
        //             frame: 583.333
        //             value: Qt.quaternion(0.966591, -7.35102e-15, -7.7652e-08, 0.256323)
        //         }
        //         Keyframe {
        //             frame: 625
        //             value: Qt.quaternion(0.958563, -9.26573e-15, -8.63038e-08, 0.284881)
        //         }
        //         Keyframe {
        //             frame: 666.667
        //             value: Qt.quaternion(0.949691, -7.48183e-15, -9.48796e-08, 0.31319)
        //         }
        //         Keyframe {
        //             frame: 708.333
        //             value: Qt.quaternion(0.94009, -3.77912e-15, -1.03282e-07, 0.340925)
        //         }
        //         Keyframe {
        //             frame: 750
        //             value: Qt.quaternion(0.929911, -9.55122e-15, -1.11419e-07, 0.367786)
        //         }
        //         Keyframe {
        //             frame: 791.667
        //             value: Qt.quaternion(0.919328, -1.15934e-14, -1.19207e-07, 0.393491)
        //         }
        //         Keyframe {
        //             frame: 833.333
        //             value: Qt.quaternion(0.908543, -1.1731e-14, -1.26568e-07, 0.417791)
        //         }
        //         Keyframe {
        //             frame: 875
        //             value: Qt.quaternion(0.897771, -7.91452e-15, -1.33436e-07, 0.440462)
        //         }
        //         Keyframe {
        //             frame: 916.667
        //             value: Qt.quaternion(0.887237, -8.00849e-15, -1.39754e-07, 0.461315)
        //         }
        //         Keyframe {
        //             frame: 958.333
        //             value: Qt.quaternion(0.877168, -8.10042e-15, -1.4547e-07, 0.480183)
        //         }
        //         Keyframe {
        //             frame: 1000
        //             value: Qt.quaternion(0.867792, -1.22819e-14, -1.50542e-07, 0.496927)
        //         }
        //         Keyframe {
        //             frame: 1041.67
        //             value: Qt.quaternion(0.859329, -1.24029e-14, -1.54934e-07, 0.511423)
        //         }
        //         Keyframe {
        //             frame: 1083.33
        //             value: Qt.quaternion(0.85199, -4.1699e-15, -1.5861e-07, 0.523558)
        //         }
        //         Keyframe {
        //             frame: 1125
        //             value: Qt.quaternion(0.845975, -8.39909e-15, -1.61538e-07, 0.533222)
        //         }
        //         Keyframe {
        //             frame: 1166.67
        //             value: Qt.quaternion(0.841473, -8.44403e-15, -1.63682e-07, 0.540299)
        //         }
        //         Keyframe {
        //             frame: 1208.33
        //             value: Qt.quaternion(0.838657, -2.1181e-14, -1.65003e-07, 0.544661)
        //         }
        //         Keyframe {
        //             frame: 1250
        //             value: Qt.quaternion(0.837685, -2.12055e-14, -1.65455e-07, 0.546153)
        //         }
        //         Keyframe {
        //             frame: 1291.67
        //             value: Qt.quaternion(0.867792, -3.68457e-14, -1.50542e-07, 0.496927)
        //         }
        //         Keyframe {
        //             frame: 1333.33
        //             value: Qt.quaternion(0.929911, -3.62947e-14, -1.11419e-07, 0.367786)
        //         }
        //         Keyframe {
        //             frame: 1375
        //             value: Qt.quaternion(0.97984, -2.90065e-14, -6.05241e-08, 0.199785)
        //         }
        //         Keyframe {
        //             frame: 1416.67
        //             value: Qt.quaternion(0.998335, -2.84691e-14, -1.74736e-08, 0.057679)
        //         }
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //     }
        // }
        // Timeline {
        //     id: polo17_doorglass_RR_polo17_glass_0Action_timeline
        //     objectName: "polo17_doorglass_RR_polo17_glass_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 1459
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 1459
        //         from: 0
        //         to: 1459
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_doorglass_RR_polo17_glass_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 0
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 41.6667
        //             value: Qt.quaternion(0.999998, -7.10544e-15, -5.89667e-10, 0.00194644)
        //         }
        //         Keyframe {
        //             frame: 83.3333
        //             value: Qt.quaternion(0.999971, -7.10737e-15, -2.30933e-09, 0.00762291)
        //         }
        //         Keyframe {
        //             frame: 125
        //             value: Qt.quaternion(0.999859, -7.10643e-15, -5.08997e-09, 0.0168016)
        //         }
        //         Keyframe {
        //             frame: 166.667
        //             value: Qt.quaternion(0.999572, -7.13624e-15, -8.86714e-09, 0.0292697)
        //         }
        //         Keyframe {
        //             frame: 208.333
        //             value: Qt.quaternion(0.998995, -1.42251e-14, -1.35782e-08, 0.0448206)
        //         }
        //         Keyframe {
        //             frame: 250
        //             value: Qt.quaternion(0.997998, -1.42394e-14, -1.91598e-08, 0.0632449)
        //         }
        //         Keyframe {
        //             frame: 291.667
        //             value: Qt.quaternion(0.996439, -7.13082e-15, -2.55451e-08, 0.0843222)
        //         }
        //         Keyframe {
        //             frame: 333.333
        //             value: Qt.quaternion(0.994171, -7.59378e-15, -3.26618e-08, 0.107814)
        //         }
        //         Keyframe {
        //             frame: 375
        //             value: Qt.quaternion(0.991055, -7.61766e-15, -4.04302e-08, 0.133457)
        //         }
        //         Keyframe {
        //             frame: 416.667
        //             value: Qt.quaternion(0.986961, -7.64926e-15, -4.87624e-08, 0.160961)
        //         }
        //         Keyframe {
        //             frame: 458.333
        //             value: Qt.quaternion(0.981783, -8.14193e-15, -5.75613e-08, 0.190005)
        //         }
        //         Keyframe {
        //             frame: 500
        //             value: Qt.quaternion(0.975445, -7.28429e-15, -6.67218e-08, 0.220243)
        //         }
        //         Keyframe {
        //             frame: 541.667
        //             value: Qt.quaternion(0.967908, -8.25864e-15, -7.61317e-08, 0.251304)
        //         }
        //         Keyframe {
        //             frame: 583.333
        //             value: Qt.quaternion(0.959178, -7.40783e-15, -8.56738e-08, 0.282802)
        //         }
        //         Keyframe {
        //             frame: 625
        //             value: Qt.quaternion(0.949309, -9.35605e-15, -9.52295e-08, 0.314345)
        //         }
        //         Keyframe {
        //             frame: 666.667
        //             value: Qt.quaternion(0.938403, -3.78592e-15, -1.04681e-07, 0.345544)
        //         }
        //         Keyframe {
        //             frame: 708.333
        //             value: Qt.quaternion(0.926609, -7.66821e-15, -1.13916e-07, 0.376027)
        //         }
        //         Keyframe {
        //             frame: 750
        //             value: Qt.quaternion(0.914118, -3.88649e-15, -1.22829e-07, 0.405448)
        //         }
        //         Keyframe {
        //             frame: 791.667
        //             value: Qt.quaternion(0.901157, -7.88478e-15, -1.31325e-07, 0.433493)
        //         }
        //         Keyframe {
        //             frame: 833.333
        //             value: Qt.quaternion(0.887977, -8.00181e-15, -1.39321e-07, 0.459887)
        //         }
        //         Keyframe {
        //             frame: 875
        //             value: Qt.quaternion(0.874847, -1.21829e-14, -1.46747e-07, 0.484399)
        //         }
        //         Keyframe {
        //             frame: 916.667
        //             value: Qt.quaternion(0.862044, 0, -1.53544e-07, 0.506834)
        //         }
        //         Keyframe {
        //             frame: 958.333
        //             value: Qt.quaternion(0.849843, -8.36087e-15, -1.59664e-07, 0.527037)
        //         }
        //         Keyframe {
        //             frame: 1000
        //             value: Qt.quaternion(0.838515, -1.69477e-14, -1.65069e-07, 0.544879)
        //         }
        //         Keyframe {
        //             frame: 1041.67
        //             value: Qt.quaternion(0.828319, -8.57813e-15, -1.69728e-07, 0.560257)
        //         }
        //         Keyframe {
        //             frame: 1083.33
        //             value: Qt.quaternion(0.8195, 0, -1.73612e-07, 0.573079)
        //         }
        //         Keyframe {
        //             frame: 1125
        //             value: Qt.quaternion(0.812289, -8.74741e-15, -1.76695e-07, 0.583255)
        //         }
        //         Keyframe {
        //             frame: 1166.67
        //             value: Qt.quaternion(0.806901, -1.76116e-14, -1.78946e-07, 0.590686)
        //         }
        //         Keyframe {
        //             frame: 1208.33
        //             value: Qt.quaternion(0.803535, -1.76854e-14, -1.80331e-07, 0.595257)
        //         }
        //         Keyframe {
        //             frame: 1250
        //             value: Qt.quaternion(0.802375, -3.5422e-14, -1.80804e-07, 0.59682)
        //         }
        //         Keyframe {
        //             frame: 1291.67
        //             value: Qt.quaternion(0.838515, -3.81322e-14, -1.65069e-07, 0.544879)
        //         }
        //         Keyframe {
        //             frame: 1333.33
        //             value: Qt.quaternion(0.914118, -3.88649e-14, -1.22829e-07, 0.405448)
        //         }
        //         Keyframe {
        //             frame: 1375
        //             value: Qt.quaternion(0.975445, -3.64215e-14, -6.67218e-08, 0.220243)
        //         }
        //         Keyframe {
        //             frame: 1416.67
        //             value: Qt.quaternion(0.997998, -4.27181e-14, -1.91598e-08, 0.0632449)
        //         }
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //     }
        // }
        // Timeline {
        //     id: polo17_doorpanel_RL_polo17plastik_0Action_timeline
        //     objectName: "polo17_doorpanel_RL_polo17plastik_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 1459
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 1459
        //         from: 0
        //         to: 1459
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_doorpanel_RL_polo17plastik_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 0
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 41.6667
        //             value: Qt.quaternion(0.999998, -7.10544e-15, 5.90372e-10, -0.00194877)
        //         }
        //         Keyframe {
        //             frame: 83.3333
        //             value: Qt.quaternion(0.999971, -1.42113e-14, 2.3121e-09, -0.00763206)
        //         }
        //         Keyframe {
        //             frame: 125
        //             value: Qt.quaternion(0.999858, -1.42129e-14, 5.09613e-09, -0.0168219)
        //         }
        //         Keyframe {
        //             frame: 166.667
        //             value: Qt.quaternion(0.99957, -1.42447e-14, 8.87796e-09, -0.0293054)
        //         }
        //         Keyframe {
        //             frame: 208.333
        //             value: Qt.quaternion(0.998993, -7.11259e-15, 1.3595e-08, -0.0448758)
        //         }
        //         Keyframe {
        //             frame: 250
        //             value: Qt.quaternion(0.997993, -7.23096e-15, 1.91837e-08, -0.0633237)
        //         }
        //         Keyframe {
        //             frame: 291.667
        //             value: Qt.quaternion(0.99643, -1.42618e-14, 2.55773e-08, -0.0844285)
        //         }
        //         Keyframe {
        //             frame: 333.333
        //             value: Qt.quaternion(0.994156, -7.14719e-15, 3.27035e-08, -0.107951)
        //         }
        //         Keyframe {
        //             frame: 375
        //             value: Qt.quaternion(0.991031, -7.16973e-15, 4.04824e-08, -0.133629)
        //         }
        //         Keyframe {
        //             frame: 416.667
        //             value: Qt.quaternion(0.986927, 0, 4.8826e-08, -0.161171)
        //         }
        //         Keyframe {
        //             frame: 458.333
        //             value: Qt.quaternion(0.981735, -7.23763e-15, 5.76372e-08, -0.190255)
        //         }
        //         Keyframe {
        //             frame: 500
        //             value: Qt.quaternion(0.975379, -7.28479e-15, 6.68104e-08, -0.220536)
        //         }
        //         Keyframe {
        //             frame: 541.667
        //             value: Qt.quaternion(0.967821, -8.25938e-15, 7.62333e-08, -0.25164)
        //         }
        //         Keyframe {
        //             frame: 583.333
        //             value: Qt.quaternion(0.959066, 0, 8.57886e-08, -0.283181)
        //         }
        //         Keyframe {
        //             frame: 625
        //             value: Qt.quaternion(0.949169, 0, 9.53573e-08, -0.314766)
        //         }
        //         Keyframe {
        //             frame: 666.667
        //             value: Qt.quaternion(0.938232, -1.13598e-14, 1.04821e-07, -0.346007)
        //         }
        //         Keyframe {
        //             frame: 708.333
        //             value: Qt.quaternion(0.926405, -3.83495e-15, 1.14068e-07, -0.376529)
        //         }
        //         Keyframe {
        //             frame: 750
        //             value: Qt.quaternion(0.913879, -3.88751e-15, 1.22992e-07, -0.405986)
        //         }
        //         Keyframe {
        //             frame: 791.667
        //             value: Qt.quaternion(0.900882, -3.94359e-15, 1.31498e-07, -0.434063)
        //         }
        //         Keyframe {
        //             frame: 833.333
        //             value: Qt.quaternion(0.887666, -8.00462e-15, 1.39503e-07, -0.460487)
        //         }
        //         Keyframe {
        //             frame: 875
        //             value: Qt.quaternion(0.874501, -8.12512e-15, 1.46936e-07, -0.485024)
        //         }
        //         Keyframe {
        //             frame: 916.667
        //             value: Qt.quaternion(0.861663, -1.23693e-14, 1.53739e-07, -0.507481)
        //         }
        //         Keyframe {
        //             frame: 958.333
        //             value: Qt.quaternion(0.84943, -8.36493e-15, 1.59865e-07, -0.527701)
        //         }
        //         Keyframe {
        //             frame: 1000
        //             value: Qt.quaternion(0.838073, -8.47829e-15, 1.65275e-07, -0.545558)
        //         }
        //         Keyframe {
        //             frame: 1041.67
        //             value: Qt.quaternion(0.827851, -4.29149e-15, 1.69937e-07, -0.560948)
        //         }
        //         Keyframe {
        //             frame: 1083.33
        //             value: Qt.quaternion(0.819011, 1.30134e-14, 1.73824e-07, -0.573778)
        //         }
        //         Keyframe {
        //             frame: 1125
        //             value: Qt.quaternion(0.811783, -8.75287e-15, 1.76908e-07, -0.58396)
        //         }
        //         Keyframe {
        //             frame: 1166.67
        //             value: Qt.quaternion(0.806382, -1.7623e-14, 1.79161e-07, -0.591396)
        //         }
        //         Keyframe {
        //             frame: 1208.33
        //             value: Qt.quaternion(0.803007, -4.42426e-15, 1.80547e-07, -0.595969)
        //         }
        //         Keyframe {
        //             frame: 1250
        //             value: Qt.quaternion(0.801844, -3.10147e-14, 1.8102e-07, -0.597533)
        //         }
        //         Keyframe {
        //             frame: 1291.67
        //             value: Qt.quaternion(0.838073, -3.39132e-14, 1.65275e-07, -0.545558)
        //         }
        //         Keyframe {
        //             frame: 1333.33
        //             value: Qt.quaternion(0.913879, -3.88751e-14, 1.22992e-07, -0.405986)
        //         }
        //         Keyframe {
        //             frame: 1375
        //             value: Qt.quaternion(0.975379, -3.64239e-14, 6.68103e-08, -0.220535)
        //         }
        //         Keyframe {
        //             frame: 1416.67
        //             value: Qt.quaternion(0.997993, -3.55986e-14, 1.91836e-08, -0.0633237)
        //         }
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //     }
        // }
        // Timeline {
        //     id: polo17_hood_polo17black_0Action_timeline
        //     objectName: "polo17_hood_polo17black_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 2084
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 2084
        //         from: 0
        //         to: 2084
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_hood_polo17black_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1500
        //             value: Qt.quaternion(0.999988, -0.00491635, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1541.67
        //             value: Qt.quaternion(0.999823, -0.0187998, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1583.33
        //             value: Qt.quaternion(0.999184, -0.0403841, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1625
        //             value: Qt.quaternion(0.997659, -0.0683886, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1666.67
        //             value: Qt.quaternion(0.994839, -0.101462, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1708.33
        //             value: Qt.quaternion(0.990411, -0.138154, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1750
        //             value: Qt.quaternion(0.984225, -0.176922, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1791.67
        //             value: Qt.quaternion(0.976355, -0.216173, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1833.33
        //             value: Qt.quaternion(0.967118, -0.254329, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1875
        //             value: Qt.quaternion(0.957059, -0.289892, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1916.67
        //             value: Qt.quaternion(0.946911, -0.321496, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1958.33
        //             value: Qt.quaternion(0.937523, -0.347924, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2000
        //             value: Qt.quaternion(0.929792, -0.368086, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2041.67
        //             value: Qt.quaternion(0.924591, -0.38096, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2083.33
        //             value: Qt.quaternion(0.922707, -0.385501, 0, 0)
        //         }
        //     }
        // }
        // Timeline {
        //     id: polo17_trunk_polo17chrome_0Action_timeline
        //     objectName: "polo17_trunk_polo17chrome_0Action"
        //     property real framesPerSecond: 1000
        //     startFrame: 0
        //     endFrame: 2084
        //     currentFrame: 0
        //     enabled: true
        //     animations: TimelineAnimation {
        //         duration: 2084
        //         from: 0
        //         to: 2084
        //         running: true
        //         loops: Animation.Infinite
        //     }
        //     KeyframeGroup {
        //         target: polo17_trunk_polo17chrome_0
        //         property: "rotation"
        //         Keyframe {
        //             frame: 1458.33
        //             value: Qt.quaternion(1, -1.42109e-14, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1500
        //             value: Qt.quaternion(0.999978, 0.00664265, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1541.67
        //             value: Qt.quaternion(0.999676, 0.0254607, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1583.33
        //             value: Qt.quaternion(0.998493, 0.054875, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1625
        //             value: Qt.quaternion(0.99564, 0.0932763, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1666.67
        //             value: Qt.quaternion(0.99031, 0.138874, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1708.33
        //             value: Qt.quaternion(0.981859, 0.189612, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1750
        //             value: Qt.quaternion(0.969981, 0.243182, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1791.67
        //             value: Qt.quaternion(0.954836, 0.297133, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1833.33
        //             value: Qt.quaternion(0.937101, 0.349058, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1875
        //             value: Qt.quaternion(0.917913, 0.396783, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1916.67
        //             value: Qt.quaternion(0.898735, 0.438493, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 1958.33
        //             value: Qt.quaternion(0.881186, 0.472769, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2000
        //             value: Qt.quaternion(0.866889, 0.498502, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2041.67
        //             value: Qt.quaternion(0.857353, 0.514728, 0, 0)
        //         }
        //         Keyframe {
        //             frame: 2083.33
        //             value: Qt.quaternion(0.853915, 0.520412, 0, 0)
        //         }
        //     }
        // }
    }
    Node {
        id: nodeRoot
        // Resources
        property alias lineFrunkPosition: lineOpenFrunk.position
        property alias lineGeometryLength: lineGeometry.length
        Node {
            id: nodeA
            objectName: "nodeA"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(1, 1, 1)
            Node {
                id: nodeB
                objectName: "nodeB"
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                scale: Qt.vector3d(0.01, 0.01, 0.01)
                Node {
                    id: rootNode2
                    objectName: "RootNode2"
                }
            }
        }
    }
    // Node {
    //     id: polo17_hood_button
    //     objectName: "polo17_hood_button"
    //     position: Qt.vector3d(-0.495744, 0.12446, 0.431092)
    //     rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
    //     scale: Qt.vector3d(0.5, 0.5, 0.5)

    //     // 🔹 Dynamic Line on the Hood
    //     Model {
    //         id: lineOpenFrunk
    //         geometry: LineGeometry {
    //             id: lineGeometry
    //             property real dynamicLength: 2.0 + (polo17_hood_polo17black_0.eulerRotation.x / 40)
    //             length: dynamicLength
    //         }
    //         property vector3d basePosition: Qt.vector3d(-0.0039, -1.8088, 0.8128)
    //         property vector3d endPosition: Qt.vector3d(-0.0084, -1.7063, 1.2810)
    //         property vector3d worldPosition: position

    //         // Interpolated position based on eulerRotation.x
    //         position: Qt.vector3d(
    //             basePosition.x - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.x - basePosition.x),
    //             basePosition.y - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.y - basePosition.y),
    //             basePosition.z - (polo17_hood_polo17black_0.eulerRotation.x / 40) * (endPosition.z - basePosition.z)
    //         )

    //         materials: DefaultMaterial {
    //             lighting: DefaultMaterial.NoLighting
    //             diffuseColor: "#8a8180"
    //         }
    //     }
    //     // 3D Button (Clickable)
    //     Model {
    //         id: button3D
    //         objectName: "Button3D"
    //         source: "#Rectangle"
    //         pickable: true  // Enable picking
    //         property bool isClicked: false
    //         // Rotate the button to make it vertical
    //         property real angleY: -50
    //         property real radY: angleY * Math.PI / 180  // Convert degrees to radians
    //         eulerRotation: Qt.vector3d(90, 0, 0)  // 90° around X-axis
    //         // Create quaternion for 50° rotation around Y-axis
    //         // rotation: Qt.quaternion(
    //         //     Math.sin(radY / 2),  // w
    //         //     0,                   // x
    //         //     0,                    // z
    //         //     Math.cos(radY / 2),  // y
    //         // )
    //         position: Qt.vector3d(
    //             lineOpenFrunk.position.x,
    //             lineOpenFrunk.position.y,
    //             lineOpenFrunk.position.z + lineGeometry.length + 0.05  // Slight offset to avoid overlap
    //         )
    //         scale: Qt.vector3d(0.05, 0.05, 0.05)  // Set size
    //         materials: DefaultMaterial {
    //             diffuseColor: button3D.isClicked ? "#41cd52" : "red"
    //         }
    //     }
    // }
}
