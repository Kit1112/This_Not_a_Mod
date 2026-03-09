package net.code.thisnotamod;

import net.minecraftforge.event.TickEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;

@Mod.EventBusSubscriber
public class OBBCollisionEvent {
    @SubscribeEvent
    public static void onPlayerTick(TickEvent.PlayerTickEvent event) {
        // МЕНЯЕМ НА END! Это критично для имитации твердого пола.
        if (event.phase == TickEvent.Phase.END) {
            OBBPhysicsHandler.handlePhysics(event.player);
        }
    }

    @SubscribeEvent
    public static void onEntityTick(net.minecraftforge.event.entity.living.LivingEvent.LivingTickEvent event) {
        OBBPhysicsHandler.handlePhysics(event.getEntity());
    }
}