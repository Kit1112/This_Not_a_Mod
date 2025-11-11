package net.code.thisnotamod.init;

import net.code.thisnotamod.ThisnotamodMod;
import net.code.thisnotamod.network.SaveTunerSignalC2SPacket;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;

@Mod.EventBusSubscriber(modid = "thisnotamod", bus = Mod.EventBusSubscriber.Bus.MOD)
public final class ExtraNetInit {
    private ExtraNetInit() {}

    @SubscribeEvent
    public static void commonSetup(FMLCommonSetupEvent event) {
        event.enqueueWork(() -> {
            // Регистрируем через встроенный helper — он сам выдаст уникальный ID
            ThisnotamodMod.addNetworkMessage(
                    SaveTunerSignalC2SPacket.class,
                    SaveTunerSignalC2SPacket::toBytes,
                    SaveTunerSignalC2SPacket::new,
                    SaveTunerSignalC2SPacket::handle
            );
        });
    }
}
