package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.item.DriveItem;

public class Lvl3copyProcedure {
	public static void execute(Entity entity) {
	if (entity == null) return;

	ItemStack stack = (entity instanceof LivingEntity _livEnt) ? _livEnt.getMainHandItem() : ItemStack.EMPTY;
	if (stack.getItem() instanceof DriveItem) {
		stack.getOrCreateTag().putString("geckoAnim", "R:lvl3copy");

		if (entity instanceof net.minecraft.server.level.ServerPlayer sp) {
			long id = software.bernie.geckolib.animatable.GeoItem.getOrAssignId(stack, sp.serverLevel());
			((DriveItem) stack.getItem()).triggerAnim(sp, id, "main", "lvl3copy");
		}
	}
}

}
