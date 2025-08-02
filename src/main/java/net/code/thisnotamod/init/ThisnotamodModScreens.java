
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.fml.event.lifecycle.FMLClientSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.client.gui.screens.MenuScreens;

import net.code.thisnotamod.client.gui.ServerInterfaceScreen;
import net.code.thisnotamod.client.gui.PasslockGUIScreen;
import net.code.thisnotamod.client.gui.PassChangeGuiScreen;
import net.code.thisnotamod.client.gui.PassChangeGuiNScreen;
import net.code.thisnotamod.client.gui.KerfuIntScreen;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD, value = Dist.CLIENT)
public class ThisnotamodModScreens {
	@SubscribeEvent
	public static void clientLoad(FMLClientSetupEvent event) {
		event.enqueueWork(() -> {
			MenuScreens.register(ThisnotamodModMenus.PASSLOCK_GUI.get(), PasslockGUIScreen::new);
			MenuScreens.register(ThisnotamodModMenus.PASS_CHANGE_GU.get(), PassChangeGuiScreen::new);
			MenuScreens.register(ThisnotamodModMenus.PASS_CHANGE_GUI_N.get(), PassChangeGuiNScreen::new);
			MenuScreens.register(ThisnotamodModMenus.KERFU_INT.get(), KerfuIntScreen::new);
			MenuScreens.register(ThisnotamodModMenus.SERVER_INTERFACE.get(), ServerInterfaceScreen::new);
		});
	}
}
