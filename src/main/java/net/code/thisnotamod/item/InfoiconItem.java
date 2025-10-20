
package net.code.thisnotamod.item;

import net.minecraft.world.level.Level;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.network.chat.Component;

import java.util.List;

public class InfoiconItem extends Item {
	public InfoiconItem() {
		super(new Item.Properties().stacksTo(64).rarity(Rarity.COMMON));
	}

	@Override
	public void appendHoverText(ItemStack itemstack, Level level, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, level, list, flag);
		list.add(Component.literal(
				"\u043E\u0442\u043A\u0443\u0434\u0430 \u0443 \u0442\u0435\u0431\u044F \u044D\u0442\u043E?! \u044D\u0442\u043E \u043F\u0440\u043E\u0441\u0442\u043E \u0438\u043A\u043E\u043D\u043A\u0430, \u0432\u044B\u043A\u0438\u043D\u044C."));
	}
}
