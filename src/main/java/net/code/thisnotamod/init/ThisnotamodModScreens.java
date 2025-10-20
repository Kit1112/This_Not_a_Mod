
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.fml.event.lifecycle.FMLClientSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.client.gui.screens.MenuScreens;

import net.code.thisnotamod.client.gui.SignalTunerScreen;
import net.code.thisnotamod.client.gui.SignalScannerScreen;
import net.code.thisnotamod.client.gui.ServerInterfaceScreen;
import net.code.thisnotamod.client.gui.PasslockGUIScreen;
import net.code.thisnotamod.client.gui.PassChangeGuiScreen;
import net.code.thisnotamod.client.gui.PassChangeGuiNScreen;
import net.code.thisnotamod.client.gui.KerfuIntScreen;
import net.code.thisnotamod.client.gui.FridgeDownIntScreen;
import net.code.thisnotamod.client.gui.DeliveryGuiScreen;
import net.code.thisnotamod.client.gui.CraftingTableKerfuInterfaceScreen;
import net.code.thisnotamod.client.gui.CraftingTableBaseInterfaceScreen;

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
			MenuScreens.register(ThisnotamodModMenus.FRIDGE_DOWN_INT.get(), FridgeDownIntScreen::new);
			MenuScreens.register(ThisnotamodModMenus.DELIVERY_GUI.get(), DeliveryGuiScreen::new);
			MenuScreens.register(ThisnotamodModMenus.SIGNAL_SCANNER.get(), SignalScannerScreen::new);
			MenuScreens.register(ThisnotamodModMenus.CRAFTING_TABLE_BASE_INTERFACE.get(), CraftingTableBaseInterfaceScreen::new);
			MenuScreens.register(ThisnotamodModMenus.CRAFTING_TABLE_KERFU_INTERFACE.get(), CraftingTableKerfuInterfaceScreen::new);
			MenuScreens.register(ThisnotamodModMenus.SIGNAL_TUNER.get(), SignalTunerScreen::new);
		});
	}
}
