
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.extensions.IForgeMenuType;

import net.minecraft.world.inventory.MenuType;

import net.code.thisnotamod.world.inventory.ServerInterfaceMenu;
import net.code.thisnotamod.world.inventory.PasslockGUIMenu;
import net.code.thisnotamod.world.inventory.PassChangeGuiNMenu;
import net.code.thisnotamod.world.inventory.PassChangeGuiMenu;
import net.code.thisnotamod.world.inventory.KerfuIntMenu;
import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModMenus {
	public static final DeferredRegister<MenuType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.MENU_TYPES, ThisnotamodMod.MODID);
	public static final RegistryObject<MenuType<PasslockGUIMenu>> PASSLOCK_GUI = REGISTRY.register("passlock_gui", () -> IForgeMenuType.create(PasslockGUIMenu::new));
	public static final RegistryObject<MenuType<PassChangeGuiMenu>> PASS_CHANGE_GU = REGISTRY.register("pass_change_gu", () -> IForgeMenuType.create(PassChangeGuiMenu::new));
	public static final RegistryObject<MenuType<PassChangeGuiNMenu>> PASS_CHANGE_GUI_N = REGISTRY.register("pass_change_gui_n", () -> IForgeMenuType.create(PassChangeGuiNMenu::new));
	public static final RegistryObject<MenuType<KerfuIntMenu>> KERFU_INT = REGISTRY.register("kerfu_int", () -> IForgeMenuType.create(KerfuIntMenu::new));
	public static final RegistryObject<MenuType<ServerInterfaceMenu>> SERVER_INTERFACE = REGISTRY.register("server_interface", () -> IForgeMenuType.create(ServerInterfaceMenu::new));
}
