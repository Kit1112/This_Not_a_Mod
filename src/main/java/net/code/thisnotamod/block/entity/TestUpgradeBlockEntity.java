package net.code.thisnotamod.block.entity;

import net.code.thisnotamod.item.DriveItem;
import net.minecraft.core.BlockPos;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.world.ContainerHelper;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.entity.RandomizableContainerBlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;
import net.minecraft.network.chat.Component;
import net.minecraft.core.NonNullList;

import javax.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;

public class TestUpgradeBlockEntity extends RandomizableContainerBlockEntity {
    // константа процесса
    public static final double UPGRADE_SECONDS = 15.0;

    // ----- диск (взято из TestPlaybackBlockEntity) -----
    public ItemStack getDrive() { return drive; }
    public void setDrive(ItemStack s) { this.drive = (s == null ? ItemStack.EMPTY : s); setChanged(); sync(); }
    public ItemStack tryExtractDrive() {
        if (drive.isEmpty()) return ItemStack.EMPTY;
        ItemStack out = drive; drive = ItemStack.EMPTY; setChanged(); sync(); return out;
    }

    // импорт только ОДНОГО сигнала
    public void importFromInsertedDrive() {
        if (drive.isEmpty() || !(drive.getItem() instanceof DriveItem)) return;
        var tag = drive.getOrCreateTag();
        int sid = tag.getInt(DriveItem.TAG_SIGNAL_ID);
        if (sid < 0) return;

        ImportedSignal is = new ImportedSignal();
        is.signalId = sid;
        is.level    = tag.getInt(DriveItem.TAG_LEVEL);
        is.diskName = tag.getString(DriveItem.TAG_USER_NAME);
        is.size     = tag.getString(DriveItem.TAG_SIG_SIZE);
        is.serial   = tag.getString(DriveItem.TAG_SERIAL);

        this.imports.clear(); // важное ограничение: только 1
        this.imports.add(is);

        // очистить диск
        tag.putInt(DriveItem.TAG_SIGNAL_ID, -1);
        if (tag.contains(DriveItem.TAG_SIG_SIZE)) tag.remove(DriveItem.TAG_SIG_SIZE);
        if (tag.contains(DriveItem.TAG_SERIAL))   tag.remove(DriveItem.TAG_SERIAL);
        tag.putInt(DriveItem.TAG_LEVEL, 0);
        if (tag.contains(DriveItem.TAG_USER_NAME)) tag.remove(DriveItem.TAG_USER_NAME);
        if (tag.contains(DriveItem.TAG_IS_COPY))   tag.remove(DriveItem.TAG_IS_COPY);

        setChanged(); sync();
    }

    // экспорт единственного импорта обратно на диск
    public void exportToInsertedDrive(int signalId, int level, String size) {
        if (drive.isEmpty() || !(drive.getItem() instanceof DriveItem)) return;
        var tag = drive.getOrCreateTag();
        if (tag.getInt(DriveItem.TAG_SIGNAL_ID) >= 0) return; // писать только на пустой диск

        String nameToWrite = null;
        String serialToWrite = null;
        if (!imports.isEmpty()) {
            ImportedSignal is = imports.get(0);
            if (is.signalId == signalId && is.level == level) {
                if (is.diskName != null && !is.diskName.isBlank() && !"unnamed".equalsIgnoreCase(is.diskName)) nameToWrite = is.diskName;
                if (is.serial != null && !is.serial.isBlank()) serialToWrite = is.serial;
            }
        }

        tag.putInt(DriveItem.TAG_SIGNAL_ID, signalId);
        tag.putInt(DriveItem.TAG_LEVEL,     level);
        if (size != null) tag.putString(DriveItem.TAG_SIG_SIZE, size);
        if (nameToWrite != null) tag.putString(DriveItem.TAG_USER_NAME, nameToWrite);
        if (serialToWrite != null && !serialToWrite.isBlank()) {
            tag.putString(DriveItem.TAG_SERIAL, serialToWrite);
        } else {
            if (!tag.contains(DriveItem.TAG_SERIAL) || tag.getString(DriveItem.TAG_SERIAL).isEmpty()) {
                tag.putString(DriveItem.TAG_SERIAL, java.util.UUID.randomUUID().toString().replace("-", "").substring(0, 12));
            }
        }

        // после экспорта удаляем импорт
        if (!imports.isEmpty() && imports.get(0).signalId == signalId) imports.clear();
        setChanged(); sync();
    }

    // удобный «объединённый» импорт/экспорт (для кнопки меню)
    public void importOrExportOne() {
        if (drive.isEmpty()) return;
        int sid = drive.getOrCreateTag().getInt(DriveItem.TAG_SIGNAL_ID);
        if (sid >= 0) importFromInsertedDrive();
        else if (!imports.isEmpty()) {
            ImportedSignal is = imports.get(0);
            exportToInsertedDrive(is.signalId, is.level, is.size);
        }
    }

    // ----- процесс апгрейда -----
    private boolean upgrading = false;
    private double progressSec = 0.0;

