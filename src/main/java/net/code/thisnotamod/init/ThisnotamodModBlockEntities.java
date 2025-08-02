
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;

import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.Block;

import net.code.thisnotamod.block.entity.ZigaTileEntity;
import net.code.thisnotamod.block.entity.WorkStatTileEntity;
import net.code.thisnotamod.block.entity.WindowRightDTileEntity;
import net.code.thisnotamod.block.entity.WindowAleftTTileEntity;
import net.code.thisnotamod.block.entity.WindowAleftDTileEntity;
import net.code.thisnotamod.block.entity.WindowARightTTileEntity;
import net.code.thisnotamod.block.entity.WCanimTileEntity;
import net.code.thisnotamod.block.entity.VotvLockerTopTileEntity;
import net.code.thisnotamod.block.entity.VotvLockerTileEntity;
import net.code.thisnotamod.block.entity.VotvLockerMiddleTileEntity;
import net.code.thisnotamod.block.entity.VotvDoorTopTileEntity;
import net.code.thisnotamod.block.entity.VotvDoorTileEntity;
import net.code.thisnotamod.block.entity.VentCornerTileEntity;
import net.code.thisnotamod.block.entity.VentCornerHorizontalTileEntity;
import net.code.thisnotamod.block.entity.TerminalTileEntity;
import net.code.thisnotamod.block.entity.TermRTTileEntity;
import net.code.thisnotamod.block.entity.TermLTTileEntity;
import net.code.thisnotamod.block.entity.TermLDTileEntity;
import net.code.thisnotamod.block.entity.TelescopeTileEntity;
import net.code.thisnotamod.block.entity.TableKitchenTileEntity;
import net.code.thisnotamod.block.entity.ServerTopTileEntity;
import net.code.thisnotamod.block.entity.ServerTileEntity;
import net.code.thisnotamod.block.entity.RadiotielieskopTileEntity;
import net.code.thisnotamod.block.entity.RadarTileEntity;
import net.code.thisnotamod.block.entity.PasslockTileEntity;
import net.code.thisnotamod.block.entity.MannequinTopTileEntity;
import net.code.thisnotamod.block.entity.MannequinDownTileEntity;
import net.code.thisnotamod.block.entity.LightSwitchTileEntity;
import net.code.thisnotamod.block.entity.Lampplus1UppedTileEntity;
import net.code.thisnotamod.block.entity.Lampplus1TileEntity;
import net.code.thisnotamod.block.entity.LampUppedTileEntity;
import net.code.thisnotamod.block.entity.LampTileEntity;
import net.code.thisnotamod.block.entity.LampRoundUpTileEntity;
import net.code.thisnotamod.block.entity.LampRoundUpMiddleTileEntity;
import net.code.thisnotamod.block.entity.LampRoundTileEntity;
import net.code.thisnotamod.block.entity.LampRoundMiddleTileEntity;
import net.code.thisnotamod.block.entity.LampMiddleUppedTileEntity;
import net.code.thisnotamod.block.entity.LampMiddleTileEntity;
import net.code.thisnotamod.block.entity.LampMiddlePlus1UppedTileEntity;
import net.code.thisnotamod.block.entity.LampMiddlePlus1TileEntity;
import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModBlockEntities {
	public static final DeferredRegister<BlockEntityType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.BLOCK_ENTITY_TYPES, ThisnotamodMod.MODID);
	public static final RegistryObject<BlockEntityType<VotvDoorTileEntity>> VOTV_DOOR = REGISTRY.register("votv_door", () -> BlockEntityType.Builder.of(VotvDoorTileEntity::new, ThisnotamodModBlocks.VOTV_DOOR.get()).build(null));
	public static final RegistryObject<BlockEntityType<VotvDoorTopTileEntity>> VOTV_DOOR_TOP = REGISTRY.register("votv_door_top", () -> BlockEntityType.Builder.of(VotvDoorTopTileEntity::new, ThisnotamodModBlocks.VOTV_DOOR_TOP.get()).build(null));
	public static final RegistryObject<BlockEntityType<VotvLockerTileEntity>> VOTV_LOCKER = REGISTRY.register("votv_locker", () -> BlockEntityType.Builder.of(VotvLockerTileEntity::new, ThisnotamodModBlocks.VOTV_LOCKER.get()).build(null));
	public static final RegistryObject<BlockEntityType<VotvLockerMiddleTileEntity>> VOTV_LOCKER_MIDDLE = REGISTRY.register("votv_locker_middle",
			() -> BlockEntityType.Builder.of(VotvLockerMiddleTileEntity::new, ThisnotamodModBlocks.VOTV_LOCKER_MIDDLE.get()).build(null));
	public static final RegistryObject<BlockEntityType<VotvLockerTopTileEntity>> VOTV_LOCKER_TOP = REGISTRY.register("votv_locker_top",
			() -> BlockEntityType.Builder.of(VotvLockerTopTileEntity::new, ThisnotamodModBlocks.VOTV_LOCKER_TOP.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampTileEntity>> LAMP = REGISTRY.register("lamp", () -> BlockEntityType.Builder.of(LampTileEntity::new, ThisnotamodModBlocks.LAMP.get()).build(null));
	public static final RegistryObject<BlockEntityType<TelescopeTileEntity>> TELESCOPE = REGISTRY.register("telescope", () -> BlockEntityType.Builder.of(TelescopeTileEntity::new, ThisnotamodModBlocks.TELESCOPE.get()).build(null));
	public static final RegistryObject<BlockEntityType<RadiotielieskopTileEntity>> RADIOTIELIESKOP = REGISTRY.register("radiotielieskop",
			() -> BlockEntityType.Builder.of(RadiotielieskopTileEntity::new, ThisnotamodModBlocks.RADIOTIELIESKOP.get()).build(null));
	public static final RegistryObject<BlockEntityType<WorkStatTileEntity>> WORK_STAT = REGISTRY.register("work_stat", () -> BlockEntityType.Builder.of(WorkStatTileEntity::new, ThisnotamodModBlocks.WORK_STAT.get()).build(null));
	public static final RegistryObject<BlockEntityType<MannequinTopTileEntity>> MANNEQUIN_TOP = REGISTRY.register("mannequin_top", () -> BlockEntityType.Builder.of(MannequinTopTileEntity::new, ThisnotamodModBlocks.MANNEQUIN_TOP.get()).build(null));
	public static final RegistryObject<BlockEntityType<MannequinDownTileEntity>> MANNEQUIN_DOWN = REGISTRY.register("mannequin_down",
			() -> BlockEntityType.Builder.of(MannequinDownTileEntity::new, ThisnotamodModBlocks.MANNEQUIN_DOWN.get()).build(null));
	public static final RegistryObject<BlockEntityType<TerminalTileEntity>> TERMINAL = REGISTRY.register("terminal", () -> BlockEntityType.Builder.of(TerminalTileEntity::new, ThisnotamodModBlocks.TERMINAL.get()).build(null));
	public static final RegistryObject<BlockEntityType<ServerTileEntity>> SERVER = REGISTRY.register("server", () -> BlockEntityType.Builder.of(ServerTileEntity::new, ThisnotamodModBlocks.SERVER.get()).build(null));
	public static final RegistryObject<BlockEntityType<RadarTileEntity>> RADAR = REGISTRY.register("radar", () -> BlockEntityType.Builder.of(RadarTileEntity::new, ThisnotamodModBlocks.RADAR.get()).build(null));
	public static final RegistryObject<BlockEntityType<TableKitchenTileEntity>> TABLE_KITCHEN = REGISTRY.register("table_kitchen", () -> BlockEntityType.Builder.of(TableKitchenTileEntity::new, ThisnotamodModBlocks.TABLE_KITCHEN.get()).build(null));
	public static final RegistryObject<BlockEntityType<TermRTTileEntity>> TERM_RT = REGISTRY.register("term_rt", () -> BlockEntityType.Builder.of(TermRTTileEntity::new, ThisnotamodModBlocks.TERM_RT.get()).build(null));
	public static final RegistryObject<BlockEntityType<TermLDTileEntity>> TERM_LD = REGISTRY.register("term_ld", () -> BlockEntityType.Builder.of(TermLDTileEntity::new, ThisnotamodModBlocks.TERM_LD.get()).build(null));
	public static final RegistryObject<BlockEntityType<TermLTTileEntity>> TERM_LT = REGISTRY.register("term_lt", () -> BlockEntityType.Builder.of(TermLTTileEntity::new, ThisnotamodModBlocks.TERM_LT.get()).build(null));
	public static final RegistryObject<BlockEntityType<ZigaTileEntity>> ZIGA = REGISTRY.register("ziga", () -> BlockEntityType.Builder.of(ZigaTileEntity::new, ThisnotamodModBlocks.ZIGA.get()).build(null));
	public static final RegistryObject<BlockEntityType<PasslockTileEntity>> PASSLOCK = REGISTRY.register("passlock", () -> BlockEntityType.Builder.of(PasslockTileEntity::new, ThisnotamodModBlocks.PASSLOCK.get()).build(null));
	public static final RegistryObject<BlockEntityType<Lampplus1TileEntity>> LAMPPLUS_1 = REGISTRY.register("lampplus_1", () -> BlockEntityType.Builder.of(Lampplus1TileEntity::new, ThisnotamodModBlocks.LAMPPLUS_1.get()).build(null));
	public static final RegistryObject<BlockEntityType<Lampplus1UppedTileEntity>> LAMPPLUS_1_UPPED = REGISTRY.register("lampplus_1_upped",
			() -> BlockEntityType.Builder.of(Lampplus1UppedTileEntity::new, ThisnotamodModBlocks.LAMPPLUS_1_UPPED.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampUppedTileEntity>> LAMP_UPPED = REGISTRY.register("lamp_upped", () -> BlockEntityType.Builder.of(LampUppedTileEntity::new, ThisnotamodModBlocks.LAMP_UPPED.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampMiddleTileEntity>> LAMP_MIDDLE = REGISTRY.register("lamp_middle", () -> BlockEntityType.Builder.of(LampMiddleTileEntity::new, ThisnotamodModBlocks.LAMP_MIDDLE.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampMiddlePlus1TileEntity>> LAMP_MIDDLE_PLUS_1 = REGISTRY.register("lamp_middle_plus_1",
			() -> BlockEntityType.Builder.of(LampMiddlePlus1TileEntity::new, ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampMiddleUppedTileEntity>> LAMP_MIDDLE_UPPED = REGISTRY.register("lamp_middle_upped",
			() -> BlockEntityType.Builder.of(LampMiddleUppedTileEntity::new, ThisnotamodModBlocks.LAMP_MIDDLE_UPPED.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampMiddlePlus1UppedTileEntity>> LAMP_MIDDLE_PLUS_1_UPPED = REGISTRY.register("lamp_middle_plus_1_upped",
			() -> BlockEntityType.Builder.of(LampMiddlePlus1UppedTileEntity::new, ThisnotamodModBlocks.LAMP_MIDDLE_PLUS_1_UPPED.get()).build(null));
	public static final RegistryObject<BlockEntityType<VentCornerTileEntity>> VENT_CORNER = REGISTRY.register("vent_corner", () -> BlockEntityType.Builder.of(VentCornerTileEntity::new, ThisnotamodModBlocks.VENT_CORNER.get()).build(null));
	public static final RegistryObject<BlockEntityType<VentCornerHorizontalTileEntity>> VENT_CORNER_HORIZONTAL = REGISTRY.register("vent_corner_horizontal",
			() -> BlockEntityType.Builder.of(VentCornerHorizontalTileEntity::new, ThisnotamodModBlocks.VENT_CORNER_HORIZONTAL.get()).build(null));
	public static final RegistryObject<BlockEntityType<ServerTopTileEntity>> SERVER_TOP = REGISTRY.register("server_top", () -> BlockEntityType.Builder.of(ServerTopTileEntity::new, ThisnotamodModBlocks.SERVER_TOP.get()).build(null));
	public static final RegistryObject<BlockEntityType<WCanimTileEntity>> W_CANIM = REGISTRY.register("w_canim", () -> BlockEntityType.Builder.of(WCanimTileEntity::new, ThisnotamodModBlocks.W_CANIM.get()).build(null));
	public static final RegistryObject<BlockEntityType<LightSwitchTileEntity>> LIGHT_SWITCH = REGISTRY.register("light_switch", () -> BlockEntityType.Builder.of(LightSwitchTileEntity::new, ThisnotamodModBlocks.LIGHT_SWITCH.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampRoundTileEntity>> LAMP_ROUND = REGISTRY.register("lamp_round", () -> BlockEntityType.Builder.of(LampRoundTileEntity::new, ThisnotamodModBlocks.LAMP_ROUND.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampRoundUpTileEntity>> LAMP_ROUND_UP = REGISTRY.register("lamp_round_up", () -> BlockEntityType.Builder.of(LampRoundUpTileEntity::new, ThisnotamodModBlocks.LAMP_ROUND_UP.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampRoundUpMiddleTileEntity>> LAMP_ROUND_UP_MIDDLE = REGISTRY.register("lamp_round_up_middle",
			() -> BlockEntityType.Builder.of(LampRoundUpMiddleTileEntity::new, ThisnotamodModBlocks.LAMP_ROUND_UP_MIDDLE.get()).build(null));
	public static final RegistryObject<BlockEntityType<LampRoundMiddleTileEntity>> LAMP_ROUND_MIDDLE = REGISTRY.register("lamp_round_middle",
			() -> BlockEntityType.Builder.of(LampRoundMiddleTileEntity::new, ThisnotamodModBlocks.LAMP_ROUND_MIDDLE.get()).build(null));
	public static final RegistryObject<BlockEntityType<WindowRightDTileEntity>> WINDOW_RIGHT_D = REGISTRY.register("window_right_d",
			() -> BlockEntityType.Builder.of(WindowRightDTileEntity::new, ThisnotamodModBlocks.WINDOW_RIGHT_D.get()).build(null));
	public static final RegistryObject<BlockEntityType<WindowAleftDTileEntity>> WINDOW_ALEFT_D = REGISTRY.register("window_aleft_d",
			() -> BlockEntityType.Builder.of(WindowAleftDTileEntity::new, ThisnotamodModBlocks.WINDOW_ALEFT_D.get()).build(null));
	public static final RegistryObject<BlockEntityType<WindowARightTTileEntity>> WINDOW_A_RIGHT_T = REGISTRY.register("window_a_right_t",
			() -> BlockEntityType.Builder.of(WindowARightTTileEntity::new, ThisnotamodModBlocks.WINDOW_A_RIGHT_T.get()).build(null));
	public static final RegistryObject<BlockEntityType<WindowAleftTTileEntity>> WINDOW_ALEFT_T = REGISTRY.register("window_aleft_t",
			() -> BlockEntityType.Builder.of(WindowAleftTTileEntity::new, ThisnotamodModBlocks.WINDOW_ALEFT_T.get()).build(null));

	private static RegistryObject<BlockEntityType<?>> register(String registryname, RegistryObject<Block> block, BlockEntityType.BlockEntitySupplier<?> supplier) {
		return REGISTRY.register(registryname, () -> BlockEntityType.Builder.of(supplier, block.get()).build(null));
	}
}
