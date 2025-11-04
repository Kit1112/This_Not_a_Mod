package net.code.thisnotamod;

import net.minecraftforge.event.AddReloadListenerEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.event.AddReloadListenerEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;

@Mod.EventBusSubscriber(modid = ThisnotamodMod.MODID, bus = Mod.EventBusSubscriber.Bus.FORGE)
public final class DataReloaders {
	@SubscribeEvent
	public static void addReloaders(AddReloadListenerEvent e) {
		e.addListener(new net.code.thisnotamod.data.SignalsJsonReloader());
	}
}
