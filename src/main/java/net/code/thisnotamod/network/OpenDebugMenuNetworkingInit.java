package net.code.thisnotamod.network;

import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;

@Mod.EventBusSubscriber(modid = "thisnotamod", bus = Mod.EventBusSubscriber.Bus.MOD)
public final class OpenDebugMenuNetworkingInit {
    private OpenDebugMenuNetworkingInit() {}

    @SubscribeEvent
public static void init(FMLCommonSetupEvent e) {
    try {
        // ВАЖНО: порядок одинаковый на обеих сторонах,
        // чтобы дисриминаторы совпадали.
        Class.forName("net.code.thisnotamod.network.DebugMenuNetwork", true, OpenDebugMenuNetworkingInit.class.getClassLoader());
        Class.forName("net.code.thisnotamod.network.OpenDebugMenuMessage", true, OpenDebugMenuNetworkingInit.class.getClassLoader());
        
    } catch (Throwable ignored) {}
}

}
