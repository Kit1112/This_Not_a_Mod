package net.code.thisnotamod.procedures;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.CustomTipOverlay;

public class ClearListSProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		double enabledCount = 0;
		String currentValue = "";
		ThisnotamodModVariables.daramapIterator.clear();
		for (String keyiterator : ThisnotamodModVariables.MapVariables.get(world).datamap1.getAllKeys()) {
			ThisnotamodModVariables.Servers.clear();
			{
				String[] _array = keyiterator.split(",");
				if (_array.length != 0) {
					for (String stringiterator : _array) {
						ThisnotamodModVariables.Servers.add(stringiterator);
					}
				} else {
					String stringiterator = keyiterator;
					for (int _yourmother = 0; _yourmother < 1; _yourmother++) {
						ThisnotamodModVariables.Servers.add(stringiterator);
					}
				}
			}
			{
				double _setval = new Object() {
					double convert(String s) {
						try {
							return Double.parseDouble(s.trim());
						} catch (Exception e) {
						}
						return 0;
					}
				}.convert("" + ThisnotamodModVariables.Servers.get(0));
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.servCoordX = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				double _setval = new Object() {
					double convert(String s) {
						try {
							return Double.parseDouble(s.trim());
						} catch (Exception e) {
						}
						return 0;
					}
				}.convert("" + ThisnotamodModVariables.Servers.get(1));
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.servCoordY = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				double _setval = new Object() {
					double convert(String s) {
						try {
							return Double.parseDouble(s.trim());
						} catch (Exception e) {
						}
						return 0;
					}
				}.convert("" + ThisnotamodModVariables.Servers.get(2));
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.servCoordZ = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			ThisnotamodModVariables.daramapIterator.add(keyiterator);
		}
		Minecraft mc = Minecraft.getInstance();
		if (mc != null && mc.level != null && mc.player != null) {
			CustomTipOverlay.queueTip(Component.literal(("Удалено " + ThisnotamodModVariables.MapVariables.get(world).datamap1.size() + " записей.")), new ItemStack(ThisnotamodModItems.INFOICON.get()), new ResourceLocation("thisnotamod", "hint"));
		}
		{
			double _setval = 0;
			entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.passArrIndex = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
		for (int index0 = 0; index0 < (int) ThisnotamodModVariables.daramapIterator.size(); index0++) {
			ThisnotamodModVariables.MapVariables.get(world).datamap1
					.remove(("" + ThisnotamodModVariables.daramapIterator.get((int) (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).passArrIndex)));
			{
				double _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).passArrIndex + 1;
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.passArrIndex = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
		}
	}
}
