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
    public boolean clickMenuButton(Player player, int id) {
        if (id == 1) { // Import/Export
            if (!player.level().isClientSide) {
                BlockPos pos = new BlockPos(this.x, this.y, this.z);
                var be = player.level().getBlockEntity(pos);
                if (be instanceof net.code.thisnotamod.block.entity.TestPlaybackBlockEntity t) {
                    net.minecraft.world.item.ItemStack drv = t.getDrive();
                    int sidOnDrive = drv.isEmpty() ? -1
                            : drv.getOrCreateTag().getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID);

                    if (sidOnDrive >= 0) {
                        // На диске есть сигнал -> импортируем его в список блока
                        t.importFromInsertedDrive();
                    } else {
                        // На диске пусто -> экспортируем выбранный сигнал на диск
                        int sel = 0;
                        var tag = player.getPersistentData();
                        if (tag.contains("thisnotamod_panel_playback")) {
                            sel = tag.getCompound("thisnotamod_panel_playback").getInt("selectedIndex");
                        }
                        var view = t.getImportsView();
                        if (sel >= 0 && sel < view.size()) {
                            var cur = view.get(sel);
                            t.exportToInsertedDrive(cur.signalId, cur.level, cur.size);
                        }
                    }
                    t.setChanged();
                }
            }
            return true;
        }
        return super.clickMenuButton(player, id);
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
