package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.arguments.EntityArgument;

import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.exceptions.CommandSyntaxException;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.init.ThisnotamodModItems;

public class SendWarnProcedure {
    public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
        // текст
        String txt;
        try {
            txt = MessageArgument.getMessage(arguments, "warn_text").getString();
        } catch (CommandSyntaxException e) {
            txt = "Ошибка чтения ввода.";
        }

        // целевой игрок из аргумента player_warn (fallback — источник команды)
        Entity target = null;
        try {
            target = EntityArgument.getPlayer(arguments, "player_warn");
        } catch (Exception ignored) {
            try { target = arguments.getSource().getEntity(); } catch (Exception ignored2) {}
        }

        net.code.thisnotamod.TipApi.show(
                world,
                target,
                txt,
                new ItemStack(ThisnotamodModItems.WARNINGICON.get()),
                new ResourceLocation("thisnotamod", "notif_warning")
        );
    }
}
