package net.code.thisnotamod.network;

import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.MenuProvider;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.network.chat.Component;
import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.network.NetworkHooks;
import io.netty.buffer.Unpooled;

import net.code.thisnotamod.world.inventory.SignalScannerMenu;
import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;
import net.code.thisnotamod.world.inventory.SignalTunerMenu;

import java.util.function.Supplier;

public class OpenPanelPacket {
    private final BlockPos pos;
    private final String panelName;

    public OpenPanelPacket(BlockPos pos, String panelName) {
        this.pos = pos;
        this.panelName = panelName;
    }

    public OpenPanelPacket(FriendlyByteBuf buf) {
        this.pos = buf.readBlockPos();
        this.panelName = buf.readUtf();
    }

    public void toBytes(FriendlyByteBuf buf) {
        buf.writeBlockPos(pos);
        buf.writeUtf(panelName);
    }

    public void handle(Supplier<NetworkEvent.Context> ctx) {
        ctx.get().enqueueWork(() -> {
            ServerPlayer player = ctx.get().getSender();
            if (player == null) return;

            if (player.distanceToSqr(pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5) > 100) return;

            FriendlyByteBuf buf = new FriendlyByteBuf(Unpooled.buffer());
            buf.writeBlockPos(pos);

            if (panelName.startsWith("Panel_Search")) {
                openMenu(player, pos, "Сканер сигналов", (id, inv, p) -> new SignalScannerMenu(id, inv, buf));
            } else if (panelName.startsWith("Panel_Upgrade")) {
                openMenu(player, pos, "Улучшения", (id, inv, p) -> new PanelUpgradeMenu(id, inv, buf));
            } else if (panelName.startsWith("Panel_Listening")) {
                openMenu(player, pos, "Прослушка", (id, inv, p) -> new PanelPlaybackMenu(id, inv, buf));
            } else if (panelName.startsWith("Panel_download")) {
                openMenu(player, pos, "Тюнер скачивания", (id, inv, p) -> new SignalTunerMenu(id, inv, buf));
            }
        });
        ctx.get().setPacketHandled(true);
    }

    private void openMenu(ServerPlayer player, BlockPos pos, String title, CustomMenuConstructor constructor) {
        NetworkHooks.openScreen(player, new MenuProvider() {
            @Override
            public Component getDisplayName() { return Component.literal(title); }
            @Override
            public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                return constructor.create(id, inv, p);
            }
        }, pos);
    }

    private interface CustomMenuConstructor {
        AbstractContainerMenu create(int id, Inventory inv, Player p);
    }
}