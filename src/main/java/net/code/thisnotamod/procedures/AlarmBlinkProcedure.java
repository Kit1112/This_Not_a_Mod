package net.code.thisnotamod.procedures;

import org.checkerframework.checker.units.qual.s;

import net.minecraftforge.registries.ForgeRegistries;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.properties.BooleanProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.sounds.SoundSource;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.ThisnotamodMod;

import java.util.List;
import java.util.ArrayList;

public class AlarmBlinkProcedure {
	public static void execute(LevelAccessor world) {
		double lampX = 0;
		double lampY = 0;
		double lampZ = 0;
		List<Object> WarnLampCoords = new ArrayList<>();
		boolean AlarmPlayed = false;
		for (String keyiterator : ThisnotamodModVariables.MapVariables.get(world).WarnLamps.getAllKeys()) {
			WarnLampCoords.clear();
			{
				String[] _array = keyiterator.split(",");
				if (_array.length != 0) {
					for (String stringiterator : _array) {
						WarnLampCoords.add(stringiterator);
					}
				} else {
					String stringiterator = keyiterator;
					for (int _yourmother = 0; _yourmother < 1; _yourmother++) {
						WarnLampCoords.add(stringiterator);
					}
				}
			}
			ThisnotamodModVariables.MapVariables.get(world).warnLampX = new Object() {
				double convert(String s) {
					try {
						return Double.parseDouble(s.trim());
					} catch (Exception e) {
					}
					return 0;
				}
			}.convert("" + WarnLampCoords.get(0));
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);
			ThisnotamodModVariables.MapVariables.get(world).warnLampY = new Object() {
				double convert(String s) {
					try {
						return Double.parseDouble(s.trim());
					} catch (Exception e) {
					}
					return 0;
				}
			}.convert("" + WarnLampCoords.get(1));
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);
			ThisnotamodModVariables.MapVariables.get(world).warnLampZ = new Object() {
				double convert(String s) {
					try {
						return Double.parseDouble(s.trim());
					} catch (Exception e) {
					}
					return 0;
				}
			}.convert("" + WarnLampCoords.get(2));
			ThisnotamodModVariables.MapVariables.get(world).syncData(world);
			if (ThisnotamodModVariables.MapVariables.get(world).Alarm) {
				if (((world.getBlockState(BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
						.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip9
								? (world.getBlockState(
										BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
										.getValue(_getip9)
								: -1) == 0
						|| ((world.getBlockState(BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
								.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip11
										? (world.getBlockState(
												BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
												.getValue(_getip11)
										: -1) == 1) {
					{
						int _value = 2;
						BlockPos _pos = BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ);
						BlockState _bs = world.getBlockState(_pos);
						if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
							world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
					}
				} else {
					{
						int _value = 1;
						BlockPos _pos = BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ);
						BlockState _bs = world.getBlockState(_pos);
						if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
							world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
					}
				}
				if (((world.getBlockState(BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
						.getBlock().getStateDefinition().getProperty("AlarmIsPlayed") instanceof BooleanProperty _getbp15
						&& (world.getBlockState(BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ)))
								.getValue(_getbp15)) == false) {
					if (!world.isClientSide()) {
						BlockPos _bp = BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ);
						BlockEntity _blockEntity = world.getBlockEntity(_bp);
						BlockState _bs = world.getBlockState(_bp);
						if (_blockEntity != null)
							_blockEntity.getPersistentData().putBoolean("AlarmIsPlayed", true);
						if (world instanceof Level _level)
							_level.sendBlockUpdated(_bp, _bs, _bs, 3);
					}
					if (world instanceof Level _level) {
						if (!_level.isClientSide()) {
							_level.playSound(null, BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ),
									ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:alarm")), SoundSource.BLOCKS, 1, 1);
						} else {
							_level.playLocalSound(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ,
									ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:alarm")), SoundSource.BLOCKS, 1, 1, false);
						}
					}
					ThisnotamodMod.queueServerWork(60, () -> {
						if (!world.isClientSide()) {
							BlockPos _bp = BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ);
							BlockEntity _blockEntity = world.getBlockEntity(_bp);
							BlockState _bs = world.getBlockState(_bp);
							if (_blockEntity != null)
								_blockEntity.getPersistentData().putBoolean("AlarmIsPlayed", false);
							if (world instanceof Level _level)
								_level.sendBlockUpdated(_bp, _bs, _bs, 3);
						}
					});
				}
			}
		}
		if (ThisnotamodModVariables.MapVariables.get(world).Alarm) {
			ThisnotamodMod.queueServerWork(20, () -> {
				AlarmBlinkProcedure.execute(world);
			});
		} else {
			{
				int _value = 1;
				BlockPos _pos = BlockPos.containing(ThisnotamodModVariables.MapVariables.get(world).warnLampX, ThisnotamodModVariables.MapVariables.get(world).warnLampY, ThisnotamodModVariables.MapVariables.get(world).warnLampZ);
				BlockState _bs = world.getBlockState(_pos);
				if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
					world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
			}
			{
				return;
			}
		}
	}
}
