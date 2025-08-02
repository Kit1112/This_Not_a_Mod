package net.code.thisnotamod.procedures;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class RepairAllServersProcedure {
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
			{
				int _value = 1;
				BlockPos _pos = BlockPos.containing((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).servCoordX,
						(entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).servCoordY,
						(entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).servCoordZ);
				BlockState _bs = world.getBlockState(_pos);
				if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
					world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
			}
			ThisnotamodModVariables.daramapIterator.add(keyiterator);
		}
		if (entity instanceof Player _player && !_player.level().isClientSide())
			_player.displayClientMessage(Component.literal(("\u041F\u043E\u043B\u043E\u043C\u0430\u043D\u043E " + ThisnotamodModVariables.MapVariables.get(world).datamap1.size() + " \u0441\u0435\u0440\u0432\u0435\u0440\u043E\u0432.")), false);
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
			ThisnotamodModVariables.MapVariables.get(world).datamap1.put(
					("" + ThisnotamodModVariables.daramapIterator.get((int) (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).passArrIndex)),
					StringTag.valueOf("enabled"));
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
