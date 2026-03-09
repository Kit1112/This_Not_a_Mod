package net.code.thisnotamod;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.core.BlockPos;
import org.joml.Vector3d;
import net.code.thisnotamod.block.entity.PanelsV2TileEntity;

public class OBBPhysicsHandler {
    
    public static void handlePhysics(Entity entity) {
        AABB currentBox = entity.getBoundingBox();
        BlockPos pos = entity.blockPosition();
        
        Vec3 totalPush = Vec3.ZERO;
        boolean touchedFloor = false;
        boolean touchedCeiling = false;

        for (int x = -4; x <= 4; x++) {
            for (int y = -4; y <= 4; y++) {
                for (int z = -4; z <= 4; z++) {
                    BlockPos checkPos = pos.offset(x, y, z);
                    
                    if (entity.level().getBlockEntity(checkPos) instanceof PanelsV2TileEntity tile) {
                        if (!tile.getBroadBox().intersects(currentBox)) continue;

                        for (OBB obb : tile.getOBBs()) {
                            // ВОТ ОНА - МАГИЯ ДЕКУПЛИНГА (Развязка визуала и физики)
                            // Сдвигаем центр коллизии на полблока (-0.5). 
                            // Если "влево" или "вперёд" уехали в противоположную сторону 
                            // (зависит от того, куда смотрит блок), просто поменяй -0.5 на +0.5
                            Vector3d shiftedCenter = new Vector3d(
                                obb.center().x + 0.5, 
                                obb.center().y, 
                                obb.center().z + 0.5
                            );
                            
                            // Создаем временный OBB чисто для физики игрока
                            OBB physicsObb = new OBB(shiftedCenter, obb.extents(), obb.rotation(), obb.zoneName());

                            // Проверяем столкновение со СДВИНУТЫМ хитбоксом
                            Vec3 push = physicsObb.getOverlap(currentBox);
                            
                            if (push.lengthSqr() > 1e-9) {
                                // Добавляем вектор выталкивания к общему сдвигу
                                totalPush = totalPush.add(push);
                                currentBox = currentBox.move(push);

                                // Анализируем, обо что мы ударились
                                Vec3 norm = push.normalize();
                                if (norm.y > 0.4) touchedFloor = true;       // Наступили на пол
                                else if (norm.y < -0.4) touchedCeiling = true; // Уперлись в потолок
                            }
                        }
                    }
                }
            }
        }

        // Если было столкновение с OBB, применяем его к реальной позиции игрока
        if (totalPush.lengthSqr() > 1e-9) {
            // Ювелирно выставляем на поверхность/выталкиваем из стены
            entity.setPos(entity.getX() + totalPush.x, entity.getY() + totalPush.y, entity.getZ() + totalPush.z);
            
            // --- ПОДМЕНА ВАНИЛЬНЫХ СТАТУСОВ ---
            if (touchedFloor) {
                // Имитация настоящего VoxelShape под ногами
                entity.setOnGround(true);
                entity.fallDistance = 0.0F; // Обнуляем урон от падения
                
                Vec3 motion = entity.getDeltaMovement();
                if (motion.y < 0) {
                    // Останавливаем гравитацию, иначе нас будет тянуть сквозь пол
                    entity.setDeltaMovement(motion.multiply(1, 0, 1)); 
                }
            } else if (touchedCeiling) {
                // Имитация удара головой
                Vec3 motion = entity.getDeltaMovement();
                if (motion.y > 0) {
                    entity.setDeltaMovement(motion.multiply(1, 0, 1));
                }
            }
            
            // Если мы ударились о стену (не пол и не потолок), гасим скорость "в стену",
            // чтобы камера не дергалась при попытке идти сквозь OBB.
            if (!touchedFloor && !touchedCeiling) {
                entity.setDeltaMovement(entity.getDeltaMovement().multiply(0.5, 1, 0.5));
            }
        }
    }
}