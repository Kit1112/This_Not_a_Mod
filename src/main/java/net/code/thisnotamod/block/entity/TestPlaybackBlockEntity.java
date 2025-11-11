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

import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.stream.IntStream;

import io.netty.buffer.Unpooled;

public class TestPlaybackBlockEntity extends RandomizableContainerBlockEntity implements WorldlyContainer {

    // +++ диск
    public ItemStack getDrive() { return drive; }

    public void setDrive(ItemStack s) {
        this.drive = (s == null ? ItemStack.EMPTY : s);
        setChanged();
        sync();
    }

    public ItemStack tryExtractDrive() {
        if (drive.isEmpty()) return ItemStack.EMPTY;
        ItemStack out = drive;
        drive = ItemStack.EMPTY;
        setChanged();
        sync();
        return out;
    }

    // Импорт с ВСТАВЛЕННОГО диска в список блока (по кнопке)
    public void importFromInsertedDrive() {
        if (drive.isEmpty() || !(drive.getItem() instanceof net.code.thisnotamod.item.DriveItem)) return;

        var tag = drive.getOrCreateTag();

        int sid = tag.getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID);
        if (sid < 0) return; // на диске пусто — нечего импортировать

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

        // можно без дедупликации; если нужна — проверь по sid перед добавлением
        this.imports.add(is);

        // ОЧИСТИТЬ диск после импорта
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


        setChanged();
        sync();
    }

    // Экспорт из списка блока на ВСТАВЛЕННЫЙ диск (по кнопке)
    public void exportToInsertedDrive(int signalId, int level, String size) {
        if (drive.isEmpty() || !(drive.getItem() instanceof net.code.thisnotamod.item.DriveItem)) return;

        var tag = drive.getOrCreateTag();
        String nameToWrite = null;
        int matchIdx = -1;
        String serialToWrite = null;
        for (int i = 0; i < this.imports.size(); i++) {
            ImportedSignal is = this.imports.get(i);
            boolean sameId   = (is.signalId == signalId);
            boolean sameLvl  = (is.level == level);
            boolean sameSize = ((is.size == null ? "" : is.size).equals(size == null ? "" : size));
            if (sameId && sameLvl && sameSize) {
                matchIdx = i;
                // имя вернём только если оно не "unnamed"
                if (is.diskName != null && !is.diskName.isBlank() && !"unnamed".equalsIgnoreCase(is.diskName)) {
                    nameToWrite = is.diskName;
                }
                // вернём тот же serial
                if (is.serial != null && !is.serial.isBlank()) {
                    serialToWrite = is.serial;
                }
                break;
            }
        }



        // писать только на пустой диск
        if (tag.getInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID) >= 0) return;

        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_SIGNAL_ID, signalId);
        tag.putInt(net.code.thisnotamod.item.DriveItem.TAG_LEVEL,     level);
        if (size != null) {
            tag.putString(net.code.thisnotamod.item.DriveItem.TAG_SIG_SIZE, size);
        }

        if (nameToWrite != null && !nameToWrite.isBlank()) {
            tag.putString(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME, nameToWrite);
        } else if (tag.contains(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME)) {
            tag.remove(net.code.thisnotamod.item.DriveItem.TAG_USER_NAME);
        }


