package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.CommandSourceStack;

import net.code.thisnotamod.network.ThisnotamodModVariables;

import com.mojang.brigadier.exceptions.CommandSyntaxException;
import com.mojang.brigadier.context.CommandContext;

public class SendWarnProcedure {
	public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
		ThisnotamodModVariables.MapVariables.get(world).placeholderString = (new Object() {
			public String getMessage() {
				try {
					return MessageArgument.getMessage(arguments, "warn_text").getString();
				} catch (CommandSyntaxException ignored) {
					return "";
				}
			}
		}).getMessage();
		ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		String _txt;
		try {
			_txt = net.minecraft.commands.arguments.MessageArgument.getMessage(arguments, "warn_text").getString();
		} catch (com.mojang.brigadier.exceptions.CommandSyntaxException e) {
			_txt = "Ошибка чтения ввода.";
		}
		// игрок-получатель (если команда из консоли, будет null и подсказка не отправится)
		net.minecraft.world.entity.Entity _ctx = null;
		try {
			_ctx = arguments.getSource().getEntity();
		} catch (Exception ignored) {
		}
		net.code.thisnotamod.TipApi.show(world, _ctx, _txt, new net.minecraft.world.item.ItemStack(net.code.thisnotamod.init.ThisnotamodModItems.WARNINGICON.get()), new net.minecraft.resources.ResourceLocation("thisnotamod", "notif_warning"));
	}
}
