package net.code.thisnotamod.procedures;

import net.minecraftforge.network.PacketDistributor;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;

import net.code.thisnotamod.ThisnotamodMod;

public class PassChangeXbProcedure {
	public static void execute(LevelAccessor world, Entity entity) {
		if (entity == null)
			return;
		if (entity instanceof ServerPlayer _player && !world.isClientSide())
			ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> _player), new ThisnotamodMod.TextboxSetMessage("passChangeField", ""));
	}
}
