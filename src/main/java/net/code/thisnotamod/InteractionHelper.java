package net.code.thisnotamod;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.phys.Vec3;
import org.joml.Vector3d;
import java.util.Optional;

public class InteractionHelper {
    
    /**
     * Определяет, на какую зону OBB смотрит игрок в момент клика.
     */
    public static Optional<OBB> getTargetedZone(Player player, OBBEntity station, double reachDistance) {
        Vec3 eyePos = player.getEyePosition();
        Vec3 lookVec = player.getLookAngle().scale(reachDistance);
        
        Vector3d rayOrigin = new Vector3d(eyePos.x, eyePos.y, eyePos.z);
        Vector3d rayDir = new Vector3d(lookVec.x, lookVec.y, lookVec.z);

        OBB closestHit = null;
        double closestDist = Double.MAX_VALUE;

        for (OBB obb : station.getOBBs()) {
            Optional<Vector3d> hitOpt = obb.clip(rayOrigin, rayDir);
            if (hitOpt.isPresent()) {
                double dist = hitOpt.get().distance(rayOrigin);
                if (dist < closestDist) {
                    closestDist = dist;
                    closestHit = obb;
                }
            }
        }

        return Optional.ofNullable(closestHit);
    }
}