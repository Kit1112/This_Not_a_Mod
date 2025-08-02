
package net.code.thisnotamod.item;

import net.minecraft.world.level.Level;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.food.FoodProperties;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.network.chat.Component;

import net.code.thisnotamod.procedures.SuperGlock17PriZaviershieniiIspolzovaniiaProcedure;

import java.util.List;

public class SuperGlock17Item extends Item {
	public SuperGlock17Item() {
		super(new Item.Properties().stacksTo(1).rarity(Rarity.COMMON).food((new FoodProperties.Builder()).nutrition(0).saturationMod(0f).alwaysEat().build()));
	}

	@Override
	public void appendHoverText(ItemStack itemstack, Level level, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, level, list, flag);
		list.add(Component.literal(""));
		list.add(Component.literal("\u00A77\u0421\u0410\u041C\u042B\u0419 \u041B\u0423\u0427\u0428\u0418\u0419 \u041F\u0418\u0421\u0422\u041E\u041B\u0415\u0422 \u0412 \u042D\u0422\u041E\u0419 \u0421\u0411\u041E\u0420\u041A\u0415!"));
		list.add(Component.literal("\u00A77\u041D\u0410\u041D\u041E\u0421\u0418\u0422 \u00A74200 \u00A77\u0423\u0420\u041E\u041D\u0410!!!"));
	}

	@Override
	public ItemStack finishUsingItem(ItemStack itemstack, Level world, LivingEntity entity) {
		ItemStack retval = super.finishUsingItem(itemstack, world, entity);
		double x = entity.getX();
		double y = entity.getY();
		double z = entity.getZ();
		SuperGlock17PriZaviershieniiIspolzovaniiaProcedure.execute(world, entity);
		return retval;
	}
}
