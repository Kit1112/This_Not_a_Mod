package net.code.thisnotamod.block.entity;

import net.minecraftforge.items.wrapper.SidedInvWrapper;
import net.minecraftforge.items.IItemHandler;
import net.minecraftforge.common.util.LazyOptional;
import net.minecraftforge.common.capabilities.ForgeCapabilities;
import net.minecraftforge.common.capabilities.Capability;

import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.RandomizableContainerBlockEntity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.WorldlyContainer;
import net.minecraft.world.ContainerHelper;
import net.minecraft.network.protocol.game.ClientboundBlockEntityDataPacket;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.NonNullList;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.stream.IntStream;

import io.netty.buffer.Unpooled;

/**
 * Блок‑камера апгрейда: один вставленный диск, один импортированный сигнал,
 * процесс апгрейда (+1 уровень за 15 секунд).
 */
public class TestUpgradeBlockEntity extends RandomizableContainerBlockEntity implements WorldlyContainer {

    // ----- Константы процесса -----
    public static final int UPGRADE_DURATION_TICKS = 15 * 20;

    // ----- Диск -----
    private ItemStack drive = ItemStack.EMPTY;

    public ItemStack getDrive() { return drive; }

    public void setDrive(ItemStack s) {
        this.drive = (s == null ? ItemStack.EMPTY : s);
        setChanged(); sync();
    }

    public ItemStack tryExtractDrive() {
        if (drive.isEmpty()) return ItemStack.EMPTY;
        ItemStack out = drive;
        drive = ItemStack.EMPTY;
        setChanged(); sync();
        return out;
    }

    // ----- Импортированный сигнал (ровно один) -----
    public static class ImportedSignal {
        public int signalId;
        public int level;
        public String diskName;
        public String size;
        public String serial;

        public ImportedSignal() {}
        public ImportedSignal(int id, int lvl, String name, String size) {
            this.signalId = id; this.level = lvl; this.diskName = name; this.size = size; this.serial = "";
        }
    }

    private ImportedSignal singleImport = null;

    public ImportedSignal getSingleImport() { return singleImport; }

    // ----- Процесс апгрейда -----
    private boolean upgrading = false;
    private long upgradeStartGameTime = 0L;
    private int upgradeTotalTicks = UPGRADE_DURATION_TICKS;

    public boolean isUpgrading() { return upgrading; }
    public long getUpgradeStartGameTime() { return upgradeStartGameTime; }
    public int getUpgradeTotalTicks() { return upgradeTotalTicks; }

    /** Фолбек: старт с единичной скоростью (1 KB/s) — обычно не используется. */
public void startUpgrade() {
    startUpgradeWithSpeedKbps(1.0);
}

    /** Остановить и сбросить прогресс. */
    public void stopUpgrade() {
        if (!upgrading) return;
        this.upgrading = false;
        this.upgradeStartGameTime = 0L;
        setChanged(); sync();
    }


/** Старт апгрейда с учётом скорости (KB/s) и размера файла. */
public void startUpgradeWithSpeedKbps(double kbps) {
    if (this.level == null) return;
    if (upgrading) return;
    if (singleImport == null) return;
    if (singleImport.level >= 3) return;

    this.upgradeTotalTicks = computeDurationTicks(kbps);
    this.upgrading = true;
    this.upgradeStartGameTime = this.level.getGameTime();
    setChanged(); sync();
}

private int computeDurationTicks(double kbps) {
    if (!(kbps > 0.0) || !Double.isFinite(kbps)) kbps = 1.0;
    double sizeMB = resolveSizeMB();
    // время (сек) = (MB * 1024 KB) / (KB/s)
    double seconds = Math.max(0.05, (sizeMB * 1024.0) / kbps);
    long ticks = Math.round(seconds * 20.0);
    // ограничим адекватно
    if (ticks < 10) ticks = 10;
    if (ticks > Integer.MAX_VALUE) ticks = Integer.MAX_VALUE;
    return (int) ticks;
}

/** Определение размера файла в MB. Берём из импортированной записи (с диска). */
private double resolveSizeMB() {
    String s = (singleImport != null) ? singleImport.size : null;
    double mb = parseSizeMB(s);
    if (!(mb > 0.0)) mb = 1.0; // фолбек
    return mb;
}

/** Парсер строк вроде "0.7980 MB", "1024 KB", "123456 B". */
private static double parseSizeMB(String s) {
    if (s == null || s.isBlank()) return -1.0;
    String lo = s.trim().toLowerCase(java.util.Locale.ROOT);

    // выделим число
    String num = lo.replaceAll("[^0-9.,]", "");
    if (num.isBlank()) return -1.0;
    num = num.replace(',', '.');
    double v;
    try { v = Double.parseDouble(num); } catch (Exception e) { return -1.0; }

    if (lo.contains("kb")) return v / 1024.0;
    if (lo.contains("kib")) return v / 1024.0;
    if (lo.contains("mb") || lo.contains("mib")) return v;
    if (lo.endsWith("b")) return v / (1024.0 * 1024.0);
    // если без единиц — считаем MB
    return v;
}

    

