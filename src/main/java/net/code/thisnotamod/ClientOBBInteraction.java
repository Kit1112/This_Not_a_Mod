package net.code.thisnotamod;

import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.client.event.InputEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraft.client.Minecraft;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.HitResult;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.ItemStack;

import net.code.thisnotamod.block.entity.PanelsV2TileEntity;
import net.code.thisnotamod.OBB;
import net.code.thisnotamod.network.OpenPanelPacket;
import net.code.thisnotamod.network.BreakPanelPacket;
import net.code.thisnotamod.network.ModMessages;

import org.joml.Vector3d;
import java.util.Optional;

@Mod.EventBusSubscriber(value = Dist.CLIENT)
public class ClientOBBInteraction {

    @SubscribeEvent
    public static void onRightClick(InputEvent.InteractionKeyMappingTriggered event) {
        if (!event.isUseItem()) return;

        Minecraft mc = Minecraft.getInstance();
        Player player = mc.player;
        if (player == null || mc.level == null) return;

        double reach = player.getBlockReach();
        Vec3 eyePos = player.getEyePosition(1.0f);
        Vec3 lookVec = player.getViewVector(1.0f);
        
        Vector3d origin = new Vector3d(eyePos.x, eyePos.y, eyePos.z);
        Vector3d dir = new Vector3d(lookVec.x, lookVec.y, lookVec.z);

        double vanillaHitDist = reach;
        if (mc.hitResult != null && mc.hitResult.getType() != HitResult.Type.MISS) {
            vanillaHitDist = mc.hitResult.getLocation().distanceTo(eyePos);
        }

        double closestObbDist = vanillaHitDist;
        BlockPos targetPos = null;
        String targetZone = null;

        int searchRadius = (int) Math.ceil(reach) + 4;
        BlockPos playerPos = player.blockPosition();

        for (BlockPos pos : BlockPos.betweenClosed(playerPos.offset(-searchRadius, -searchRadius, -searchRadius), playerPos.offset(searchRadius, searchRadius, searchRadius))) {
            BlockEntity be = mc.level.getBlockEntity(pos);
            if (be instanceof PanelsV2TileEntity tile) {
                
                for (OBB obb : tile.getOBBs()) {
                    if (!obb.zoneName().startsWith("Panel_")) continue;

                    Optional<Vector3d> hit = obb.clip(origin, dir);
                    
                    if (hit.isPresent()) {
                        double dist = new Vec3(hit.get().x, hit.get().y, hit.get().z).distanceTo(eyePos);
                        
                        if (dist <= reach && dist < closestObbDist) {
                            closestObbDist = dist;
                            targetPos = pos.immutable();
                            targetZone = obb.zoneName();
                        }
                    }
                }
            }
        }

        if (targetPos != null && targetZone != null) {
            ItemStack itemInHand = player.getItemInHand(InteractionHand.MAIN_HAND);

            // Если в руке обычная деревянная палка (Stick)
            if (itemInHand.getItem() == Items.STICK) {
                // Шлем пакет на разрушение блока
                ModMessages.sendToServer(new BreakPanelPacket(targetPos));
            } else {
                // Иначе открываем интерфейс
                ModMessages.sendToServer(new OpenPanelPacket(targetPos, targetZone));
            }

            player.swing(InteractionHand.MAIN_HAND);
            
            event.setCanceled(true);
            event.setSwingHand(false);
        }
    }
}