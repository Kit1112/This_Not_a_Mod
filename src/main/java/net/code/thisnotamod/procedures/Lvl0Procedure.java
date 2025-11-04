package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.item.DriveItem;

public class Lvl0Procedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if ((entity instanceof LivingEntity _livEnt ? _livEnt.getMainHandItem() : ItemStack.EMPTY).getItem() instanceof DriveItem)
			(entity instanceof LivingEntity _livEnt ? _livEnt.getMainHandItem() : ItemStack.EMPTY).getOrCreateTag().putString("geckoAnim", "R:0");
			if (entity instanceof net.minecraft.server.level.ServerPlayer sp) {
    ItemStack stack = ((LivingEntity)entity).getMainHandItem();
    long id = software.bernie.geckolib.animatable.GeoItem.getOrAssignId(stack, sp.serverLevel());
    if (stack.getItem() instanceof net.code.thisnotamod.item.DriveItem drive) {
        drive.triggerAnim(sp, id, "main", "lvl0");
    }
}

	}
}
