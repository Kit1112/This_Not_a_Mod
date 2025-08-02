
package net.code.thisnotamod.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;

public class MinecellsGuidebookItem extends Item {
	public MinecellsGuidebookItem() {
		super(new Item.Properties().stacksTo(64).rarity(Rarity.COMMON));
	}
}
