
package net.code.thisnotamod.item;

import net.minecraftforge.registries.ForgeRegistries;

import net.minecraft.world.item.RecordItem;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;
import net.minecraft.resources.ResourceLocation;

public class MusicDiscVotvHalloweenItem extends RecordItem {
	public MusicDiscVotvHalloweenItem() {
		super(15, () -> ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:halloween_theme")), new Item.Properties().stacksTo(1).rarity(Rarity.EPIC), 2160);
	}
}