    /** Серверный тикер (вызов из блока). */
    public static void serverTick(net.minecraft.world.level.Level lvl, BlockPos pos, BlockState st, TestUpgradeBlockEntity be) {
        if (!be.upgrading) return;
        long now = lvl.getGameTime();
        if (now - be.upgradeStartGameTime >= be.upgradeTotalTicks) {
            be.upgrading = false;
            be.upgradeStartGameTime = 0L;
            if (be.singleImport != null && be.singleImport.level < 3) {
                be.singleImport.level++;
            }
            be.setChanged(); be.sync();
        }
    }

    // ----- Импорт/экспорт (как в TestPlaybackBlockEntity, упрощённо под один импорт) -----
    public void importFromInsertedDrive() {
        if (drive.isEmpty() || !(drive.getItem() instanceof net.code.thisnotamod.item.DriveItem)) return;

        // Только если ещё не импортировано
        if (this.singleImport != null) return;

        var tag = drive.getOrCreateTag();
        int sid = tag.getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID);
        if (sid < 0) return;

        int lvl = tag.getInt(net.code.thisnotamod.item.DriveItem.TAG_LEVEL);
        String nm = tag.getString(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME);
        String sz = tag.getString(net.code.thisnotamod.item.DriveItem.TAG_SIG_SIZE);
        String sr = tag.getString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL);

        ImportedSignal is = new ImportedSignal();
        is.signalId = sid;
        is.level    = lvl;
        is.diskName = (nm == null || nm.isBlank()) ? "unnamed" : nm;
        is.size     = (sz == null) ? "" : sz;
        is.serial   = (sr == null) ? "" : sr;
        this.singleImport = is;

        // очистка диска после импорта
        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID, -1);
        if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_SIG_SIZE))
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_SIG_SIZE);
        if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_SERIAL))
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_SERIAL);
        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_LEVEL, 0);
        if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME))
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME);
        if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_IS_COPY))
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_IS_COPY);

        setChanged(); sync();
    }

    public void exportToInsertedDrive(int signalId, int level, String size) {
        if (drive.isEmpty() || !(drive.getItem() instanceof net.code.thisnotamod.item.DriveItem)) return;
        if (this.singleImport == null) return;

        var tag = drive.getOrCreateTag();
        // только на пустой диск
        if (tag.getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID) >= 0) return;

        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID, signalId);
        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_LEVEL,     level);
        if (size != null) tag.putString(net.code.thisnotamod.item.DriveItem.TAG_SIG_SIZE, size);

        // вернуть имя, если не "unnamed"
        if (singleImport.diskName != null && !singleImport.diskName.isBlank() && !"unnamed".equalsIgnoreCase(singleImport.diskName)) {
            tag.putString(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME, singleImport.diskName);
        } else if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME)) {
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME);
        }

        // вернуть serial (или сгенерить, если вдруг пусто)
        if (singleImport.serial != null && !singleImport.serial.isBlank()) {
            tag.putString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL, singleImport.serial);
        } else {
            if (!tag.contains(net.code.thisnotamod.item.DriveItem.TAG_SERIAL)
                    || tag.getString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL).isEmpty()) {
                tag.putString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL,
                        java.util.UUID.randomUUID().toString().replace("-", "").substring(0, 12));
            }
        }

        // удалить импорт после экспорта
        this.singleImport = null;
        // остановить возможный процесс
        this.upgrading = false;
        this.upgradeStartGameTime = 0L;

        setChanged(); sync();
    }

    // ----- Синхронизация -----
    public void sync() {
        if (this.level != null && !this.level.isClientSide) {
            this.level.sendBlockUpdated(this.worldPosition, getBlockState(), getBlockState(), 3);
        }
    }

    // ----- Бойлерплейт контейнера -----
    private NonNullList<ItemStack> stacks = NonNullList.<ItemStack>withSize(0, ItemStack.EMPTY);
    private final LazyOptional<? extends IItemHandler>[] handlers = SidedInvWrapper.create(this, Direction.values());

    public TestUpgradeBlockEntity(BlockPos pos, BlockState state) {
        super(ThisnotamodModBlockEntities.TEST_UPGRADE.get(), pos, state);
    }

    @Override
    public void load(CompoundTag compound) {
        super.load(compound);
        if (!this.tryLoadLootTable(compound))
            this.stacks = NonNullList.withSize(this.getContainerSize(), ItemStack.EMPTY);
        ContainerHelper.loadAllItems(compound, this.stacks);

        // диск
        if (compound.contains("Drive")) this.drive = ItemStack.of(compound.getCompound("Drive"));
        else this.drive = ItemStack.EMPTY;

        // импорт
        if (compound.contains("Import")) {
            CompoundTag it = compound.getCompound("Import");
            ImportedSignal is = new ImportedSignal();
            is.signalId = it.getInt("id");
            is.level    = it.getInt("lvl");
            is.diskName = it.getString("name");
            is.size     = it.getString("size");
            is.serial   = it.getString("serial");
            this.singleImport = is;
        } else {
            this.singleImport = null;
        }

        // процесс
        this.upgrading = compound.getBoolean("Upgrading");
        this.upgradeStartGameTime = compound.getLong("UpgStart");
        this.upgradeTotalTicks = compound.contains("UpgTotal") ? compound.getInt("UpgTotal") : UPGRADE_DURATION_TICKS;

    }

    @Override
    public void saveAdditional(CompoundTag compound) {
        super.saveAdditional(compound);
        if (!this.trySaveLootTable(compound)) {
            ContainerHelper.saveAllItems(compound, this.stacks);
        }

        // диск
        if (!this.drive.isEmpty()) compound.put("Drive", this.drive.save(new CompoundTag()));

        // импорт
        if (this.singleImport != null) {
            CompoundTag it = new CompoundTag();
            it.putInt("id", this.singleImport.signalId);
            it.putInt("lvl", this.singleImport.level);
            it.putString("name", this.singleImport.diskName == null ? "" : this.singleImport.diskName);
            it.putString("size", this.singleImport.size == null ? "" : this.singleImport.size);
            it.putString("serial", this.singleImport.serial == null ? "" : this.singleImport.serial);
            compound.put("Import", it);
        }

        // процесс
        compound.putBoolean("Upgrading", this.upgrading);
        compound.putLong("UpgStart", this.upgradeStartGameTime);
        compound.putInt("UpgTotal", this.upgradeTotalTicks);

    }

    @Override public ClientboundBlockEntityDataPacket getUpdatePacket() { return ClientboundBlockEntityDataPacket.create(this); }
    @Override public CompoundTag getUpdateTag() { return this.saveWithFullMetadata(); }

    // Инвентарь‑заглушка
    @Override public int getContainerSize() { return stacks.size(); }
    @Override public boolean isEmpty() { return true; }
    @Override public Component getDefaultName() { return Component.literal("test_upgrade"); }
    @Override public int getMaxStackSize() { return 64; }

    @Override
    public AbstractContainerMenu createMenu(int id, Inventory inventory) {
        return new PanelUpgradeMenu(id, inventory, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(this.worldPosition));
    }

    @Override public Component getDisplayName() { return Component.literal("Test Upgrade"); }
    @Override protected NonNullList<ItemStack> getItems() { return this.stacks; }
    @Override protected void setItems(NonNullList<ItemStack> stacks) { this.stacks = stacks; }
    @Override public boolean canPlaceItem(int index, ItemStack stack) { return true; }
    @Override public int[] getSlotsForFace(Direction side) { return IntStream.range(0, this.getContainerSize()).toArray(); }
    @Override public boolean canPlaceItemThroughFace(int index, ItemStack stack, @Nullable Direction direction) { return this.canPlaceItem(index, stack); }
    @Override public boolean canTakeItemThroughFace(int index, ItemStack stack, Direction direction) { return true; }

    @Override
    public <T> LazyOptional<T> getCapability(Capability<T> capability, @Nullable Direction facing) {
        if (!this.remove && facing != null && capability == ForgeCapabilities.ITEM_HANDLER)
            return handlers[facing.ordinal()].cast();
        return super.getCapability(capability, facing);
    }

    @Override
    public void setRemoved() {
        super.setRemoved();
        for (LazyOptional<? extends IItemHandler> handler : handlers) handler.invalidate();
    }
}
