package net.code.thisnotamod;

import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.client.event.RegisterGuiOverlaysEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;

@Mod.EventBusSubscriber(modid = "thisnotamod", value = Dist.CLIENT, bus = Mod.EventBusSubscriber.Bus.MOD)
public class TipOverlayRegistrar {
    @SubscribeEvent
    public static void registerOverlays(RegisterGuiOverlaysEvent event) {
        event.registerAboveAll("custom_tip", CustomTipOverlay.INSTANCE);
    }
}