    public boolean isUpgrading() { 
        return upgrading; 
    }

    public void startUpgrade() {
        if (upgrading) return;
        if (imports.isEmpty()) return;
        if (imports.get(0).level >= 3) return; // уже максимум
        upgrading = true;
        progressSec = 0.0;
        setChanged(); sync();
    }

    /** @param resetProgress если true — сбросить прогресс до 0 */
    public void stopUpgrade(boolean resetProgress) {
        upgrading = false;
        if (resetProgress) progressSec = 0.0;
        setChanged(); sync();
    }

    public static void serverTick(Level lvl, BlockPos pos, BlockState st, TestUpgradeBlockEntity be) {
        if (!be.upgrading) return;
        be.progressSec += 1.0 / 20.0; // 20 тиков/сек
        if (be.progressSec >= UPGRADE_SECONDS) {
            be.progressSec = 0.0;
            // повышение уровня на +1
            if (!be.imports.isEmpty()) {
                ImportedSignal is = be.imports.get(0);
                is.level = Math.min(3, is.level + 1);
            }
            be.upgrading = false; // один шаг за запуск
        }
        be.setChanged();
        be.sync();
    }

    public double getProgress01() {
        return upgrading ? Math.max(0.0, Math.min(1.0, progressSec / UPGRADE_SECONDS)) : 0.0;
    }

    // ----- прочее / сохранение -----
    public static class ImportedSignal {
        public int signalId;
        public int level;
        public String diskName;
        public String size;
        public String serial;
    }
    private final List<ImportedSignal> imports = new ArrayList<>();
    public List<ImportedSignal> getImportsView() { return Collections.unmodifiableList(imports); }

    private ItemStack drive = ItemStack.EMPTY;

        private NonNullList<ItemStack> stacks = NonNullList.withSize(0, ItemStack.EMPTY);

    public TestUpgradeBlockEntity(BlockPos pos, BlockState state) {
        super(ThisnotamodModBlockEntities.TEST_UPGRADE.get(), pos, state);
    }


    @Override public void load(CompoundTag tag) {
        super.load(tag);
        if (!this.tryLoadLootTable(tag)) this.stacks = NonNullList.withSize(this.getContainerSize(), ItemStack.EMPTY);
        ContainerHelper.loadAllItems(tag, this.stacks);

        if (tag.contains("Drive")) this.drive = ItemStack.of(tag.getCompound("Drive")); else this.drive = ItemStack.EMPTY;

        this.imports.clear();
        if (tag.contains("Import")) {
            CompoundTag it = tag.getCompound("Import");
            ImportedSignal is = new ImportedSignal();
            is.signalId = it.getInt("id");
            is.level    = it.getInt("lvl");
            is.diskName = it.getString("name");
            is.size     = it.getString("size");
            is.serial   = it.getString("serial");
            this.imports.add(is);
        }

        this.upgrading = tag.getBoolean("upgrading");
        this.progressSec = tag.getDouble("progress");
    }

    @Override public void saveAdditional(CompoundTag tag) {
        super.saveAdditional(tag);
        if (!this.trySaveLootTable(tag)) ContainerHelper.saveAllItems(tag, this.stacks);
        if (!this.drive.isEmpty()) tag.put("Drive", this.drive.save(new CompoundTag()));
        if (!this.imports.isEmpty()) {
            ImportedSignal is = this.imports.get(0);
            CompoundTag it = new CompoundTag();
            it.putInt("id", is.signalId);
            it.putInt("lvl", is.level);
            it.putString("name", is.diskName == null ? "" : is.diskName);
            it.putString("size", is.size == null ? "" : is.size);
            it.putString("serial", is.serial == null ? "" : is.serial);
            tag.put("Import", it);
        }
        tag.putBoolean("upgrading", upgrading);
        tag.putDouble("progress", progressSec);
    }

    public void sync() {
        if (this.level != null && !this.level.isClientSide) {
            this.level.sendBlockUpdated(this.worldPosition, getBlockState(), getBlockState(), 3);
        }
    }

    // контейнер не используется — оставляем пустым
    @Override public int getContainerSize() { return stacks.size(); }
    @Override
public Component getDefaultName() {
    return Component.literal("test_upgrade");
}

    @Override protected NonNullList<ItemStack> getItems() { return stacks; }
    @Override protected void setItems(NonNullList<ItemStack> stacks) { this.stacks = stacks; }
    @Override public Component getDisplayName() { return Component.literal("Signal Upgrade"); }
    @Override public int getMaxStackSize() { return 64; }
    @Override public boolean isEmpty() { return true; }
    @Override public AbstractContainerMenu createMenu(int id, Inventory inv) {
        // фолбек-меню на случай, если регистрируете иначе
        return new AbstractContainerMenu(null, id) {
            @Override public boolean stillValid(net.minecraft.world.entity.player.Player player) { return true; }
            @Override public net.minecraft.world.item.ItemStack quickMoveStack(net.minecraft.world.entity.player.Player player, int index) { return net.minecraft.world.item.ItemStack.EMPTY; }
        };
    }
}
