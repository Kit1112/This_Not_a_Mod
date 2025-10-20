package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;
import net.minecraft.commands.CommandSourceStack;

import net.code.thisnotamod.network.ThisnotamodModVariables;

import com.mojang.brigadier.context.CommandContext;
import com.mojang.brigadier.arguments.DoubleArgumentType;

public class PingerSuccesChanceProcedure {
	public static void execute(CommandContext<CommandSourceStack> arguments, Entity entity) {
		if (entity == null)
			return;
		{
			double _setval = DoubleArgumentType.getDouble(arguments, "pinger_succes_chance");
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.pingerSuccesChance = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
	}
}
