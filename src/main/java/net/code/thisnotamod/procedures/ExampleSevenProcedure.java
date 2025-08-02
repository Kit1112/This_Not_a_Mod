package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class ExampleSevenProcedure {
	public static String execute(Entity entity) {
		if (entity == null)
			return "";
		return (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).Example7;
	}
}
