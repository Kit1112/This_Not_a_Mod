package net.code.thisnotamod.procedures;

import org.apache.logging.log4j.core.config.Order;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;

import net.code.thisnotamod.network.ThisnotamodModVariables;

import java.util.HashMap;

public class CreateOrderProcedure {
	public static void execute(Entity entity, HashMap guistate) {
		if (entity == null || guistate == null)
			return;
		String Order = "";
		if (guistate.containsKey("checkboxin:ArirPlush") && ((String) guistate.get("checkboxin:ArirPlush")).equals("true") ? true : false) {
			Order = Order + "0, ";
		}
		if (guistate.containsKey("checkboxin:Music_disc_main") && ((String) guistate.get("checkboxin:Music_disc_main")).equals("true") ? true : false) {
			Order = Order + "1, ";
		}
		if (guistate.containsKey("checkboxin:Music_disc_winter") && ((String) guistate.get("checkboxin:Music_disc_winter")).equals("true") ? true : false) {
			Order = Order + "2, ";
		}
		if (guistate.containsKey("checkboxin:WC") && ((String) guistate.get("checkboxin:WC")).equals("true") ? true : false) {
			Order = Order + "3, ";
		}
		if ((Order).equals("")) {
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal("\u041D\u0438\u0447\u0435\u0433\u043E \u0437\u0430\u043A\u0430\u0437\u0430\u043D\u043E \u043D\u0435 \u0431\u044B\u043B\u043E."), true);
		} else {
			((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).Order_list)
					.put(("" + (((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).Order_list).size() + 1)), StringTag.valueOf(Order));
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal("\u0417\u0430\u043A\u0430\u0437 \u0441\u043E\u0437\u0434\u0430\u043D."), true);
		}
	}
}
