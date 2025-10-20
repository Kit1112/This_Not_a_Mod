package net.code.thisnotamod.procedures;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;

import net.code.thisnotamod.init.ThisnotamodModItems;

import java.util.function.Supplier;
import java.util.Map;

public class KerfIntOpenProcedure {
	private static boolean inProgress = false;

	public static void execute(Entity entity) {
		if (entity == null)
			return;

		// 🔒 Блокировка рекурсии
		if (inProgress)
			return;
		inProgress = true;

		try {
			if (entity instanceof Player _player
					&& _player.containerMenu instanceof Supplier _current
					&& _current.get() instanceof Map _slots) {
				ItemStack _setstack = new ItemStack(ThisnotamodModItems.KERFU_BLUEPRINT.get()).copy();
				_setstack.setCount(1);

				// Проверка: если уже тот же предмет в слоте — не трогаем (чтобы не триггерить setChanged)
				Object slotObj = _slots.get(0);
				if (slotObj instanceof Slot _slot) {
					ItemStack existing = _slot.getItem();
					if (!ItemStack.isSameItemSameTags(existing, _setstack)) {
						_slot.set(_setstack);
						_player.containerMenu.broadcastChanges();
					}
				}
			}
		} finally {
			// 🧩 снимаем блокировку после завершения
			inProgress = false;
		}
	}
}
