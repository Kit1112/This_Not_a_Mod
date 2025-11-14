package net.code.thisnotamod.world.inventory;

import net.code.thisnotamod.block.entity.TestUpgradeBlockEntity;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.level.Level;
import net.code.thisnotamod.init.ThisnotamodModMenus;
import net.code.thisnotamod.init.ThisnotamodModMenus;

public class PanelUpgradeMenu extends AbstractContainerMenu {
    public static final int BTN_IMPORT_EXPORT = 1;
    public static final int BTN_START         = 2;
    public static final int BTN_STOP          = 3;
    public static final int BTN_PLACEHOLDER   = 4;

    public final Level world;
    public final int x, y, z;

        public PanelUpgradeMenu(int id, Inventory inv, FriendlyByteBuf data) {
        // Привязываемся к зарегистрированному типу меню в автогене
        super(ThisnotamodModMenus.PANEL_UPGRADE.get(), id);
        this.world = inv.player.level();
        BlockPos pos = data.readBlockPos();
        this.x = pos.getX();
        this.y = pos.getY();
        this.z = pos.getZ();
    }


    @Override
    public boolean clickMenuButton(Player player, int buttonId) {
        if (world.isClientSide) return true;
        TestUpgradeBlockEntity be = getBE();
        if (be == null) return false;

        switch (buttonId) {
            case BTN_IMPORT_EXPORT -> {
                // если на диске сигнал — импорт; иначе — экспорт единственного импортированного обратно
                be.importOrExportOne();
                return true;
            }
            case BTN_START -> { be.startUpgrade(); return true; }
            case BTN_STOP  -> { be.stopUpgrade(true); return true; }
            default -> { return true; }
        }
    }

    private TestUpgradeBlockEntity getBE() {
        BlockPos pos = new BlockPos(this.x, this.y, this.z);
        var raw = world.getBlockEntity(pos);
        return (raw instanceof TestUpgradeBlockEntity u) ? u : null;
    }

    @Override public boolean stillValid(Player player) { return true; }
    @Override public net.minecraft.world.item.ItemStack quickMoveStack(Player player, int index) { return net.minecraft.world.item.ItemStack.EMPTY; }
}
