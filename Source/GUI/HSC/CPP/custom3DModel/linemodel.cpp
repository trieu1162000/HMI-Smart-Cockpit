#include "linemodel.h"
#include <QVector3D>

lineModel::lineModel(QObject *parent)
    : m_length(3.0f) {  // Default length = 3 units
    setLine(m_length);
}

void lineModel::setLength(float newLength) {
    if (qFuzzyCompare(m_length, newLength)) return;  // Avoid unnecessary updates
    m_length = newLength;
    setLine(m_length);
    emit lengthChanged();
}

void lineModel::setLine(float length) {
    clear();

    QByteArray vertexData;
    vertexData.resize(2 * 3 * sizeof(float));  // 2 vertices, 3 floats each
    float *vertices = reinterpret_cast<float *>(vertexData.data());

    vertices[0] = 0.0f; vertices[1] = 0.0f; vertices[2] = 0.0f; // Start point
    vertices[3] = 0.0f; vertices[4] = length; vertices[5] = 0.0f; // End point

    setStride(3 * sizeof(float));
    setVertexData(vertexData);

    addAttribute(QQuick3DGeometry::Attribute::PositionSemantic, 0,
                 QQuick3DGeometry::Attribute::ComponentType::F32Type);

    setPrimitiveType(QQuick3DGeometry::PrimitiveType::Lines);
    update();
}
