package net.code.thisnotamod.procedures;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.StringTag;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.network.ThisnotamodModVariables;

public class ServerTrbmProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		if ((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).debug) {
			if (((world.getBlockState(BlockPos.containing(x, y + 1, z))).getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip1
					? (world.getBlockState(BlockPos.containing(x, y + 1, z))).getValue(_getip1)
					: -1) == 1
					|| ((world.getBlockState(BlockPos.containing(x, y + 1, z))).getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip3
							? (world.getBlockState(BlockPos.containing(x, y + 1, z))).getValue(_getip3)
							: -1) == 0) {
				{
					int _value = 2;
					BlockPos _pos = BlockPos.containing(x, y + 1, z);
					BlockState _bs = world.getBlockState(_pos);
					if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
						world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
				}
				ThisnotamodModVariables.MapVariables.get(world).datamap1.remove(((("" + new Vec3(x, (y + 1), z)).replace(")", "")).replace("(", "")));
				ThisnotamodModVariables.MapVariables.get(world).datamap1.put(((("" + new Vec3(x, (y + 1), z)).replace(")", "")).replace("(", "")), StringTag.valueOf("disabled"));
			} else if (((world.getBlockState(BlockPos.containing(x, y + 1, z))).getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip11
					? (world.getBlockState(BlockPos.containing(x, y + 1, z))).getValue(_getip11)
					: -1) == 2) {
				{
					int _value = 1;
					BlockPos _pos = BlockPos.containing(x, y + 1, z);
					BlockState _bs = world.getBlockState(_pos);
					if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
						world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
				}
				ThisnotamodModVariables.MapVariables.get(world).datamap1.remove(((("" + new Vec3(x, (y + 1), z)).replace(")", "")).replace("(", "")));
				ThisnotamodModVariables.MapVariables.get(world).datamap1.put(((("" + new Vec3(x, (y + 1), z)).replace(")", "")).replace("(", "")), StringTag.valueOf("enabled"));
			}
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal(("\u0412\u0435\u043A\u0442\u043E\u0440 " + (("" + new Vec3(x, y, z)).replace(")", "")).replace("(", ""))), false);
		}
	}
}
