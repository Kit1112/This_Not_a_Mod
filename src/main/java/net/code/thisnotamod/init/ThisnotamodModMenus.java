
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.extensions.IForgeMenuType;

import net.minecraft.world.inventory.MenuType;

import net.code.thisnotamod.world.inventory.SignalTunerMenu;
import net.code.thisnotamod.world.inventory.SignalScannerMenu;
import net.code.thisnotamod.world.inventory.ServerInterfaceMenu;
import net.code.thisnotamod.world.inventory.PasslockGUIMenu;
import net.code.thisnotamod.world.inventory.PassChangeGuiNMenu;
import net.code.thisnotamod.world.inventory.PassChangeGuiMenu;
import net.code.thisnotamod.world.inventory.KerfuIntMenu;
import net.code.thisnotamod.world.inventory.FridgeDownIntMenu;
import net.code.thisnotamod.world.inventory.DeliveryGuiMenu;
import net.code.thisnotamod.world.inventory.CraftingTableKerfuInterfaceMenu;
import net.code.thisnotamod.world.inventory.CraftingTableBaseInterfaceMenu;
import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModMenus {
	public static final DeferredRegister<MenuType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.MENU_TYPES, ThisnotamodMod.MODID);
	public static final RegistryObject<MenuType<PasslockGUIMenu>> PASSLOCK_GUI = REGISTRY.register("passlock_gui", () -> IForgeMenuType.create(PasslockGUIMenu::new));
	public static final RegistryObject<MenuType<PassChangeGuiMenu>> PASS_CHANGE_GU = REGISTRY.register("pass_change_gu", () -> IForgeMenuType.create(PassChangeGuiMenu::new));
	public static final RegistryObject<MenuType<PassChangeGuiNMenu>> PASS_CHANGE_GUI_N = REGISTRY.register("pass_change_gui_n", () -> IForgeMenuType.create(PassChangeGuiNMenu::new));
	public static final RegistryObject<MenuType<KerfuIntMenu>> KERFU_INT = REGISTRY.register("kerfu_int", () -> IForgeMenuType.create(KerfuIntMenu::new));
	public static final RegistryObject<MenuType<ServerInterfaceMenu>> SERVER_INTERFACE = REGISTRY.register("server_interface", () -> IForgeMenuType.create(ServerInterfaceMenu::new));
	public static final RegistryObject<MenuType<FridgeDownIntMenu>> FRIDGE_DOWN_INT = REGISTRY.register("fridge_down_int", () -> IForgeMenuType.create(FridgeDownIntMenu::new));
	public static final RegistryObject<MenuType<DeliveryGuiMenu>> DELIVERY_GUI = REGISTRY.register("delivery_gui", () -> IForgeMenuType.create(DeliveryGuiMenu::new));
	public static final RegistryObject<MenuType<SignalScannerMenu>> SIGNAL_SCANNER = REGISTRY.register("signal_scanner", () -> IForgeMenuType.create(SignalScannerMenu::new));
	public static final RegistryObject<MenuType<CraftingTableBaseInterfaceMenu>> CRAFTING_TABLE_BASE_INTERFACE = REGISTRY.register("crafting_table_base_interface", () -> IForgeMenuType.create(CraftingTableBaseInterfaceMenu::new));
	public static final RegistryObject<MenuType<CraftingTableKerfuInterfaceMenu>> CRAFTING_TABLE_KERFU_INTERFACE = REGISTRY.register("crafting_table_kerfu_interface", () -> IForgeMenuType.create(CraftingTableKerfuInterfaceMenu::new));
	public static final RegistryObject<MenuType<SignalTunerMenu>> SIGNAL_TUNER = REGISTRY.register("signal_tuner", () -> IForgeMenuType.create(SignalTunerMenu::new));
}
