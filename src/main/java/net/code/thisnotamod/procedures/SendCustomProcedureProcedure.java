package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;

import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.commands.arguments.ResourceLocationArgument;
import net.minecraft.commands.arguments.item.ItemArgument;
import net.minecraft.commands.arguments.item.ItemInput;

import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.exceptions.CommandSyntaxException;

import net.minecraftforge.registries.ForgeRegistries;

import net.code.thisnotamod.init.ThisnotamodModItems;

public class SendCustomProcedureProcedure {
    public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
        // 1) Получатель
        Entity target = null;
        try {
            target = EntityArgument.getPlayer(arguments, "player_custom");
        } catch (Exception ignored) {}

        // 2) Иконка (аргумент "icon" как в /give)
        ItemStack iconStack;
        try {
            ItemInput input = ItemArgument.getItem(arguments, "icon");
            // копия стака, учитывает NBT, если он был в аргументе
            iconStack = input.createItemStack(1, false);
        } catch (Exception e) {
            iconStack = new ItemStack(ThisnotamodModItems.INFOICON.get());
        }

        // 3) Звук
        ResourceLocation soundId;
        try {
            soundId = ResourceLocationArgument.getId(arguments, "sound");
        } catch (Exception e) {
            soundId = new ResourceLocation("thisnotamod", "hint");
        }
        if (ForgeRegistries.SOUND_EVENTS.getValue(soundId) == null) {
            soundId = new ResourceLocation("thisnotamod", "hint");
        }

        // 4) Текст
        String txt;
        try {
            txt = MessageArgument.getMessage(arguments, "custom_text").getString();
        } catch (CommandSyntaxException e) {
            txt = "Ошибка чтения ввода.";
        }

        // 5) Отправка
        net.code.thisnotamod.TipApi.show(
            world,
            target,
            txt,
            iconStack,
            soundId
        );
    }
}
