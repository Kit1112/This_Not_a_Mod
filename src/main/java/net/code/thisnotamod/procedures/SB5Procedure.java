package net.code.thisnotamod.procedures;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class SB5Procedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if ((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).CheckBox2 == 3) {
			if (5 == new Object() {
				double convert(String s) {
					try {
						return Double.parseDouble(s.trim());
					} catch (Exception e) {
					}
					return 0;
				}
			}.convert("" + ThisnotamodModVariables.resultArray.get(1))) {
				{
					double _setval = 1;
					entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
						capability.CheckBox2 = _setval;
						capability.syncPlayerVariables(entity);
					});
				}
			} else {
				{
					double _setval = 2;
					entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
						capability.CheckBox2 = _setval;
						capability.syncPlayerVariables(entity);
					});
				}
			}
		}
	}
}
