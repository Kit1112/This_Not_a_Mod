package net.code.thisnotamod.world.inventory;

import net.code.thisnotamod.init.ThisnotamodModMenus;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.level.Level;

import java.util.HashMap;

public class PanelPlaybackMenu extends AbstractContainerMenu {
    // guistate — чтобы экран мог к нему обращаться
    public static final HashMap<String, Object> guistate = new HashMap<>();

    public final Level world;
    public final Player entity;
    public final int x, y, z;

    public PanelPlaybackMenu(int id, Inventory inv, FriendlyByteBuf extraData) {
        super(ThisnotamodModMenus.PANEL_PLAYBACK.get(), id);
        this.entity = inv.player;
        this.world = this.entity.level();

        int lx = 0, ly = 0, lz = 0;
        if (extraData != null && extraData.readableBytes() >= 8) {
            BlockPos pos = extraData.readBlockPos();
            lx = pos.getX();
            ly = pos.getY();
            lz = pos.getZ();
        }
        this.x = lx; this.y = ly; this.z = lz;
    }

    @Override
    public boolean stillValid(Player player) {
        return true;
    }
    @Override
    public net.minecraft.world.item.ItemStack quickMoveStack(Player player, int index) {
        return net.minecraft.world.item.ItemStack.EMPTY;
    }

}
