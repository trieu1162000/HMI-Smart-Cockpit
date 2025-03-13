import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.png"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    PrincipledMaterial {
        id: polo17seats2_001_material
        objectName: "polo17seats2.001"
        baseColor: "#ff1c1c1c"
        roughness: 0.975674033164978
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17light_001_material
        objectName: "polo17light.001"
        baseColor: "#ff626060"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17wheel_001_material
        objectName: "polo17wheel.001"
        baseColor: "#ff3f3c3c"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: tire_01a_001_material
        objectName: "tire_01a.001"
        baseColor: "#ff070707"
        roughness: 0.9941529035568237
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17gabarit_001_material
        objectName: "polo17gabarit.001"
        baseColor: "#ff1f0001"
        roughness: 0.9942693710327148
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17lightglass_R_001_material
        objectName: "polo17lightglass_R.001"
        baseColor: "#80ffffff"
        baseColorMap: _0_texture
        roughness: 0.25
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polo17lightR_001_material
        objectName: "polo17lightR.001"
        baseColor: "#ffcc0000"
        roughness: 0.9617149829864502
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: etk800_001_material
        objectName: "etk800.001"
        baseColor: "#ff969696"
        roughness: 0.8685191869735718
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17black_001_material
        objectName: "polo17black.001"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17chrome_001_material
        objectName: "polo17chrome.001"
        baseColor: "#ff3d3d3d"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17gauges2_001_material
        objectName: "polo17gauges2.001"
        baseColor: "#ffcccccc"
        roughness: 0.8211145401000977
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17salon2_001_material
        objectName: "polo17salon2.001"
        baseColor: "#ff070707"
        roughness: 0.993802011013031
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17_glass_int_001_material
        objectName: "polo17_glass_int.001"
        baseColor: "#40090909"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polo17kover_001_material
        objectName: "polo17kover.001"
        baseColor: "#ff050505"
        roughness: 0.9960134625434875
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17body_001_material
        objectName: "polo17body.001"
        baseColor: "#ffffd4e0"
        roughness: 0.25
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sunburst_001_material
        objectName: "sunburst.001"
        baseColor: "#ff060606"
        roughness: 0.9948192834854126
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sunburst_engine_001_material
        objectName: "sunburst_engine.001"
        baseColor: "#ffa5a5a5"
        roughness: 0.855402410030365
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17_red_001_material
        objectName: "polo17_red.001"
        baseColor: "#ffcc0002"
        roughness: 0.961843729019165
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17plastik_001_material
        objectName: "polo17plastik.001"
        baseColor: "#ff080808"
        roughness: 0.9930642247200012
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17stop_001_material
        objectName: "polo17stop.001"
        baseColor: "#ffcc0001"
        roughness: 0.9618708491325378
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.640856, -0.640857, -0.298836, -0.298836)
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
                        source: "meshes/polo17_akpp_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17chrome_0
                        objectName: "polo17_akpp_polo17chrome_0"
                        source: "meshes/polo17_akpp_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17gauges2_0
                        objectName: "polo17_akpp_polo17gauges2_0"
                        source: "meshes/polo17_akpp_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17salon2_0
                        objectName: "polo17_akpp_polo17salon2_0"
                        source: "meshes/polo17_akpp_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        source: "meshes/polo17_backlight_int_polo17_glass_int_0_001_mesh.mesh"
                        materials: [
                            polo17_glass_int_001_material
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
                        source: "meshes/polo17_body_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_body_polo17body_0
                        objectName: "polo17_body_polo17body_0"
                        position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                        source: "meshes/polo17_body_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_001_material
                        ]
                    }
                    Model {
                        id: polo17_body_polo17chrome_0
                        objectName: "polo17_body_polo17chrome_0"
                        source: "meshes/polo17_body_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_body_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_brace_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_brakepedal_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_bumper_F_polo17_glass_0_001_mesh.mesh"
                        materials: [
                            polo17_glass_int_001_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17black_0
                        objectName: "polo17_bumper_F_polo17black_0"
                        source: "meshes/polo17_bumper_F_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17body_0
                        objectName: "polo17_bumper_F_polo17body_0"
                        source: "meshes/polo17_bumper_F_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_001_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17chrome_0
                        objectName: "polo17_bumper_F_polo17chrome_0"
                        source: "meshes/polo17_bumper_F_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_bumper_R_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_001_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_R_polo17chrome_0
                        objectName: "polo17_bumper_R_polo17chrome_0"
                        source: "meshes/polo17_bumper_R_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_R_polo17lightR_0
                        objectName: "polo17_bumper_R_polo17lightR_0"
                        source: "meshes/polo17_bumper_R_polo17lightR_0_001_mesh.mesh"
                        materials: [
                            polo17lightR_001_material
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
                        source: "meshes/polo17_bumperbar_F_etk800_0_001_mesh.mesh"
                        materials: [
                            etk800_001_material
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
                        source: "meshes/polo17_clutchpedal_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_coilover_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_dash_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17gauges2_0
                        objectName: "polo17_dash_polo17gauges2_0"
                        source: "meshes/polo17_dash_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribhazard_0
                        objectName: "polo17_dash_polo17pribhazard_0"
                        source: "meshes/polo17_dash_polo17pribhazard_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribpov_L_0
                        objectName: "polo17_dash_polo17pribpov_L_0"
                        source: "meshes/polo17_dash_polo17pribpov_L_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribpov_R_0
                        objectName: "polo17_dash_polo17pribpov_R_0"
                        source: "meshes/polo17_dash_polo17pribpov_R_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17salon2_0
                        objectName: "polo17_dash_polo17salon2_0"
                        source: "meshes/polo17_dash_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        source: "meshes/polo17_dash11_polo17salon_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_dash2_polo17sgray_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_dash3_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_dash4_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_dash5_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17kover_0
                        objectName: "polo17_dash5_polo17kover_0"
                        position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                        source: "meshes/polo17_dash5_polo17kover_0_001_mesh.mesh"
                        materials: [
                            polo17kover_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17plastik_0
                        objectName: "polo17_dash5_polo17plastik_0"
                        source: "meshes/polo17_dash5_polo17plastik_0_001_mesh.mesh"
                        materials: [
                            polo17plastik_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17roof_0
                        objectName: "polo17_dash5_polo17roof_0"
                        source: "meshes/polo17_dash5_polo17roof_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17stop_0
                        objectName: "polo17_dash5_polo17stop_0"
                        source: "meshes/polo17_dash5_polo17stop_0_001_mesh.mesh"
                        materials: [
                            polo17stop_001_material
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
                        source: "meshes/polo17_dash6_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_dash7_mirror_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_dash8_polo17gauges_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_dash9_polo17_red_0_001_mesh.mesh"
                        materials: [
                            polo17_red_001_material
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
                        source: "meshes/polo17_decals_gau_polo17pribchek_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribfuel_0
                        objectName: "polo17_decals_gau_polo17pribfuel_0"
                        source: "meshes/polo17_decals_gau_polo17pribfuel_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribhigh_0
                        objectName: "polo17_decals_gau_polo17pribhigh_0"
                        source: "meshes/polo17_decals_gau_polo17pribhigh_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17priblow_0
                        objectName: "polo17_decals_gau_polo17priblow_0"
                        source: "meshes/polo17_decals_gau_polo17priblow_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribparkin_0
                        objectName: "polo17_decals_gau_polo17pribparkin_0"
                        source: "meshes/polo17_decals_gau_polo17pribparkin_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_door_FL_polo17body_0_mesh.mesh"
                        materials: [
                            polo17body_001_material,
                            polo17black_001_material,
                            polo17chrome_001_material,
                            polo17_glass_int_001_material,
                            polo17gauges2_001_material,
                            polo17plastik_001_material,
                            polo17gauges2_001_material,
                            sunburst_001_material,
                            polo17gauges2_001_material,
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_door_FR_polo17black_0_mesh.mesh"
                        materials: [
                            polo17black_001_material,
                            polo17body_001_material,
                            polo17chrome_001_material,
                            polo17_glass_int_001_material,
                            polo17gauges2_001_material,
                            polo17plastik_001_material,
                            polo17gauges2_001_material,
                            sunburst_001_material,
                            polo17gauges2_001_material,
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_doorglass_RR_polo17_glass_0_mesh.mesh"
                        materials: [
                            polo17_glass_int_001_material,
                            polo17black_001_material,
                            polo17body_001_material,
                            polo17chrome_001_material,
                            polo17gauges2_001_material,
                            polo17plastik_001_material,
                            polo17gauges2_001_material,
                            sunburst_001_material,
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_doorpanel_RL_polo17plastik_0_mesh.mesh"
                        materials: [
                            polo17plastik_001_material,
                            polo17black_001_material,
                            polo17body_001_material,
                            polo17chrome_001_material,
                            polo17_glass_int_001_material,
                            polo17gauges2_001_material,
                            polo17gauges2_001_material,
                            sunburst_001_material
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
                        source: "meshes/polo17_engbaycrap_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_engine_sunburst_engine_0_001_mesh.mesh"
                        materials: [
                            sunburst_engine_001_material
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
                        source: "meshes/polo17_exhaust_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
                        ]
                    }
                    Model {
                        id: polo17_exhaust_sunburst_0
                        objectName: "polo17_exhaust_sunburst_0"
                        source: "meshes/polo17_exhaust_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_fender_L_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_fender_L_polo17body_0
                        objectName: "polo17_fender_L_polo17body_0"
                        source: "meshes/polo17_fender_L_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_001_material
                        ]
                    }
                    Model {
                        id: polo17_fender_L_polo17chrome_0
                        objectName: "polo17_fender_L_polo17chrome_0"
                        source: "meshes/polo17_fender_L_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_fender_R_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_fender_R_polo17body_0
                        objectName: "polo17_fender_R_polo17body_0"
                        source: "meshes/polo17_fender_R_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_001_material
                        ]
                    }
                    Model {
                        id: polo17_fender_R_polo17chrome_0
                        objectName: "polo17_fender_R_polo17chrome_0"
                        source: "meshes/polo17_fender_R_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_foglights_polo17fog_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_fueltank_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_gaspedal_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_gauges21_polo17clock_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_gauges21_polo17gauges_0
                        objectName: "polo17_gauges21_polo17gauges_0"
                        source: "meshes/polo17_gauges21_polo17gauges_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_gaugesss_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_grille_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_grille_polo17chrome_0
                        objectName: "polo17_grille_polo17chrome_0"
                        source: "meshes/polo17_grille_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
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
                        source: "meshes/polo17_halfshaft_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_headlight_L_polo17head_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17light_0
                        objectName: "polo17_headlight_L_polo17light_0"
                        source: "meshes/polo17_headlight_L_polo17light_0_001_mesh.mesh"
                        materials: [
                            polo17light_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17long_0
                        objectName: "polo17_headlight_L_polo17long_0"
                        source: "meshes/polo17_headlight_L_polo17long_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17pov_L_0
                        objectName: "polo17_headlight_L_polo17pov_L_0"
                        source: "meshes/polo17_headlight_L_polo17pov_L_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17run_0
                        objectName: "polo17_headlight_L_polo17run_0"
                        source: "meshes/polo17_headlight_L_polo17run_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_headlight_R_polo17head_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17light_0
                        objectName: "polo17_headlight_R_polo17light_0"
                        source: "meshes/polo17_headlight_R_polo17light_0_001_mesh.mesh"
                        materials: [
                            polo17light_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17long_0
                        objectName: "polo17_headlight_R_polo17long_0"
                        source: "meshes/polo17_headlight_R_polo17long_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17pov_R_0
                        objectName: "polo17_headlight_R_polo17pov_R_0"
                        source: "meshes/polo17_headlight_R_polo17pov_R_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17run_0
                        objectName: "polo17_headlight_R_polo17run_0"
                        source: "meshes/polo17_headlight_R_polo17run_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        position: Qt.vector3d(0.00902269, -1.09553, 0.953161)
                        source: "meshes/polo17_hood_polo17black_0_mesh.mesh"
                        materials: [
                            polo17black_001_material,
                            polo17chrome_001_material,
                            polo17body_001_material
                        ]
                    }
                }
                Node {
                    id: polo17_hub_F
                    objectName: "polo17_hub_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_hub_F_sunburst_0
                        objectName: "polo17_hub_F_sunburst_0"
                        source: "meshes/polo17_hub_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_hub_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_intake_NA_sunburst_engine_0_001_mesh.mesh"
                        materials: [
                            sunburst_engine_001_material
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
                        source: "meshes/polo17_lowerarm_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_lowerarm_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_needle_speedo_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_needle_speedo_polo17gauges2_0
                        objectName: "polo17_needle_speedo_polo17gauges2_0"
                        source: "meshes/polo17_needle_speedo_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_needle_speedo_polo17sgray_0
                        objectName: "polo17_needle_speedo_polo17sgray_0"
                        source: "meshes/polo17_needle_speedo_polo17sgray_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_needle_tacho_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_needle_tacho_polo17gauges2_0
                        objectName: "polo17_needle_tacho_polo17gauges2_0"
                        source: "meshes/polo17_needle_tacho_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_needle_tacho_polo17sgray_0
                        objectName: "polo17_needle_tacho_polo17sgray_0"
                        source: "meshes/polo17_needle_tacho_polo17sgray_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_parkingbrake_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_parkingbrake_polo17plastik_0
                        objectName: "polo17_parkingbrake_polo17plastik_0"
                        source: "meshes/polo17_parkingbrake_polo17plastik_0_001_mesh.mesh"
                        materials: [
                            polo17plastik_001_material
                        ]
                    }
                    Model {
                        id: polo17_parkingbrake_polo17salon2_0
                        objectName: "polo17_parkingbrake_polo17salon2_0"
                        source: "meshes/polo17_parkingbrake_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        source: "meshes/polo17_radiator_sunburst_engine_0_001_mesh.mesh"
                        materials: [
                            sunburst_engine_001_material
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
                        source: "meshes/polo17_seats_FL_polo17seats2_0_001_mesh.mesh"
                        materials: [
                            polo17seats2_001_material
                        ]
                    }
                    Model {
                        id: polo17_seats_FL_polo17seats_0
                        objectName: "polo17_seats_FL_polo17seats_0"
                        source: "meshes/polo17_seats_FL_polo17seats_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_seats_FR_polo17seats2_0_001_mesh.mesh"
                        materials: [
                            polo17seats2_001_material
                        ]
                    }
                    Model {
                        id: polo17_seats_FR_polo17seats_0
                        objectName: "polo17_seats_FR_polo17seats_0"
                        source: "meshes/polo17_seats_FR_polo17seats_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_seats_R_polo17seats2_0_001_mesh.mesh"
                        materials: [
                            polo17seats2_001_material
                        ]
                    }
                    Model {
                        id: polo17_seats_R_polo17seats_0
                        objectName: "polo17_seats_R_polo17seats_0"
                        source: "meshes/polo17_seats_R_polo17seats_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_shifter_boot_M_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_shifter_knob_M_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_shifter_knob_M_polo17salon2_0
                        objectName: "polo17_shifter_knob_M_polo17salon2_0"
                        source: "meshes/polo17_shifter_knob_M_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
                        ]
                    }
                    Model {
                        id: polo17_shifter_knob_M_polo17sgray_0
                        objectName: "polo17_shifter_knob_M_polo17sgray_0"
                        source: "meshes/polo17_shifter_knob_M_polo17sgray_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
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
                        source: "meshes/polo17_signalstalk_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        source: "meshes/polo17_steer_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17chrome_0
                        objectName: "polo17_steer_polo17chrome_0"
                        source: "meshes/polo17_steer_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_001_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17gauges2_0
                        objectName: "polo17_steer_polo17gauges2_0"
                        source: "meshes/polo17_steer_polo17gauges2_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17salon2_0
                        objectName: "polo17_steer_polo17salon2_0"
                        source: "meshes/polo17_steer_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        source: "meshes/polo17_strut_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_subframe_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_subframe_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_swaybar_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_swaybar_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_taillight_L_polo17gabarit_0_001_mesh.mesh"
                        materials: [
                            polo17gabarit_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17lightR_0
                        objectName: "polo17_taillight_L_polo17lightR_0"
                        source: "meshes/polo17_taillight_L_polo17lightR_0_001_mesh.mesh"
                        materials: [
                            polo17lightR_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17pov_L_0
                        objectName: "polo17_taillight_L_polo17pov_L_0"
                        source: "meshes/polo17_taillight_L_polo17pov_L_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17reve_0
                        objectName: "polo17_taillight_L_polo17reve_0"
                        source: "meshes/polo17_taillight_L_polo17reve_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17stop_0
                        objectName: "polo17_taillight_L_polo17stop_0"
                        source: "meshes/polo17_taillight_L_polo17stop_0_001_mesh.mesh"
                        materials: [
                            polo17stop_001_material
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
                        source: "meshes/polo17_taillight_R_polo17gabarit_0_001_mesh.mesh"
                        materials: [
                            polo17gabarit_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17lightR_0
                        objectName: "polo17_taillight_R_polo17lightR_0"
                        source: "meshes/polo17_taillight_R_polo17lightR_0_001_mesh.mesh"
                        materials: [
                            polo17lightR_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17pov_R_0
                        objectName: "polo17_taillight_R_polo17pov_R_0"
                        source: "meshes/polo17_taillight_R_polo17pov_R_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17reve_0
                        objectName: "polo17_taillight_R_polo17reve_0"
                        source: "meshes/polo17_taillight_R_polo17reve_0_001_mesh.mesh"
                        materials: [
                            polo17gauges2_001_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17stop_0
                        objectName: "polo17_taillight_R_polo17stop_0"
                        source: "meshes/polo17_taillight_R_polo17stop_0_001_mesh.mesh"
                        materials: [
                            polo17stop_001_material
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
                        source: "meshes/polo17_taillightglass_L_polo17lightglass_R_0_001_mesh.mesh"
                        materials: [
                            polo17lightglass_R_001_material
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
                        source: "meshes/polo17_taillightglass_R_polo17lightglass_R_0_001_mesh.mesh"
                        materials: [
                            polo17lightglass_R_001_material
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
                        source: "meshes/polo17_tierod_F_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_trailingarm_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_transmission_awd_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        position: Qt.vector3d(0.000378233, 1.8316, 1.00383)
                        source: "meshes/polo17_trunk_polo17chrome_0_mesh.mesh"
                        materials: [
                            polo17chrome_001_material,
                            polo17black_001_material,
                            polo17body_001_material,
                            polo17plastik_001_material
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
                        source: "meshes/polo17_tubs_FL_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_tubs_FR_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_unebody_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
                        ]
                    }
                    Model {
                        id: polo17_unebody_sunburst_0
                        objectName: "polo17_unebody_sunburst_0"
                        position: Qt.vector3d(0.0172146, 1.82018, 1.01516)
                        source: "meshes/polo17_unebody_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_upperarm_R_sunburst_0_001_mesh.mesh"
                        materials: [
                            sunburst_001_material
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
                        source: "meshes/polo17_windshield_polo17_glass_0_001_mesh.mesh"
                        materials: [
                            polo17_glass_int_001_material
                        ]
                    }
                }
                Node {
                    id: polo17_wiperL
                    objectName: "polo17_wiperL"
                    position: Qt.vector3d(45.9228, 92.0844, 115.811)
                    rotation: Qt.quaternion(0.902467, -0.427263, 0.054567, 0.0046501)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_wiperL_polo17black_0
                        objectName: "polo17_wiperL_polo17black_0"
                        source: "meshes/polo17_wiperL_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_wiperR_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_wipers_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_001_material
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
                        source: "meshes/polo17_wiperstalk_polo17salon2_0_001_mesh.mesh"
                        materials: [
                            polo17salon2_001_material
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
                        id: polo17wheel_polo17wheel_0
                        objectName: "polo17wheel_polo17wheel_0"
                        source: "meshes/polo17wheel_polo17wheel_0_mesh.mesh"
                        materials: [
                            polo17wheel_001_material,
                            polo17black_001_material,
                            tire_01a_001_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25
                        objectName: "tire_01a_16x7_25"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                    }
                }
                Node {
                    id: polo17wheel_001
                    objectName: "polo17wheel.001"
                    position: Qt.vector3d(-74.8211, 28.4852, -127.572)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 88.9372, 88.9372)
                    Model {
                        id: polo17wheel_001_polo17wheel_0
                        objectName: "polo17wheel.001_polo17wheel_0"
                        source: "meshes/polo17wheel_001_polo17wheel_0_mesh.mesh"
                        materials: [
                            polo17wheel_001_material,
                            polo17black_001_material,
                            tire_01a_001_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_001
                        objectName: "tire_01a_16x7_25.001"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                    }
                }
                Node {
                    id: polo17wheel_002
                    objectName: "polo17wheel.002"
                    position: Qt.vector3d(70.7198, 28.4852, -127.572)
                    rotation: Qt.quaternion(-1.29498e-07, 1.00486e-14, 0.707107, 0.707107)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_002_polo17wheel_0
                        objectName: "polo17wheel.002_polo17wheel_0"
                        source: "meshes/polo17wheel_002_polo17wheel_0_mesh.mesh"
                        materials: [
                            polo17wheel_001_material,
                            polo17black_001_material,
                            tire_01a_001_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_002
                        objectName: "tire_01a_16x7_25.002"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                    }
                }
                Node {
                    id: polo17wheel_003
                    objectName: "polo17wheel.003"
                    position: Qt.vector3d(70.7198, 28.4852, 129.428)
                    rotation: Qt.quaternion(-1.29498e-07, 1.00486e-14, 0.707107, 0.707107)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_003_polo17black_0
                        objectName: "polo17wheel.003_polo17black_0"
                        source: "meshes/polo17wheel_003_polo17black_0_mesh.mesh"
                        materials: [
                            polo17black_001_material,
                            polo17wheel_001_material,
                            tire_01a_001_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_003
                        objectName: "tire_01a_16x7_25.003"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: polo17_door_FL_polo17body_0Action_timeline
        objectName: "polo17_door_FL_polo17body_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1459
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1459
            from: 0
            to: 1459
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_door_FL_polo17body_0
            property: "rotation"
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999999, -1.77636e-14, 5.20918e-10, -0.00171951)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999977, -3.55366e-15, 2.03916e-09, -0.0067311)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.99989, -1.06628e-14, 4.49133e-09, -0.0148255)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.999667, -1.42295e-14, 7.81703e-09, -0.0258034)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.999221, -1.78052e-14, 1.1957e-08, -0.0394691)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.998452, -7.11645e-15, 1.68514e-08, -0.0556251)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.997253, -2.14863e-14, 2.24379e-08, -0.0740657)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.995518, -1.08176e-14, 2.86507e-08, -0.0945735)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.993142, -1.25204e-14, 3.54188e-08, -0.116914)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.990033, -2.37737e-14, 4.26659e-08, -0.140836)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.986114, -1.98151e-14, 5.03101e-08, -0.166069)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.981331, -7.2406e-15, 5.82642e-08, -0.192325)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.975657, -1.54758e-14, 6.64364e-08, -0.219301)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.969096, -7.33202e-15, 7.47322e-08, -0.246685)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.961684, -1.29299e-14, 8.30557e-08, -0.27416)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.953494, -1.6767e-14, 9.1312e-08, -0.301413)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.944629, -1.50438e-14, 9.94089e-08, -0.32814)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.935225, -9.49695e-15, 1.07259e-07, -0.354053)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.925444, -9.59732e-15, 1.14781e-07, -0.378884)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.915468, -1.94038e-14, 1.21903e-07, -0.40239)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.905496, -1.17705e-14, 1.28557e-07, -0.424356)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.895734, -1.98313e-14, 1.34687e-07, -0.444591)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.886395, -3.60724e-14, 1.40243e-07, -0.462931)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.877689, -2.0239e-14, 1.45181e-07, -0.479231)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.869823, -2.45065e-14, 1.49463e-07, -0.493364)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.862996, -4.11672e-15, 1.53052e-07, -0.505211)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.857397, -2.48616e-14, 1.55913e-07, -0.514656)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.853203, -2.91478e-14, 1.58011e-07, -0.52158)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.850578, -4.17682e-15, 1.59304e-07, -0.525849)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.849672, -5.01753e-14, 1.59747e-07, -0.527311)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.890998, -4.78481e-14, 1.3754e-07, -0.454007)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.961684, -2.7707e-14, 8.30558e-08, -0.27416)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.996459, -4.65722e-14, 2.54704e-08, -0.0840755)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
        }
    }
    Timeline {
        id: polo17_door_FR_polo17black_0Action_timeline
        objectName: "polo17_door_FR_polo17black_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1459
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1459
            from: 0
            to: 1459
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_door_FR_polo17black_0
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999998, -7.10549e-15, -5.39538e-10, 0.00178097)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999976, -1.42112e-14, -2.11233e-09, 0.00697264)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999882, -1.06629e-14, -4.65334e-09, 0.0153603)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999642, -1.77699e-14, -8.10091e-09, 0.0267404)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.999163, -7.11138e-15, -1.23947e-08, 0.0409138)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.998335, -7.11728e-15, -1.74736e-08, 0.0576791)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.997045, -1.4253e-14, -2.32741e-08, 0.076826)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.995174, 0, -2.97284e-08, 0.0981309)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.99261, -1.45404e-14, -3.67631e-08, 0.121352)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.989251, -1.48142e-14, -4.42989e-08, 0.146227)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.985014, -1.48779e-14, -5.22498e-08, 0.172472)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.97984, -1.54097e-14, -6.05241e-08, 0.199785)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.973697, 0, -6.90249e-08, 0.227845)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.966591, -1.74587e-14, -7.76519e-08, 0.256323)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.958563, -1.2972e-14, -8.63038e-08, 0.284882)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.949691, -9.35229e-15, -9.48796e-08, 0.31319)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.94009, -9.4478e-15, -1.03282e-07, 0.340925)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.929911, -1.33717e-14, -1.11419e-07, 0.367786)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.919328, -1.54579e-14, -1.19207e-07, 0.393491)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.908543, -1.95517e-14, -1.26568e-07, 0.417791)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.897771, -1.78077e-14, -1.33436e-07, 0.440462)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.887237, -2.40255e-14, -1.39754e-07, 0.461315)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.877168, -4.05021e-15, -1.4547e-07, 0.480183)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.867792, -2.04698e-14, -1.50542e-07, 0.496927)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.859329, -2.06714e-14, -1.54934e-07, 0.511423)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.85199, -2.50194e-14, -1.5861e-07, 0.523558)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.845975, -2.93968e-14, -1.61538e-07, 0.533222)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.841473, -1.68881e-14, -1.63682e-07, 0.540299)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.838657, -3.38896e-14, -1.65003e-07, 0.544661)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.837685, -2.96878e-14, -1.65455e-07, 0.546153)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.867792, -4.09397e-14, -1.50542e-07, 0.496927)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.929911, -3.24742e-14, -1.11419e-07, 0.367786)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.97984, -2.99129e-14, -6.05241e-08, 0.199785)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.998335, -4.63179e-14, -1.74736e-08, 0.057679)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
        }
    }
    Timeline {
        id: polo17_doorglass_RR_polo17_glass_0Action_timeline
        objectName: "polo17_doorglass_RR_polo17_glass_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1459
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1459
            from: 0
            to: 1459
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_doorglass_RR_polo17_glass_0
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999998, -1.06582e-14, -5.89654e-10, 0.00194641)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999971, -7.10737e-15, -2.30933e-09, 0.00762291)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999859, -7.10643e-15, -5.08997e-09, 0.0168016)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999572, -1.42447e-14, -8.86714e-09, 0.0292697)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.998995, -1.78092e-14, -1.35782e-08, 0.0448206)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.997998, -1.4295e-14, -1.91598e-08, 0.0632449)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.996439, -1.42616e-14, -2.55451e-08, 0.0843222)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.994171, -1.45175e-14, -3.26618e-08, 0.107814)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.991055, -1.47872e-14, -4.04302e-08, 0.133457)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.986961, -1.0799e-14, -4.87624e-08, 0.160961)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.981783, -7.6896e-15, -5.75614e-08, 0.190005)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.975445, -1.36581e-14, -6.67219e-08, 0.220243)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.967908, -1.37644e-14, -7.61316e-08, 0.251304)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.959178, -1.29637e-14, -8.56738e-08, 0.282802)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.949309, -1.87121e-14, -9.52295e-08, 0.314345)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.938403, -9.46479e-15, -1.04681e-07, 0.345544)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.926609, -9.58526e-15, -1.13916e-07, 0.376027)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.914118, -7.77298e-15, -1.22829e-07, 0.405448)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.901157, -1.77408e-14, -1.31325e-07, 0.433493)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.887977, -2.00045e-14, -1.39321e-07, 0.459887)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.874847, -2.03048e-14, -1.46747e-07, 0.484399)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.862044, -2.06063e-14, -1.53544e-07, 0.506834)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.849843, -1.67217e-14, -1.59664e-07, 0.527037)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.838515, -3.81322e-14, -1.65069e-07, 0.544879)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.828319, -8.57813e-15, -1.69728e-07, 0.560257)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.8195, -8.67044e-15, -1.73612e-07, 0.573079)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.812289, -3.49896e-14, -1.76695e-07, 0.583255)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.806901, -2.64175e-14, -1.78946e-07, 0.590686)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.803535, -1.76854e-14, -1.80331e-07, 0.595257)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.802375, -3.09942e-14, -1.80804e-07, 0.59682)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.838515, -6.77906e-14, -1.65069e-07, 0.544879)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.914118, -4.85812e-14, -1.22829e-07, 0.405448)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.975445, -4.37058e-14, -6.67218e-08, 0.220243)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.997998, -4.98378e-14, -1.91598e-08, 0.0632449)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
        }
    }
    Timeline {
        id: polo17_doorpanel_RL_polo17plastik_0Action_timeline
        objectName: "polo17_doorpanel_RL_polo17plastik_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 1459
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 1459
            from: 0
            to: 1459
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_doorpanel_RL_polo17plastik_0
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999998, -7.10544e-15, 5.90376e-10, -0.00194879)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999971, -1.42121e-14, 2.31211e-09, -0.00763206)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.999858, -2.4876e-14, 5.09613e-09, -0.0168219)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.99957, -1.7799e-14, 8.87797e-09, -0.0293054)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.998993, -1.4253e-14, 1.3595e-08, -0.0448758)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.997993, -1.42951e-14, 1.91837e-08, -0.0633237)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.99643, -2.13927e-14, 2.55773e-08, -0.0844286)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.994156, -1.42944e-14, 3.27035e-08, -0.107951)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.991031, -1.07546e-14, 4.04824e-08, -0.133629)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.986927, -7.19955e-15, 4.8826e-08, -0.161171)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.981735, -1.49276e-14, 5.76372e-08, -0.190256)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.975379, -1.3659e-14, 6.68104e-08, -0.220536)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.967821, -1.46834e-14, 7.62333e-08, -0.25164)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.959066, -5.55652e-15, 8.57887e-08, -0.283181)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.949169, -1.31004e-14, 9.53573e-08, -0.314766)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.938232, -1.8933e-14, 1.04821e-07, -0.346007)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.926405, -1.34223e-14, 1.14068e-07, -0.376529)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.913879, -1.555e-14, 1.22992e-07, -0.405986)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.900882, -9.85898e-15, 1.31498e-07, -0.434063)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.887666, -1.20069e-14, 1.39503e-07, -0.460487)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.874501, -8.12512e-15, 1.46936e-07, -0.485024)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.861663, -1.64924e-14, 1.53739e-07, -0.507481)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.84943, -2.92773e-14, 1.59865e-07, -0.527701)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.838073, -1.27174e-14, 1.65275e-07, -0.545558)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.827851, -2.57489e-14, 1.69937e-07, -0.560948)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.819011, 8.67562e-15, 1.73824e-07, -0.573778)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.811783, -3.0635e-14, 1.76908e-07, -0.58396)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.806382, -5.72747e-14, 1.79161e-07, -0.591396)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.803007, -1.32728e-14, 1.80547e-07, -0.595969)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.801844, -5.75988e-14, 1.8102e-07, -0.597533)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.838073, -4.23915e-14, 1.65275e-07, -0.545558)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.913879, -4.47063e-14, 1.22992e-07, -0.405986)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.975379, -4.00663e-14, 6.68103e-08, -0.220535)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.997993, -4.27183e-14, 1.91836e-08, -0.0633237)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
        }
    }
    Timeline {
        id: polo17_hood_polo17black_0Action_timeline
        objectName: "polo17_hood_polo17black_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 2084
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 2084
            from: 0
            to: 2084
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_hood_polo17black_0
            property: "rotation"
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.999988, -0.00491635, 1.00365e-10, -1.48008e-08)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.999823, -0.0187998, 4.42952e-10, -1.45192e-08)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.999184, -0.0403841, 8.83121e-10, -1.40872e-08)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.997659, -0.0683887, 8.22008e-10, -1.3537e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.994839, -0.101462, -1.16349e-09, -1.29027e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.990411, -0.138154, 6.17242e-09, -1.22191e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.984225, -0.176922, 2.17232e-09, -1.90905e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.976355, -0.216173, 1.86653e-09, -1.08396e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.967118, -0.254329, 5.35655e-09, -2.50085e-09)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.957059, -0.289892, 1.1067e-09, -2.52089e-08)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.946911, -0.321496, 8.5694e-09, -9.15945e-09)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.937523, -0.347924, 3.2207e-10, -1.67235e-08)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.929792, -0.368086, 7.10702e-12, -1.65092e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.924591, -0.38096, 7.85202e-09, -8.32281e-09)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.922707, -0.385501, 1.58656e-08, -8.26281e-09)
            }
        }
    }
    Timeline {
        id: polo17_trunk_polo17chrome_0Action_timeline
        objectName: "polo17_trunk_polo17chrome_0Action"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 2084
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 2084
            from: 0
            to: 2084
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: polo17_trunk_polo17chrome_0
            property: "rotation"
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(1, -2.4869e-14, 8.88178e-16, -1.49012e-08)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.999978, 0.00664265, -1.32878e-10, -7.58664e-09)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.999676, 0.0254607, -4.9464e-10, -1.54269e-08)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.998493, 0.054875, -7.72769e-11, -1.60463e-08)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.99564, 0.0932763, 7.41003e-10, -1.68747e-08)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.99031, 0.138874, -1.35455e-09, -1.7888e-08)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.981859, 0.189612, -1.71348e-09, -1.14673e-08)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.969981, 0.243181, -2.22345e-09, -2.03373e-08)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.954836, 0.297133, 1.0182e-09, -6.07874e-09)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.937101, 0.349058, -7.64571e-09, -1.50917e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.917913, 0.396783, -8.59886e-09, -8.11737e-09)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.898735, 0.438493, -1.28532e-09, -1.72608e-08)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.881186, 0.472769, -2.03608e-09, -9.6719e-09)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.866889, 0.498502, -1.12541e-08, -1.01983e-08)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.857353, 0.514728, -1.17716e-08, -1.05303e-08)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.853915, 0.520412, -3.23474e-09, -1.93718e-08)
            }
        }
    }
}
