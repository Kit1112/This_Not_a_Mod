
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.ForgeSpawnEggItem;

import net.minecraft.world.level.block.Block;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.BlockItem;

import net.code.thisnotamod.item.SuperGlock17Item;
import net.code.thisnotamod.item.SimplyGuidebookItem;
import net.code.thisnotamod.item.PassChangeItem;
import net.code.thisnotamod.item.MusicDiskVotvWinterItem;
import net.code.thisnotamod.item.MusicDiskVotvItem;
import net.code.thisnotamod.item.MinecellsGuidebookItem;
import net.code.thisnotamod.item.BloodGuidebookItem;
import net.code.thisnotamod.item.ArsGuidebookItem;
import net.code.thisnotamod.item.ApotheosisGuidebookItem;
import net.code.thisnotamod.block.display.ZigaDisplayItem;
import net.code.thisnotamod.block.display.WorkStatDisplayItem;
import net.code.thisnotamod.block.display.WindowRightDDisplayItem;
import net.code.thisnotamod.block.display.WindowAleftTDisplayItem;
import net.code.thisnotamod.block.display.WindowAleftDDisplayItem;
import net.code.thisnotamod.block.display.WindowARightTDisplayItem;
import net.code.thisnotamod.block.display.WarningLampDisplayItem;
import net.code.thisnotamod.block.display.WCanimDisplayItem;
import net.code.thisnotamod.block.display.VotvLockerTopDisplayItem;
import net.code.thisnotamod.block.display.VotvLockerMiddleDisplayItem;
import net.code.thisnotamod.block.display.VotvLockerDisplayItem;
import net.code.thisnotamod.block.display.VotvDoorTopDisplayItem;
import net.code.thisnotamod.block.display.VotvDoorDisplayItem;
import net.code.thisnotamod.block.display.VentCornerHorizontalDisplayItem;
import net.code.thisnotamod.block.display.VentCornerDisplayItem;
import net.code.thisnotamod.block.display.TerminalDisplayItem;
import net.code.thisnotamod.block.display.TermRTDisplayItem;
import net.code.thisnotamod.block.display.TermLTDisplayItem;
import net.code.thisnotamod.block.display.TermLDDisplayItem;
import net.code.thisnotamod.block.display.TelescopeDisplayItem;
import net.code.thisnotamod.block.display.TableKitchenDisplayItem;
import net.code.thisnotamod.block.display.RadiotielieskopDisplayItem;
import net.code.thisnotamod.block.display.RadarDisplayItem;
import net.code.thisnotamod.block.display.MannequinTopDisplayItem;
import net.code.thisnotamod.block.display.MannequinDownDisplayItem;
import net.code.thisnotamod.block.display.LightSwitchDisplayItem;
import net.code.thisnotamod.block.display.Lampplus1UppedDisplayItem;
import net.code.thisnotamod.block.display.Lampplus1DisplayItem;
import net.code.thisnotamod.block.display.LampUppedDisplayItem;
import net.code.thisnotamod.block.display.LampRoundUpMiddleDisplayItem;
import net.code.thisnotamod.block.display.LampRoundUpDisplayItem;
import net.code.thisnotamod.block.display.LampRoundMiddleDisplayItem;
import net.code.thisnotamod.block.display.LampRoundDisplayItem;
import net.code.thisnotamod.block.display.LampMiddleUppedDisplayItem;
import net.code.thisnotamod.block.display.LampMiddlePlus1UppedDisplayItem;
import net.code.thisnotamod.block.display.LampMiddlePlus1DisplayItem;
import net.code.thisnotamod.block.display.LampMiddleDisplayItem;
import net.code.thisnotamod.block.display.LampDisplayItem;
import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModItems {
	public static final DeferredRegister<Item> REGISTRY = DeferredRegister.create(ForgeRegistries.ITEMS, ThisnotamodMod.MODID);
	public static final RegistryObject<Item> MINECELLS_GUIDEBOOK = REGISTRY.register("minecells_guidebook", () -> new MinecellsGuidebookItem());
	public static final RegistryObject<Item> SIMPLY_GUIDEBOOK = REGISTRY.register("simply_guidebook", () -> new SimplyGuidebookItem());
	public static final RegistryObject<Item> APOTHEOSIS_GUIDEBOOK = REGISTRY.register("apotheosis_guidebook", () -> new ApotheosisGuidebookItem());
	public static final RegistryObject<Item> BLOOD_GUIDEBOOK = REGISTRY.register("blood_guidebook", () -> new BloodGuidebookItem());
	public static final RegistryObject<Item> ARS_GUIDEBOOK = REGISTRY.register("ars_guidebook", () -> new ArsGuidebookItem());
	public static final RegistryObject<Item> SUPER_GLOCK_17 = REGISTRY.register("super_glock_17", () -> new SuperGlock17Item());
	public static final RegistryObject<Item> KRIPOGHUS = block(ThisnotamodModBlocks.KRIPOGHUS);
	public static final RegistryObject<Item> ARGEMIABLUE = block(ThisnotamodModBlocks.ARGEMIABLUE);
	public static final RegistryObject<Item> ARGEMIARED = block(ThisnotamodModBlocks.ARGEMIARED);
	public static final RegistryObject<Item> ARGEMIACYAN = block(ThisnotamodModBlocks.ARGEMIACYAN);
	public static final RegistryObject<Item> ARGEMIAGREEN = block(ThisnotamodModBlocks.ARGEMIAGREEN);
	public static final RegistryObject<Item> ARGEMIAPURPLE = block(ThisnotamodModBlocks.ARGEMIAPURPLE);
	public static final RegistryObject<Item> ARGEMIAYELLOW = block(ThisnotamodModBlocks.ARGEMIAYELLOW);
	public static final RegistryObject<Item> ARGEMIAWHITE = block(ThisnotamodModBlocks.ARGEMIAWHITE);
	public static final RegistryObject<Item> MUSIC_DISK_VOTV = REGISTRY.register("music_disk_votv", () -> new MusicDiskVotvItem());
	public static final RegistryObject<Item> MUSIC_DISK_VOTV_WINTER = REGISTRY.register("music_disk_votv_winter", () -> new MusicDiskVotvWinterItem());
	public static final RegistryObject<Item> VOTV_DOOR = REGISTRY.register(ThisnotamodModBlocks.VOTV_DOOR.getId().getPath(), () -> new VotvDoorDisplayItem(ThisnotamodModBlocks.VOTV_DOOR.get(), new Item.Properties()));
	public static final RegistryObject<Item> VOTV_DOOR_TOP = REGISTRY.register(ThisnotamodModBlocks.VOTV_DOOR_TOP.getId().getPath(), () -> new VotvDoorTopDisplayItem(ThisnotamodModBlocks.VOTV_DOOR_TOP.get(), new Item.Properties()));
	public static final RegistryObject<Item> VOTV_LOCKER = REGISTRY.register(ThisnotamodModBlocks.VOTV_LOCKER.getId().getPath(), () -> new VotvLockerDisplayItem(ThisnotamodModBlocks.VOTV_LOCKER.get(), new Item.Properties()));
	public static final RegistryObject<Item> VOTV_LOCKER_MIDDLE = REGISTRY.register(ThisnotamodModBlocks.VOTV_LOCKER_MIDDLE.getId().getPath(),
			() -> new VotvLockerMiddleDisplayItem(ThisnotamodModBlocks.VOTV_LOCKER_MIDDLE.get(), new Item.Properties()));
	public static final RegistryObject<Item> VOTV_LOCKER_TOP = REGISTRY.register(ThisnotamodModBlocks.VOTV_LOCKER_TOP.getId().getPath(), () -> new VotvLockerTopDisplayItem(ThisnotamodModBlocks.VOTV_LOCKER_TOP.get(), new Item.Properties()));
	public static final RegistryObject<Item> TABLE_L = block(ThisnotamodModBlocks.TABLE_L);
	public static final RegistryObject<Item> TABLE_R = block(ThisnotamodModBlocks.TABLE_R);
	public static final RegistryObject<Item> LAMP = REGISTRY.register(ThisnotamodModBlocks.LAMP.getId().getPath(), () -> new LampDisplayItem(ThisnotamodModBlocks.LAMP.get(), new Item.Properties()));
	public static final RegistryObject<Item> TELESCOPE = REGISTRY.register(ThisnotamodModBlocks.TELESCOPE.getId().getPath(), () -> new TelescopeDisplayItem(ThisnotamodModBlocks.TELESCOPE.get(), new Item.Properties()));
	public static final RegistryObject<Item> RADIOTIELIESKOP = REGISTRY.register(ThisnotamodModBlocks.RADIOTIELIESKOP.getId().getPath(), () -> new RadiotielieskopDisplayItem(ThisnotamodModBlocks.RADIOTIELIESKOP.get(), new Item.Properties()));
	public static final RegistryObject<Item> CONCRETE_WALL = block(ThisnotamodModBlocks.CONCRETE_WALL);
	public static final RegistryObject<Item> CONCRETE_WALL_RIGHT = block(ThisnotamodModBlocks.CONCRETE_WALL_RIGHT);
	public static final RegistryObject<Item> CONCRETE_WALL_SIDE = block(ThisnotamodModBlocks.CONCRETE_WALL_SIDE);
	public static final RegistryObject<Item> CONCRETE_WALL_N = block(ThisnotamodModBlocks.CONCRETE_WALL_N);
	public static final RegistryObject<Item> CONCRETE_WALL_R = block(ThisnotamodModBlocks.CONCRETE_WALL_R);
	public static final RegistryObject<Item> WORK_STAT = REGISTRY.register(ThisnotamodModBlocks.WORK_STAT.getId().getPath(), () -> new WorkStatDisplayItem(ThisnotamodModBlocks.WORK_STAT.get(), new Item.Properties()));
	public static final RegistryObject<Item> MANNEQUIN_TOP = REGISTRY.register(ThisnotamodModBlocks.MANNEQUIN_TOP.getId().getPath(), () -> new MannequinTopDisplayItem(ThisnotamodModBlocks.MANNEQUIN_TOP.get(), new Item.Properties()));
	public static final RegistryObject<Item> MANNEQUIN_DOWN = REGISTRY.register(ThisnotamodModBlocks.MANNEQUIN_DOWN.getId().getPath(), () -> new MannequinDownDisplayItem(ThisnotamodModBlocks.MANNEQUIN_DOWN.get(), new Item.Properties()));
	public static final RegistryObject<Item> TERMINAL = REGISTRY.register(ThisnotamodModBlocks.TERMINAL.getId().getPath(), () -> new TerminalDisplayItem(ThisnotamodModBlocks.TERMINAL.get(), new Item.Properties()));
	public static final RegistryObject<Item> RADAR = REGISTRY.register(ThisnotamodModBlocks.RADAR.getId().getPath(), () -> new RadarDisplayItem(ThisnotamodModBlocks.RADAR.get(), new Item.Properties()));
	public static final RegistryObject<Item> TABLE_KITCHEN = REGISTRY.register(ThisnotamodModBlocks.TABLE_KITCHEN.getId().getPath(), () -> new TableKitchenDisplayItem(ThisnotamodModBlocks.TABLE_KITCHEN.get(), new Item.Properties()));
	public static final RegistryObject<Item> TERM_RT = REGISTRY.register(ThisnotamodModBlocks.TERM_RT.getId().getPath(), () -> new TermRTDisplayItem(ThisnotamodModBlocks.TERM_RT.get(), new Item.Properties()));
	public static final RegistryObject<Item> TERM_LD = REGISTRY.register(ThisnotamodModBlocks.TERM_LD.getId().getPath(), () -> new TermLDDisplayItem(ThisnotamodModBlocks.TERM_LD.get(), new Item.Properties()));
	public static final RegistryObject<Item> TERM_LT = REGISTRY.register(ThisnotamodModBlocks.TERM_LT.getId().getPath(), () -> new TermLTDisplayItem(ThisnotamodModBlocks.TERM_LT.get(), new Item.Properties()));
	public static final RegistryObject<Item> CHESS_ANDESIT = block(ThisnotamodModBlocks.CHESS_ANDESIT);
	public static final RegistryObject<Item> ZIGA = REGISTRY.register(ThisnotamodModBlocks.ZIGA.getId().getPath(), () -> new ZigaDisplayItem(ThisnotamodModBlocks.ZIGA.get(), new Item.Properties()));
	public static final RegistryObject<Item> PASS_CHANGE = REGISTRY.register("pass_change", () -> new PassChangeItem());
	public static final RegistryObject<Item> LAMPPLUS_1 = REGISTRY.register(ThisnotamodModBlocks.LAMPPLUS_1.getId().getPath(), () -> new Lampplus1DisplayItem(ThisnotamodModBlocks.LAMPPLUS_1.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMPPLUS_1_UPPED = REGISTRY.register(ThisnotamodModBlocks.LAMPPLUS_1_UPPED.getId().getPath(), () -> new Lampplus1UppedDisplayItem(ThisnotamodModBlocks.LAMPPLUS_1_UPPED.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_UPPED = REGISTRY.register(ThisnotamodModBlocks.LAMP_UPPED.getId().getPath(), () -> new LampUppedDisplayItem(ThisnotamodModBlocks.LAMP_UPPED.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_MIDDLE = REGISTRY.register(ThisnotamodModBlocks.LAMP_MIDDLE.getId().getPath(), () -> new LampMiddleDisplayItem(ThisnotamodModBlocks.LAMP_MIDDLE.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_MIDDLE_PLUS_1 = REGISTRY.register(ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1.getId().getPath(),
			() -> new LampMiddlePlus1DisplayItem(ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_MIDDLE_UPPED = REGISTRY.register(ThisnotamodModBlocks.LAMP_MIDDLE_UPPED.getId().getPath(), () -> new LampMiddleUppedDisplayItem(ThisnotamodModBlocks.LAMP_MIDDLE_UPPED.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_MIDDLE_PLUS_1_UPPED = REGISTRY.register(ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1_UPPED.getId().getPath(),
			() -> new LampMiddlePlus1UppedDisplayItem(ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1_UPPED.get(), new Item.Properties()));
	public static final RegistryObject<Item> VENT_CORNER = REGISTRY.register(ThisnotamodModBlocks.VENT_CORNER.getId().getPath(), () -> new VentCornerDisplayItem(ThisnotamodModBlocks.VENT_CORNER.get(), new Item.Properties()));
	public static final RegistryObject<Item> VENT_CORNER_HORIZONTAL = REGISTRY.register(ThisnotamodModBlocks.VENT_CORNER_HORIZONTAL.getId().getPath(),
			() -> new VentCornerHorizontalDisplayItem(ThisnotamodModBlocks.VENT_CORNER_HORIZONTAL.get(), new Item.Properties()));
	public static final RegistryObject<Item> KERFU_SPAWN_EGG = REGISTRY.register("kerfu_spawn_egg", () -> new ForgeSpawnEggItem(ThisnotamodModEntities.KERFU, -1, -1, new Item.Properties()));
	public static final RegistryObject<Item> W_CANIM = REGISTRY.register(ThisnotamodModBlocks.W_CANIM.getId().getPath(), () -> new WCanimDisplayItem(ThisnotamodModBlocks.W_CANIM.get(), new Item.Properties()));
	public static final RegistryObject<Item> LIGHT_SWITCH = REGISTRY.register(ThisnotamodModBlocks.LIGHT_SWITCH.getId().getPath(), () -> new LightSwitchDisplayItem(ThisnotamodModBlocks.LIGHT_SWITCH.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_ROUND = REGISTRY.register(ThisnotamodModBlocks.LAMP_ROUND.getId().getPath(), () -> new LampRoundDisplayItem(ThisnotamodModBlocks.LAMP_ROUND.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_ROUND_UP = REGISTRY.register(ThisnotamodModBlocks.LAMP_ROUND_UP.getId().getPath(), () -> new LampRoundUpDisplayItem(ThisnotamodModBlocks.LAMP_ROUND_UP.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_ROUND_UP_MIDDLE = REGISTRY.register(ThisnotamodModBlocks.LAMP_ROUND_UP_MIDDLE.getId().getPath(),
			() -> new LampRoundUpMiddleDisplayItem(ThisnotamodModBlocks.LAMP_ROUND_UP_MIDDLE.get(), new Item.Properties()));
	public static final RegistryObject<Item> LAMP_ROUND_MIDDLE = REGISTRY.register(ThisnotamodModBlocks.LAMP_ROUND_MIDDLE.getId().getPath(), () -> new LampRoundMiddleDisplayItem(ThisnotamodModBlocks.LAMP_ROUND_MIDDLE.get(), new Item.Properties()));
	public static final RegistryObject<Item> KERFU_OMEGA_SPAWN_EGG = REGISTRY.register("kerfu_omega_spawn_egg", () -> new ForgeSpawnEggItem(ThisnotamodModEntities.KERFU_OMEGA, -65485, -1, new Item.Properties()));
	public static final RegistryObject<Item> WINDOW_RIGHT_D = REGISTRY.register(ThisnotamodModBlocks.WINDOW_RIGHT_D.getId().getPath(), () -> new WindowRightDDisplayItem(ThisnotamodModBlocks.WINDOW_RIGHT_D.get(), new Item.Properties()));
	public static final RegistryObject<Item> WINDOW_ALEFT_D = REGISTRY.register(ThisnotamodModBlocks.WINDOW_ALEFT_D.getId().getPath(), () -> new WindowAleftDDisplayItem(ThisnotamodModBlocks.WINDOW_ALEFT_D.get(), new Item.Properties()));
	public static final RegistryObject<Item> WINDOW_A_RIGHT_T = REGISTRY.register(ThisnotamodModBlocks.WINDOW_A_RIGHT_T.getId().getPath(), () -> new WindowARightTDisplayItem(ThisnotamodModBlocks.WINDOW_A_RIGHT_T.get(), new Item.Properties()));
	public static final RegistryObject<Item> WINDOW_ALEFT_T = REGISTRY.register(ThisnotamodModBlocks.WINDOW_ALEFT_T.getId().getPath(), () -> new WindowAleftTDisplayItem(ThisnotamodModBlocks.WINDOW_ALEFT_T.get(), new Item.Properties()));
	public static final RegistryObject<Item> MANNEQUIN_SPAWN_EGG = REGISTRY.register("mannequin_spawn_egg", () -> new ForgeSpawnEggItem(ThisnotamodModEntities.MANNEQUIN, -10337016, -7116523, new Item.Properties()));
	public static final RegistryObject<Item> WARNING_LAMP = REGISTRY.register(ThisnotamodModBlocks.WARNING_LAMP.getId().getPath(), () -> new WarningLampDisplayItem(ThisnotamodModBlocks.WARNING_LAMP.get(), new Item.Properties()));
	public static final RegistryObject<Item> PASSLOCK_B = block(ThisnotamodModBlocks.PASSLOCK_B);
	public static final RegistryObject<Item> SERVER_B = block(ThisnotamodModBlocks.SERVER_B);
	public static final RegistryObject<Item> SERVER_B_TOP = block(ThisnotamodModBlocks.SERVER_B_TOP);

	// Start of user code block custom items
	// End of user code block custom items
	private static RegistryObject<Item> block(RegistryObject<Block> block) {
		return REGISTRY.register(block.getId().getPath(), () -> new BlockItem(block.get(), new Item.Properties()));
	}
}
