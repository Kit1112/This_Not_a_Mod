package net.code.thisnotamod.procedures;

import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.network.PacketDistributor;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.sounds.SoundSource;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.core.BlockPos;
import net.minecraft.client.gui.components.EditBox;

import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

public class PassChangeOkBProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity, HashMap guistate) {
		if (entity == null || guistate == null)
			return;
		String changepass = "";
		if (entity instanceof ServerPlayer _player && !world.isClientSide())
			ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> _player),
					new ThisnotamodMod.TextboxSetMessage("passChangeField", (guistate.containsKey("text:passChangeField") ? ((EditBox) guistate.get("text:passChangeField")).getValue() : "")));
		if ((guistate.containsKey("textin:passChangeField") ? (String) guistate.get("textin:passChangeField") : "").length() == 4) {
			if (!world.isClientSide()) {
				BlockPos _bp = BlockPos.containing(x, y, z);
				BlockEntity _blockEntity = world.getBlockEntity(_bp);
				BlockState _bs = world.getBlockState(_bp);
				if (_blockEntity != null)
					_blockEntity.getPersistentData().putString("password", (guistate.containsKey("textin:passChangeField") ? (String) guistate.get("textin:passChangeField") : ""));
				if (world instanceof Level _level)
					_level.sendBlockUpdated(_bp, _bs, _bs, 3);
			}
			if (!world.isClientSide()) {
				BlockPos _bp = BlockPos.containing(x, y + 1, z);
				BlockEntity _blockEntity = world.getBlockEntity(_bp);
				BlockState _bs = world.getBlockState(_bp);
				if (_blockEntity != null)
					_blockEntity.getPersistentData().putString("password", (guistate.containsKey("textin:passChangeField") ? (String) guistate.get("textin:passChangeField") : ""));
				if (world instanceof Level _level)
					_level.sendBlockUpdated(_bp, _bs, _bs, 3);
			}
			if (entity instanceof Player _player)
				_player.closeContainer();
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(Component.literal(("\u00A7a\u041A\u043E\u0434\u043E\u0432\u043E\u043C\u0443 \u0437\u0430\u043C\u043A\u0443 \u043F\u0440\u0438\u0441\u0432\u043E\u0435\u043D \u043F\u0430\u0440\u043E\u043B\u044C \u00A7a"
						+ (guistate.containsKey("textin:passChangeField") ? (String) guistate.get("textin:passChangeField") : ""))), true);
			if (world instanceof Level _level) {
				if (!_level.isClientSide()) {
					_level.playSound(null, BlockPos.containing(x, y, z), ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:passchange_ok")), SoundSource.BLOCKS, 1, 1);
				} else {
					_level.playLocalSound(x, y, z, ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:passchange_ok")), SoundSource.BLOCKS, 1, 1, false);
				}
			}
		} else {
			if (entity instanceof Player _player)
				_player.closeContainer();
			if (entity instanceof Player _player && !_player.level().isClientSide())
				_player.displayClientMessage(
						Component.literal("\u00A7c\u041F\u0430\u0440\u043E\u043B\u044C \u0434\u043E\u043B\u0436\u0435\u043D \u0441\u043E\u0441\u0442\u043E\u044F\u0442\u044C \u0438\u0437 4 \u0441\u0438\u043C\u0432\u043E\u043B\u043E\u0432!"), true);
			if (world instanceof Level _level) {
				if (!_level.isClientSide()) {
					_level.playSound(null, BlockPos.containing(x, y, z), ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:passlock_deny")), SoundSource.BLOCKS, 1, 1);
				} else {
					_level.playLocalSound(x, y, z, ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:passlock_deny")), SoundSource.BLOCKS, 1, 1, false);
				}
			}
			{
				int _value = 2;
				BlockPos _pos = BlockPos.containing(x, y, z);
				BlockState _bs = world.getBlockState(_pos);
				if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
					world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
			}
			ThisnotamodMod.queueServerWork(20, () -> {
				{
					int _value = 1;
					BlockPos _pos = BlockPos.containing(x, y, z);
					BlockState _bs = world.getBlockState(_pos);
					if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _integerProp && _integerProp.getPossibleValues().contains(_value))
						world.setBlock(_pos, _bs.setValue(_integerProp, _value), 3);
				}
			});
		}
	}
}
