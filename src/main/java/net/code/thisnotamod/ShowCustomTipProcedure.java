package net.code.thisnotamod;

import net.minecraft.client.Minecraft;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.LevelAccessor;

public class ShowCustomTipProcedure {
    public static void show(LevelAccessor world, Entity entity, String text, ItemStack iconStack, String soundId) {
        if (!(world instanceof Level level)) return;
        if (!level.isClientSide()) return;
        if (Minecraft.getInstance() == null) return;

        Component msg = Component.literal(text);
        CustomTipOverlay.queueTip(msg, iconStack == null ? ItemStack.EMPTY : iconStack,
                soundId == null ? new ResourceLocation("thisnotamod", "hint") : new ResourceLocation(soundId));
    }

    public static void show(LevelAccessor world, Entity entity, String text, ItemStack iconStack) {
        show(world, entity, text, iconStack, null);
    }

    public static void show(LevelAccessor world, Entity entity, String text) {
        show(world, entity, text, ItemStack.EMPTY, null);
    }
}