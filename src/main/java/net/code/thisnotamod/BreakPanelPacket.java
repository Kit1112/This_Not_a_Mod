package net.code.thisnotamod.network;

import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.level.Level;
import net.minecraftforge.network.NetworkEvent;

import java.util.function.Supplier;

public class BreakPanelPacket {
    private final BlockPos pos;

    public BreakPanelPacket(BlockPos pos) {
        this.pos = pos;
    }

    public BreakPanelPacket(FriendlyByteBuf buf) {
        this.pos = buf.readBlockPos();
    }

    public void toBytes(FriendlyByteBuf buf) {
        buf.writeBlockPos(pos);
    }

    public void handle(Supplier<NetworkEvent.Context> ctx) {
        ctx.get().enqueueWork(() -> {
            ServerPlayer player = ctx.get().getSender();
            if (player == null) return;

            Level level = player.level();
            
            // Проверка дистанции (защита от читеров)
            if (player.distanceToSqr(pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5) > 100) return;

            // Разрушаем блок с выпадением дропа
            level.destroyBlock(pos, true);
        });
        ctx.get().setPacketHandled(true);
    }
}