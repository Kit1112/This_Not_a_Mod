package net.code.thisnotamod.network;

import net.minecraft.resources.ResourceLocation;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.network.NetworkRegistry;
import net.minecraftforge.network.simple.SimpleChannel;

@Mod.EventBusSubscriber(modid = "thisnotamod", bus = Mod.EventBusSubscriber.Bus.MOD)
public final class TipNetworking {
    private TipNetworking() {}

    public static final String PROTO = "1";
    public static final SimpleChannel CHANNEL = NetworkRegistry.newSimpleChannel(
            new ResourceLocation("thisnotamod", "tip"),
            () -> PROTO, PROTO::equals, PROTO::equals
    );

    @SubscribeEvent
    public static void onCommonSetup(FMLCommonSetupEvent e) {
        int id = 0;
        CHANNEL.registerMessage(
                id++,
                ShowTipMessage.class,
                ShowTipMessage::buffer,
                ShowTipMessage::new,
                ShowTipMessage::handler
        );
    }
}
