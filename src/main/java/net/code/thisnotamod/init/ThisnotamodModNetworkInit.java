package net.code.thisnotamod.init;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;

import net.code.thisnotamod.ThisnotamodMod;
import net.code.thisnotamod.network.UpdateVarC2SPacket;

@Mod.EventBusSubscriber(modid = ThisnotamodMod.MODID, bus = Mod.EventBusSubscriber.Bus.MOD)
public final class ThisnotamodModNetworkInit {
    private ThisnotamodModNetworkInit() {}

    @SubscribeEvent
    public static void commonSetup(FMLCommonSetupEvent event) {
        event.enqueueWork(UpdateVarC2SPacket::register);
    }
}
