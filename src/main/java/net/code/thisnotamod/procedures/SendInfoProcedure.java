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

public class SendInfoProcedure {
    public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
        // текст
        String txt;
        try {
            txt = MessageArgument.getMessage(arguments, "info_text").getString();
        } catch (CommandSyntaxException e) {
            txt = "Ошибка чтения ввода.";
        }

        // целевой игрок из аргумента player_info (fallback — источник команды)
        Entity target = null;
        try {
            target = EntityArgument.getPlayer(arguments, "player_info");
        } catch (Exception ignored) {
            try { target = arguments.getSource().getEntity(); } catch (Exception ignored2) {}
        }

        // показать подсказку (универсально: сервер -> S2C, клиент -> сразу HUD)
        net.code.thisnotamod.TipApi.show(
                world,
                target,
                txt,
                new ItemStack(ThisnotamodModItems.INFOICON.get()),
                new ResourceLocation("thisnotamod", "hint")
        );
    }
}
