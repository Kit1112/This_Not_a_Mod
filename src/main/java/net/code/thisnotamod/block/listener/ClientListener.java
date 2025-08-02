package net.code.thisnotamod.block.listener;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.client.event.EntityRenderersEvent;
import net.minecraftforge.api.distmarker.OnlyIn;
import net.minecraftforge.api.distmarker.Dist;

import net.code.thisnotamod.init.ThisnotamodModBlockEntities;
import net.code.thisnotamod.block.renderer.ZigaTileRenderer;
import net.code.thisnotamod.block.renderer.WorkStatTileRenderer;
import net.code.thisnotamod.block.renderer.WindowRightDTileRenderer;
import net.code.thisnotamod.block.renderer.WindowAleftTTileRenderer;
import net.code.thisnotamod.block.renderer.WindowAleftDTileRenderer;
import net.code.thisnotamod.block.renderer.WindowARightTTileRenderer;
import net.code.thisnotamod.block.renderer.WCanimTileRenderer;
import net.code.thisnotamod.block.renderer.VotvLockerTopTileRenderer;
import net.code.thisnotamod.block.renderer.VotvLockerTileRenderer;
import net.code.thisnotamod.block.renderer.VotvLockerMiddleTileRenderer;
import net.code.thisnotamod.block.renderer.VotvDoorTopTileRenderer;
import net.code.thisnotamod.block.renderer.VotvDoorTileRenderer;
import net.code.thisnotamod.block.renderer.VentCornerTileRenderer;
import net.code.thisnotamod.block.renderer.VentCornerHorizontalTileRenderer;
import net.code.thisnotamod.block.renderer.TerminalTileRenderer;
import net.code.thisnotamod.block.renderer.TermRTTileRenderer;
import net.code.thisnotamod.block.renderer.TermLTTileRenderer;
import net.code.thisnotamod.block.renderer.TermLDTileRenderer;
import net.code.thisnotamod.block.renderer.TelescopeTileRenderer;
import net.code.thisnotamod.block.renderer.TableKitchenTileRenderer;
import net.code.thisnotamod.block.renderer.ServerTopTileRenderer;
import net.code.thisnotamod.block.renderer.ServerTileRenderer;
import net.code.thisnotamod.block.renderer.RadiotielieskopTileRenderer;
import net.code.thisnotamod.block.renderer.RadarTileRenderer;
import net.code.thisnotamod.block.renderer.PasslockTileRenderer;
import net.code.thisnotamod.block.renderer.MannequinTopTileRenderer;
import net.code.thisnotamod.block.renderer.MannequinDownTileRenderer;
import net.code.thisnotamod.block.renderer.LightSwitchTileRenderer;
import net.code.thisnotamod.block.renderer.Lampplus1UppedTileRenderer;
import net.code.thisnotamod.block.renderer.Lampplus1TileRenderer;
import net.code.thisnotamod.block.renderer.LampUppedTileRenderer;
import net.code.thisnotamod.block.renderer.LampTileRenderer;
import net.code.thisnotamod.block.renderer.LampRoundUpTileRenderer;
import net.code.thisnotamod.block.renderer.LampRoundUpMiddleTileRenderer;
import net.code.thisnotamod.block.renderer.LampRoundTileRenderer;
import net.code.thisnotamod.block.renderer.LampRoundMiddleTileRenderer;
import net.code.thisnotamod.block.renderer.LampMiddleUppedTileRenderer;
import net.code.thisnotamod.block.renderer.LampMiddleTileRenderer;
import net.code.thisnotamod.block.renderer.LampMiddlePlus1UppedTileRenderer;
import net.code.thisnotamod.block.renderer.LampMiddlePlus1TileRenderer;
import net.code.thisnotamod.ThisnotamodMod;

@Mod.EventBusSubscriber(modid = ThisnotamodMod.MODID, bus = Mod.EventBusSubscriber.Bus.MOD)
public class ClientListener {
	@OnlyIn(Dist.CLIENT)
	@SubscribeEvent
	public static void registerRenderers(EntityRenderersEvent.RegisterRenderers event) {
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VOTV_DOOR.get(), context -> new VotvDoorTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VOTV_DOOR_TOP.get(), context -> new VotvDoorTopTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VOTV_LOCKER.get(), context -> new VotvLockerTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VOTV_LOCKER_MIDDLE.get(), context -> new VotvLockerMiddleTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VOTV_LOCKER_TOP.get(), context -> new VotvLockerTopTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP.get(), context -> new LampTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TELESCOPE.get(), context -> new TelescopeTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.RADIOTIELIESKOP.get(), context -> new RadiotielieskopTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.WORK_STAT.get(), context -> new WorkStatTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.MANNEQUIN_TOP.get(), context -> new MannequinTopTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.MANNEQUIN_DOWN.get(), context -> new MannequinDownTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TERMINAL.get(), context -> new TerminalTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.SERVER.get(), context -> new ServerTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.RADAR.get(), context -> new RadarTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TABLE_KITCHEN.get(), context -> new TableKitchenTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TERM_RT.get(), context -> new TermRTTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TERM_LD.get(), context -> new TermLDTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.TERM_LT.get(), context -> new TermLTTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.ZIGA.get(), context -> new ZigaTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.PASSLOCK.get(), context -> new PasslockTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMPPLUS_1.get(), context -> new Lampplus1TileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMPPLUS_1_UPPED.get(), context -> new Lampplus1UppedTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_UPPED.get(), context -> new LampUppedTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_MIDDLE.get(), context -> new LampMiddleTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_MIDDLE_PLUS_1.get(), context -> new LampMiddlePlus1TileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_MIDDLE_UPPED.get(), context -> new LampMiddleUppedTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_MIDDLE_PLUS_1_UPPED.get(), context -> new LampMiddlePlus1UppedTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VENT_CORNER.get(), context -> new VentCornerTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.VENT_CORNER_HORIZONTAL.get(), context -> new VentCornerHorizontalTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.SERVER_TOP.get(), context -> new ServerTopTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.W_CANIM.get(), context -> new WCanimTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LIGHT_SWITCH.get(), context -> new LightSwitchTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_ROUND.get(), context -> new LampRoundTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_ROUND_UP.get(), context -> new LampRoundUpTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_ROUND_UP_MIDDLE.get(), context -> new LampRoundUpMiddleTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.LAMP_ROUND_MIDDLE.get(), context -> new LampRoundMiddleTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.WINDOW_RIGHT_D.get(), context -> new WindowRightDTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.WINDOW_ALEFT_D.get(), context -> new WindowAleftDTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.WINDOW_A_RIGHT_T.get(), context -> new WindowARightTTileRenderer());
		event.registerBlockEntityRenderer(ThisnotamodModBlockEntities.WINDOW_ALEFT_T.get(), context -> new WindowAleftTTileRenderer());
	}
}
