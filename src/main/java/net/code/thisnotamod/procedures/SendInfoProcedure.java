package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

import com.mojang.brigadier.exceptions.CommandSyntaxException;
import com.mojang.brigadier.context.CommandContext;

public class SendInfoProcedure {
	public static void execute(LevelAccessor world, CommandContext<CommandSourceStack> arguments) {
		ThisnotamodModVariables.MapVariables.get(world).placeholderString = (new Object() {
			public String getMessage() {
				try {
					return MessageArgument.getMessage(arguments, "info_text").getString();
				} catch (CommandSyntaxException ignored) {
					return "";
				}
			}
		}).getMessage();
		ThisnotamodModVariables.MapVariables.get(world).syncData(world);
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			Component text;
			try {
				// теперь аргумент — MessageArgument, а не StringArgumentType
				text = MessageArgument.getMessage(arguments, "info_text");
			} catch (Exception e) {
				text = Component.literal("Ошибка чтения ввода.");
			}
			CustomTipOverlay.queueTip(text, new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
	}
}
