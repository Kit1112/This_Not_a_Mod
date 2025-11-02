package net.code.thisnotamod.world.inventory;

import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.MenuType;
import net.minecraft.world.level.Level;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.world.inventory.ContainerLevelAccess;
import net.minecraft.world.item.ItemStack;

import net.minecraftforge.registries.ObjectHolder;
import net.code.thisnotamod.init.ThisnotamodModMenus;

public class DebugMenuMenu extends AbstractContainerMenu {
    public static final int GUI_WIDTH = 220;

    public final Level world;
    public final Player player;
    public final BlockPos pos;
    public final ContainerLevelAccess access;

    // В МCreator часто используют @ObjectHolder, но здесь мы регистрируем отдельно через DebugMenuRegistry
    public DebugMenuMenu(int id, Inventory inv, FriendlyByteBuf extraData) {
        super(ThisnotamodModMenus.DEBUG_MENU.get(), id);
        this.player = inv.player;
        this.world = this.player.level();
        this.pos = extraData != null && extraData.readableBytes() >= 8 ? extraData.readBlockPos() : this.player.blockPosition();
        this.access = ContainerLevelAccess.create(this.world, this.pos);
    }

    @Override
    public boolean stillValid(Player player) {
        // Контейнер без слотов, валиден пока игрок рядом с позицией открытия (не строго)
        return true;
    }
    @Override
public ItemStack quickMoveStack(Player player, int index) {
    return ItemStack.EMPTY;
}

}
