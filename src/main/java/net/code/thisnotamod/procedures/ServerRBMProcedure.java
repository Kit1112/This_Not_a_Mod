package net.code.thisnotamod.procedures;

import net.minecraftforge.network.NetworkHooks;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.MenuProvider;
import net.minecraft.util.RandomSource;
import net.minecraft.util.Mth;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.world.inventory.ServerInterfaceMenu;
import net.code.thisnotamod.network.ThisnotamodModVariables;

import io.netty.buffer.Unpooled;

public class ServerRBMProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, BlockState blockstate, Entity entity) {
		if (entity == null)
			return;
		if ((blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip1 ? blockstate.getValue(_getip1) : -1) == 2) {
			ClearCheckBoxProcedure.execute(entity);
			ThisnotamodModVariables.exampleArray.clear();
			ThisnotamodModVariables.resultArray.clear();
			for (int index0 = 0; index0 < 8; index0++) {
				{
					double _setval = Mth.nextInt(RandomSource.create(), 0, 1);
					entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
						capability.rand = _setval;
						capability.syncPlayerVariables(entity);
					});
				}
				{
					double _setval = Mth.nextInt(RandomSource.create(), 0, 9);
					entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
						capability.firstNumber = _setval;
						capability.syncPlayerVariables(entity);
					});
				}
				{
					double _setval = Mth.nextInt(RandomSource.create(), 0, 9);
					entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
						capability.secondNumber = _setval;
						capability.syncPlayerVariables(entity);
					});
				}
				if ((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).rand == 0) {
					{
						double _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).firstNumber
								+ (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).secondNumber;
						entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
							capability.result = _setval;
							capability.syncPlayerVariables(entity);
						});
					}
					ThisnotamodModVariables.exampleArray.add((new java.text.DecimalFormat("#").format((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).firstNumber)
							+ "+" + new java.text.DecimalFormat("#").format((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).secondNumber)));
				} else if ((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).rand == 1) {
					{
						double _setval = Math.abs((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).firstNumber
								- (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).secondNumber);
						entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
							capability.result = _setval;
							capability.syncPlayerVariables(entity);
						});
					}
					ThisnotamodModVariables.exampleArray.add((new java.text.DecimalFormat("#").format((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).firstNumber)
							+ "-" + new java.text.DecimalFormat("#").format((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).secondNumber)));
				}
				if ((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).result > 9) {
					{
						double _setval = (entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).result - 10;
						entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
							capability.result = _setval;
							capability.syncPlayerVariables(entity);
						});
					}
				}
				ThisnotamodModVariables.resultArray.add(((entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new ThisnotamodModVariables.PlayerVariables())).result));
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(0);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example1 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(1);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example2 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(2);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example3 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(3);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example4 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(4);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example5 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(5);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example6 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(6);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example7 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			{
				String _setval = "" + ThisnotamodModVariables.exampleArray.get(7);
				entity.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.Example8 = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
			if (entity instanceof ServerPlayer _ent) {
				BlockPos _bpos = BlockPos.containing(x, y, z);
				NetworkHooks.openScreen((ServerPlayer) _ent, new MenuProvider() {
					@Override
					public Component getDisplayName() {
						return Component.literal("ServerInterface");
					}

					@Override
					public AbstractContainerMenu createMenu(int id, Inventory inventory, Player player) {
						return new ServerInterfaceMenu(id, inventory, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(_bpos));
					}
				}, _bpos);
			}
		}
	}
}
