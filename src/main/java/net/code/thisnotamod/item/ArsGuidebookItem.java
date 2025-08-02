
package net.code.thisnotamod.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;

public class ArsGuidebookItem extends Item {
	public ArsGuidebookItem() {
		super(new Item.Properties().stacksTo(64).rarity(Rarity.COMMON));
	}
}
