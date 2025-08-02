
package net.code.thisnotamod.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;

public class BloodGuidebookItem extends Item {
	public BloodGuidebookItem() {
		super(new Item.Properties().stacksTo(64).rarity(Rarity.COMMON));
	}
}
