package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class ClearCheckBoxProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox1 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox2 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox3 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox4 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox5 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox6 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox7 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		{
			double _setval = 3;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.CheckBox8 = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
	}
}
