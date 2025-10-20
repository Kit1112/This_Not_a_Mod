package net.code.thisnotamod.procedures;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.core.BlockPos;

public class FridgeDownRBMProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z) {
		{
			int _value = 1;
			BlockPos _pos = BlockPos.containing(x, y, z);
			BlockState _bs = world.getBlockState(_pos);
			if (_bs.getBlock().getStateDefinition().getProperty("animation") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
				world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
		}
		{
			int _value = 1;
			BlockPos _pos = BlockPos.containing(x, y, z);
			BlockState _bs = world.getBlockState(_pos);
			if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
				world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
		}
		{
			// Безопасно ставим у блока значение анимации = 2 (одноразовый триггер)
			if (world instanceof net.minecraft.world.level.Level _level && !_level.isClientSide()) {
				final int _value = 2; // <- твоя анимация "2"
				BlockPos _pos = BlockPos.containing(x, y, z);
				BlockState _bs = world.getBlockState(_pos);
				var _prop = _bs.getBlock().getStateDefinition().getProperty("animation");
				if (_prop instanceof IntegerProperty _intProp && _intProp.getPossibleValues().contains(_value)) {
					world.setBlock(_pos, _bs.setValue(_intProp, _value), 3);
				}
			}
		}
	}
}
