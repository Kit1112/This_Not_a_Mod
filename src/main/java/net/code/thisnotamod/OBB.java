package net.code.thisnotamod;

import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import org.joml.Matrix4d;
import org.joml.Quaterniond;
import org.joml.Vector3d;
import org.joml.Vector4d;

import java.util.Optional;

public record OBB(Vector3d center, Vector3d extents, Quaterniond rotation, String zoneName) {

    public Optional<Vector3d> clip(Vector3d rayOrigin, Vector3d rayDir) {
        Matrix4d inverseTransform = new Matrix4d().translate(center).rotate(rotation).invert();
        Vector4d localOrigin4 = inverseTransform.transform(new Vector4d(rayOrigin.x, rayOrigin.y, rayOrigin.z, 1.0));
        Vector4d localDir4 = inverseTransform.transform(new Vector4d(rayDir.x, rayDir.y, rayDir.z, 0.0));
        Vector3d localOrigin = new Vector3d(localOrigin4.x, localOrigin4.y, localOrigin4.z);
        Vector3d localDir = new Vector3d(localDir4.x, localDir4.y, localDir4.z).normalize();

        double tMin = Double.NEGATIVE_INFINITY;
        double tMax = Double.POSITIVE_INFINITY;

        for (int i = 0; i < 3; ++i) {
            double originAxis = localOrigin.get(i);
            double dirAxis = localDir.get(i);
            double extentAxis = extents.get(i);
            if (Math.abs(dirAxis) < 1e-6) {
                if (originAxis < -extentAxis || originAxis > extentAxis) return Optional.empty();
            } else {
                double t1 = (-extentAxis - originAxis) / dirAxis;
                double t2 = (extentAxis - originAxis) / dirAxis;
                if (t1 > t2) { double temp = t1; t1 = t2; t2 = temp; }
                if (t1 > tMin) tMin = t1;
                if (t2 < tMax) tMax = t2;
                if (tMin > tMax || tMax < 0) return Optional.empty();
            }
        }
        Vector3d hitLocal = new Vector3d(localDir).mul(tMin > 0 ? tMin : tMax).add(localOrigin);
        Vector4d hitWorld = new Matrix4d().translate(center).rotate(rotation).transform(new Vector4d(hitLocal.x, hitLocal.y, hitLocal.z, 1.0));
        return Optional.of(new Vector3d(hitWorld.x, hitWorld.y, hitWorld.z));
    }

    /**
     * Вычисляет MTV (Minimum Translation Vector) через полный 3D SAT.
     * Проверяются 15 осей для полного исключения "прострелов" сквозь углы.
     */
    /**
     * Вычисляет MTV (Minimum Translation Vector) через полный 3D SAT.
     * Включает Y-Bias для идеальной ходьбы по поверхностям и краям.
     */
    public Vec3 getOverlap(AABB aabb) {
        Vector3d aabbCenter = new Vector3d(aabb.getCenter().x, aabb.getCenter().y, aabb.getCenter().z);
        Vector3d aabbExtents = new Vector3d(aabb.getXsize() / 2.0, aabb.getYsize() / 2.0, aabb.getZsize() / 2.0);

        Vector3d L = new Vector3d(aabbCenter).sub(this.center);

        Vector3d[] axes = new Vector3d[15];
        axes[0] = new Vector3d(1, 0, 0).rotate(rotation);
        axes[1] = new Vector3d(0, 1, 0).rotate(rotation);
        axes[2] = new Vector3d(0, 0, 1).rotate(rotation);
        axes[3] = new Vector3d(1, 0, 0);
        axes[4] = new Vector3d(0, 1, 0);
        axes[5] = new Vector3d(0, 0, 1);

        int idx = 6;
        for (int i = 0; i < 3; i++) {
            for (int j = 3; j < 6; j++) {
                axes[idx++] = new Vector3d(axes[i]).cross(axes[j]);
            }
        }

        double minOverlap = Double.MAX_VALUE;
        double bestWeight = Double.MAX_VALUE;
        Vector3d collisionNormal = new Vector3d();

        for (Vector3d axis : axes) {
            if (axis.lengthSquared() < 1e-6) continue;
            axis.normalize();

            double rA = extents.x * Math.abs(axes[0].dot(axis)) +
                        extents.y * Math.abs(axes[1].dot(axis)) +
                        extents.z * Math.abs(axes[2].dot(axis));

            double rB = aabbExtents.x * Math.abs(axes[3].dot(axis)) +
                        aabbExtents.y * Math.abs(axes[4].dot(axis)) +
                        aabbExtents.z * Math.abs(axes[5].dot(axis));

            double distance = Math.abs(L.dot(axis));
            double overlap = rA + rB - distance;

            // Если есть зазор хотя бы по одной оси — столкновения точно нет
            if (overlap <= 0) return Vec3.ZERO;

            // МАГИЯ ДЛЯ ХОДЬБЫ: Заставляем SAT предпочитать выталкивание вверх (по оси Y)
            // Это решает проблему соскальзывания с краев повернутых OBB
            double weight = 1.0;
            if (Math.abs(axis.y) > 0.6) { // Если ось в основном вертикальная (пол/потолок)
                weight = 0.05; // Делаем эту ось "дешевой" для алгоритма
            }

            // Ищем минимальное перекрытие с учетом веса
            if (overlap * weight < minOverlap * bestWeight) {
                minOverlap = overlap;
                bestWeight = weight;
                
                collisionNormal.set(axis);
                if (L.dot(axis) < 0) {
                    collisionNormal.negate();
                }
            }
        }

        return new Vec3(collisionNormal.x * minOverlap, collisionNormal.y * minOverlap, collisionNormal.z * minOverlap);
    }
}