// вернуть исходный serial, если он был сохранён в записи
        if (serialToWrite != null && !serialToWrite.isBlank()) {
            tag.putString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL, serialToWrite);
        } else {
            // фолбек: если по какой-то причине сериал не сохранили — сгенерим новый (диск с сигналом должен иметь serial)
            if (!tag.contains(net.code.thisnotamod.item.DriveItem.TAG_SERIAL)
                    || tag.getString(net.code.thisnotamod.item.DriveItem.TAG_SERIAL).isEmpty()) {
                tag.putString(
                        net.code.thisnotamod.item.DriveItem.TAG_SERIAL,
                        java.util.UUID.randomUUID().toString().replace("-", "").substring(0, 12)
                );
            }
        }


        if (matchIdx >= 0) {
            this.imports.remove(matchIdx);
        } else {
            // фолбек: как раньше — по первому id
            for (int i = 0; i < this.imports.size(); i++) {
                if (this.imports.get(i).signalId == signalId) {
                    this.imports.remove(i);
                    break;
                }
            }
        }


        setChanged();
        sync();
    }



    // +++ вью списка импортов
    public java.util.List<ImportedSignal> getImportsView() {
        return java.util.Collections.unmodifiableList(imports);
    }

    // +++ синхронизация блока с клиентом
    public void sync() {
        if (this.level != null && !this.level.isClientSide) {
            this.level.sendBlockUpdated(this.worldPosition, getBlockState(), getBlockState(), 3);
        }
    }


    // +++ один вставленный диск
    private ItemStack drive = ItemStack.EMPTY;

    // +++ импортированные сигналы
    public static class ImportedSignal {
        public int signalId;
        public int level;
        public String diskName;
        public String size;
        public String serial;
    }
    private final java.util.List<ImportedSignal> imports = new java.util.ArrayList<>();

    private NonNullList<ItemStack> stacks = NonNullList.<ItemStack>withSize(0, ItemStack.EMPTY);
    private final LazyOptional<? extends IItemHandler>[] handlers = SidedInvWrapper.create(this, Direction.values());

    public TestPlaybackBlockEntity(BlockPos position, BlockState state) {
        super(ThisnotamodModBlockEntities.TEST_PLAYBACK.get(), position, state);
    }

    @Override
    public void load(CompoundTag compound) {
        super.load(compound);
        if (!this.tryLoadLootTable(compound))
            this.stacks = NonNullList.withSize(this.getContainerSize(), ItemStack.EMPTY);
        ContainerHelper.loadAllItems(compound, this.stacks);

        // +++ диск
        if (compound.contains("Drive")) {
            this.drive = ItemStack.of(compound.getCompound("Drive"));
        } else {
            this.drive = ItemStack.EMPTY;
        }

        // +++ импортированные
        this.imports.clear();
        if (compound.contains("Imports")) {
            var list = compound.getList("Imports", 10); // 10 = Compound
            for (int i = 0; i < list.size(); i++) {
                CompoundTag it = list.getCompound(i);
                ImportedSignal is = new ImportedSignal();
                is.signalId = it.getInt("id");
                is.level    = it.getInt("lvl");
                is.diskName = it.getString("name");
                is.size     = it.getString("size");
                is.serial   = it.contains("serial") ? it.getString("serial") : "";
                this.imports.add(is);
            }
        }
    }


    @Override
    public void saveAdditional(CompoundTag compound) {
        super.saveAdditional(compound);
        if (!this.trySaveLootTable(compound)) {
            ContainerHelper.saveAllItems(compound, this.stacks);
        }

        // +++ диск
        if (!this.drive.isEmpty()) {
            compound.put("Drive", this.drive.save(new CompoundTag()));
        }

        // +++ импортированные
        var list = new net.minecraft.nbt.ListTag();
        for (ImportedSignal is : this.imports) {
            CompoundTag it = new CompoundTag();
            it.putInt("id", is.signalId);
            it.putInt("lvl", is.level);
            it.putString("name", is.diskName == null ? "" : is.diskName);
            it.putString("size", is.size == null ? "" : is.size);
            it.putString("serial", is.serial == null ? "" : is.serial);
            list.add(it);
        }
        compound.put("Imports", list);
    }

    @Override
    public ClientboundBlockEntityDataPacket getUpdatePacket() {
        return ClientboundBlockEntityDataPacket.create(this);
    }

    @Override
    public CompoundTag getUpdateTag() {
        return this.saveWithFullMetadata();
    }

    @Override
    public int getContainerSize() {
        return stacks.size();
    }

    @Override
    public boolean isEmpty() {
        for (ItemStack itemstack : this.stacks)
            if (!itemstack.isEmpty())
                return false;
        return true;
    }

    @Override
    public Component getDefaultName() {
        return Component.literal("test_playback");
    }

    @Override
    public int getMaxStackSize() {
        return 64;
    }

    @Override
    public AbstractContainerMenu createMenu(int id, Inventory inventory) {
        return new PanelPlaybackMenu(id, inventory, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(this.worldPosition));
    }

    @Override
    public Component getDisplayName() {
        return Component.literal("Test Signal");
    }

    @Override
    protected NonNullList<ItemStack> getItems() {
        return this.stacks;
    }

    @Override
    protected void setItems(NonNullList<ItemStack> stacks) {
        this.stacks = stacks;
    }

    @Override
    public boolean canPlaceItem(int index, ItemStack stack) {
        return true;
    }


    @Override
    public int[] getSlotsForFace(Direction side) {
        return IntStream.range(0, this.getContainerSize()).toArray();
    }

    @Override
    public boolean canPlaceItemThroughFace(int index, ItemStack stack, @Nullable Direction direction) {
        return this.canPlaceItem(index, stack);
    }

    @Override
    public boolean canTakeItemThroughFace(int index, ItemStack stack, Direction direction) {
        return true;
    }

    @Override
    public <T> LazyOptional<T> getCapability(Capability<T> capability, @Nullable Direction facing) {
        if (!this.remove && facing != null && capability == ForgeCapabilities.ITEM_HANDLER)
            return handlers[facing.ordinal()].cast();
        return super.getCapability(capability, facing);
    }

    @Override
    public void setRemoved() {
        super.setRemoved();
        for (LazyOptional<? extends IItemHandler> handler : handlers)
            handler.invalidate();
    }
}
