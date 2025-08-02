
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.DeferredRegister;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.network.chat.Component;
import net.minecraft.core.registries.Registries;

import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModTabs {
	public static final DeferredRegister<CreativeModeTab> REGISTRY = DeferredRegister.create(Registries.CREATIVE_MODE_TAB, ThisnotamodMod.MODID);
	public static final RegistryObject<CreativeModeTab> VOT_V = REGISTRY.register("vot_v",
			() -> CreativeModeTab.builder().title(Component.translatable("item_group.thisnotamod.vot_v")).icon(() -> new ItemStack(ThisnotamodModItems.MUSIC_DISK_VOTV_WINTER.get())).displayItems((parameters, tabData) -> {
				tabData.accept(ThisnotamodModBlocks.ARGEMIABLUE.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIARED.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIACYAN.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIAGREEN.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIAPURPLE.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIAYELLOW.get().asItem());
				tabData.accept(ThisnotamodModBlocks.ARGEMIAWHITE.get().asItem());
				tabData.accept(ThisnotamodModItems.MUSIC_DISK_VOTV.get());
				tabData.accept(ThisnotamodModItems.MUSIC_DISK_VOTV_WINTER.get());
				tabData.accept(ThisnotamodModBlocks.MANNEQUIN_DOWN.get().asItem());
				tabData.accept(ThisnotamodModBlocks.VOTV_DOOR.get().asItem());
				tabData.accept(ThisnotamodModBlocks.VOTV_LOCKER.get().asItem());
				tabData.accept(ThisnotamodModBlocks.TABLE_L.get().asItem());
				tabData.accept(ThisnotamodModBlocks.TABLE_KITCHEN.get().asItem());
				tabData.accept(ThisnotamodModBlocks.TELESCOPE.get().asItem());
				tabData.accept(ThisnotamodModBlocks.RADIOTIELIESKOP.get().asItem());
				tabData.accept(ThisnotamodModBlocks.RADAR.get().asItem());
				tabData.accept(ThisnotamodModBlocks.SERVER.get().asItem());
				tabData.accept(ThisnotamodModBlocks.TERMINAL.get().asItem());
				tabData.accept(ThisnotamodModBlocks.PASSLOCK.get().asItem());
				tabData.accept(ThisnotamodModItems.PASS_CHANGE.get());
				tabData.accept(ThisnotamodModBlocks.W_CANIM.get().asItem());
				tabData.accept(ThisnotamodModBlocks.LIGHT_SWITCH.get().asItem());
				tabData.accept(ThisnotamodModBlocks.LAMP.get().asItem());
				tabData.accept(ThisnotamodModBlocks.LAMP_ROUND.get().asItem());
				tabData.accept(ThisnotamodModBlocks.WARNING_LAMP.get().asItem());
				tabData.accept(ThisnotamodModBlocks.WORK_STAT.get().asItem());
				tabData.accept(ThisnotamodModBlocks.VENT_CORNER.get().asItem());
				tabData.accept(ThisnotamodModBlocks.VENT_CORNER_HORIZONTAL.get().asItem());
				tabData.accept(ThisnotamodModBlocks.WINDOW_RIGHT_D.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CONCRETE_WALL.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CONCRETE_WALL_RIGHT.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CONCRETE_WALL_SIDE.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CONCRETE_WALL_N.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CONCRETE_WALL_R.get().asItem());
				tabData.accept(ThisnotamodModBlocks.CHESS_ANDESIT.get().asItem());
				tabData.accept(ThisnotamodModItems.KERFU_OMEGA_SPAWN_EGG.get());
				tabData.accept(ThisnotamodModItems.KERFU_SPAWN_EGG.get());
				tabData.accept(ThisnotamodModItems.MANNEQUIN_SPAWN_EGG.get());
			})

					.build());
}
