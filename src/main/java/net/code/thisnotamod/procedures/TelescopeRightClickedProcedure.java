package net.code.thisnotamod.procedures;

import org.lwjgl.glfw.GLFW;

import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.client.event.InputEvent;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.Entity;
import net.minecraft.sounds.SoundSource;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.core.BlockPos;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.CommandSource;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.ThisnotamodMod;

public class TelescopeRightClickedProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, BlockState blockstate, Entity entity) {
		if (entity == null)
			return;
		{
			int _value = 1;
			BlockPos _pos = BlockPos.containing(x, y, z);
			BlockState _bs = world.getBlockState(_pos);
			if (_bs.getBlock().getStateDefinition().getProperty("animation") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
				world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
		}
		if ((blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip2 ? blockstate.getValue(_getip2) : -1) == 0
				|| (blockstate.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _getip4 ? blockstate.getValue(_getip4) : -1) == 1) {
			{
				int _value = 1;
				BlockPos _pos = BlockPos.containing(x, y, z);
				BlockState _bs = world.getBlockState(_pos);
				if (_bs.getBlock().getStateDefinition().getProperty("animation") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
					world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
			}
			ThisnotamodMod.queueServerWork(20, () -> {
				{
					int _value = 2;
					BlockPos _pos = BlockPos.containing(x, y, z);
					BlockState _bs = world.getBlockState(_pos);
					if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
						world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
				}
				if (world instanceof Level _level) {
					if (!_level.isClientSide()) {
						_level.playSound(null, BlockPos.containing(x, y, z), ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("item.spyglass.use")), SoundSource.BLOCKS, 1, 1);
					} else {
						_level.playLocalSound(x, y, z, ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("item.spyglass.use")), SoundSource.BLOCKS, 1, 1, false);
					}
				}
				{
					Entity _ent = entity;
					if (!_ent.level().isClientSide() && _ent.getServer() != null) {
						_ent.getServer().getCommands().performPrefixedCommand(new CommandSourceStack(CommandSource.NULL, _ent.position(), _ent.getRotationVector(), _ent.level() instanceof ServerLevel ? (ServerLevel) _ent.level() : null, 4,
								_ent.getName().getString(), _ent.getDisplayName(), _ent.level().getServer(), _ent), "attribute @s minecraft:generic.movement_speed modifier add 3d952521-d8be-4e6d-9906-d1fb22ca3156 vps_binoculars -1 add");
					}
				}
			});
			// === CUSTOM SNIPPET: однократный слушатель отката по Esc/ПКМ ===
			if (world instanceof Level _level && _level.isClientSide()) {
				if (!entity.getPersistentData().getBoolean("telescope_listener")) {
					entity.getPersistentData().putBoolean("telescope_listener", true);
					final int fx = (int) x;
					final int fy = (int) y;
					final int fz = (int) z;
					final String setBlockCmd = "setblock " + fx + " " + fy + " " + fz + " thisnotamod:telescope[blockstate=1] replace";
					final Object[] listenerRef = new Object[1]; // используем массив как контейнер для final listener
					Object listener = new Object() {
						@SubscribeEvent
						public void onKey(InputEvent.Key event) {
							if (event.getAction() == GLFW.GLFW_PRESS && event.getKey() == GLFW.GLFW_KEY_ESCAPE) {
								handleClose();
							}
						}

						@SubscribeEvent
						public void onMouse(InputEvent.MouseButton event) {
							if (event.getAction() == GLFW.GLFW_PRESS && event.getButton() == GLFW.GLFW_MOUSE_BUTTON_RIGHT) {
								handleClose();
							}
						}

						private void handleClose() {
							if (Minecraft.getInstance().player != null) {
								String blockCmd = "execute as @s run " + setBlockCmd;
								String attrCmd = "attribute @s minecraft:generic.movement_speed modifier remove 3d952521-d8be-4e6d-9906-d1fb22ca3156";
								// Выполняем как unsigned команды — не выводятся в чат
								Minecraft.getInstance().getConnection().sendUnsignedCommand(blockCmd);
								Minecraft.getInstance().getConnection().sendUnsignedCommand(attrCmd);
							}
							MinecraftForge.EVENT_BUS.unregister(listenerRef[0]);
							entity.getPersistentData().putBoolean("telescope_listener", false);
						}
					};
					listenerRef[0] = listener; // сохраняем в контейнер
					MinecraftForge.EVENT_BUS.register(listener);
				}
			}
		}
	}
}
