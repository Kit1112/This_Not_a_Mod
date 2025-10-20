
package net.code.thisnotamod.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;

public class ErroriconItem extends Item {
	public ErroriconItem() {
		super(new Item.Properties().stacksTo(64).rarity(Rarity.COMMON));
	}
}
