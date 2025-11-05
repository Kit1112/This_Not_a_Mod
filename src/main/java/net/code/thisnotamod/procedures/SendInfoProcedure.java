package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.CommandSourceStack;


import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;

import com.mojang.brigadier.exceptions.CommandSyntaxException;
import com.mojang.brigadier.context.CommandContext;
import net.minecraft.world.entity.Entity;

public class SendInfoProcedure {
    public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
        // читаем текст
String txt;
try {
    txt = MessageArgument.getMessage(arguments, "info_text").getString();
} catch (CommandSyntaxException e) {
    txt = "Ошибка чтения ввода.";
}

// контекстный игрок (может быть null, тогда ничего не шлём)
net.minecraft.world.entity.Entity ctxEntity = null;
try { ctxEntity = arguments.getSource().getEntity(); } catch (Exception ignored) {}

net.code.thisnotamod.TipApi.show(
        world,
        ctxEntity,
        txt,
        new ItemStack(ThisnotamodModItems.INFOICON.get()),
        new ResourceLocation("thisnotamod", "hint")
);
    }
}
