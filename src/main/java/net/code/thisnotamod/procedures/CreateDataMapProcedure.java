package net.code.thisnotamod.procedures;

import net.minecraft.world.entity.Entity;
import net.minecraft.nbt.ByteTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class CreateDataMapProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if (((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).size() < 7) {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(0, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(1, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(2, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(3, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(4, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(5, ByteTag.valueOf(false));
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).KerfCraftTrueList).addTag(6, ByteTag.valueOf(false));
		}
	}
}
