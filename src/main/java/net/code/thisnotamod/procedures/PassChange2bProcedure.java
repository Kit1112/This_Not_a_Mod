package net.code.thisnotamod.procedures;

import net.minecraftforge.network.PacketDistributor;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;

import net.code.thisnotamod.ThisnotamodMod;

import java.util.HashMap;

public class PassChange2bProcedure {
	public static void execute(LevelAccessor world, Entity entity, HashMap guistate) {
		if (entity == null || guistate == null)
			return;
		if (entity instanceof ServerPlayer _player && !world.isClientSide())
			ThisnotamodMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> _player),
					new ThisnotamodMod.TextboxSetMessage("passChangeField", ((guistate.containsKey("textin:passChangeField") ? (String) guistate.get("textin:passChangeField") : "") + "2")));
	}
}
