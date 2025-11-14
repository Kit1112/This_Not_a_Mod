package net.code.thisnotamod.world.inventory;

import net.minecraftforge.items.ItemStackHandler;
import net.minecraftforge.items.IItemHandler;

import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.Level;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.inventory.ContainerLevelAccess;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.init.ThisnotamodModMenus;

import java.util.function.Supplier;
import java.util.Map;
import java.util.HashMap;

/**
 * Меню апгрейда. Только передаёт координаты блока и хранит состояние для экрана.
 * Размер и логика скалирования берутся на стороне экрана (как в PanelPlayback).
 */
public class PanelUpgradeMenu extends AbstractContainerMenu implements Supplier<Map<Integer, Slot>> {
    public static final HashMap<String, Object> guistate = new HashMap<>();
    public final Level world;
    public final Player entity;
    public int x, y, z;
    private ContainerLevelAccess access = ContainerLevelAccess.NULL;
    private IItemHandler internal;
    private final Map<Integer, Slot> customSlots = new HashMap<>();
    private boolean bound = false;
    private Supplier<Boolean> boundItemMatcher = null;
    private Entity boundEntity = null;
    private BlockEntity boundBlockEntity = null;

    public PanelUpgradeMenu(int id, Inventory inv, FriendlyByteBuf extraData) {
        super(ThisnotamodModMenus.PANEL_UPGRADE.get(), id);
        this.entity = inv.player;
        this.world = inv.player.level();
        this.internal = new ItemStackHandler(0);
        BlockPos pos = null;
        if (extraData != null) {
            pos = extraData.readBlockPos();
            this.x = pos.getX();
            this.y = pos.getY();
            this.z = pos.getZ();
            access = ContainerLevelAccess.create(world, pos);
        }
    }

private static double getUpgradeSpeedKbps(Player p) {
    if (p == null) return 1.0;
    var root = p.getPersistentData();

    // 1) прямое поле в корне
    if (root.contains("upgrade_speed")) {
        double v = root.getDouble("upgrade_speed");
        if (Double.isFinite(v) && v > 0.0) return v;
    }

    // 2) контейнеры MCreator
    String[] containers = new String[] {
            "player_persistence",
            "player_persistance",
            "thisnotamod_player_persistence",
            "thisnotamod_player_persistance",
            "PlayerPersisted"
    };
    for (String c : containers) {
        if (root.contains(c)) {
            var t = root.getCompound(c);
            if (t.contains("upgrade_speed")) {
                double v = t.getDouble("upgrade_speed");
                if (Double.isFinite(v) && v > 0.0) return v;
            }
        }
    }

    // 3) capability (как в SignalTuner)
    double cap = p
            .getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
            .map(vars -> vars.upgrade_speed)
            .orElse(Double.NaN);
    if (Double.isFinite(cap) && cap > 0.0) return cap;

    // 4) фолбек
    return 1.0;
}



    @Override
public boolean clickMenuButton(Player player, int id) {
    if (world == null) return false;
    BlockPos pos = new BlockPos(x, y, z);
    var beRaw = world.getBlockEntity(pos);
    if (!(beRaw instanceof net.code.thisnotamod.block.entity.TestUpgradeBlockEntity be)) return false;

    switch (id) {
        case 1: { // Import/Export
            var drv = be.getDrive();
            if (drv.isEmpty()) return false;
            int sid = drv.getOrCreateTag().getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID);
            if (sid >= 0) {
                // импорт с диска в блок (и очистка диска)
                be.importFromInsertedDrive();
            } else {
                // экспорт текущего единственного импорта в диск (и удаление из блока)
                var is = be.getSingleImport();
                if (is != null) be.exportToInsertedDrive(is.signalId, is.level, is.size);
            }
            return true;
        }
        case 2: { // START
    double kbps = getUpgradeSpeedKbps(player);
    be.startUpgradeWithSpeedKbps(kbps);
    return true;
}
        case 3: // STOP
            be.stopUpgrade();
            return true;
        default:
            return false;
    }
}


    @Override
    public boolean stillValid(Player player) {
        if (this.bound) {
            if (this.boundItemMatcher != null)
                return this.boundItemMatcher.get();
            else if (this.boundBlockEntity != null)
                return AbstractContainerMenu.stillValid(this.access, player, this.boundBlockEntity.getBlockState().getBlock());
            else if (this.boundEntity != null)
                return this.boundEntity.isAlive();
        }
        return true;
    }

    @Override
    public ItemStack quickMoveStack(Player playerIn, int index) {
        return ItemStack.EMPTY;
    }

    @Override
    public Map<Integer, Slot> get() {
        return customSlots;
    }
}
