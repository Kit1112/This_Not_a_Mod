package net.code.thisnotamod.block;

import net.code.thisnotamod.block.entity.TestUpgradeBlockEntity;
import net.code.thisnotamod.item.DriveItem;
import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.chat.Component;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.Containers;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.MenuProvider;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.*;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.BlockEntityTicker;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.NoteBlockInstrument;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraftforge.network.NetworkHooks;
import io.netty.buffer.Unpooled;

import javax.annotation.Nullable;

public class TestUpgradeBlock extends Block implements EntityBlock {
    public TestUpgradeBlock() {
        super(Properties.of().instrument(NoteBlockInstrument.BASEDRUM).sound(SoundType.METAL).strength(1f, 10f));
    }

    @Override public int getLightBlock(BlockState state, BlockGetter world, BlockPos pos) { return 15; }

    @Override
    public InteractionResult use(BlockState state, Level world, BlockPos pos, Player entity, InteractionHand hand, BlockHitResult hit) {
        super.use(state, world, pos, entity, hand, hit);

        if (!world.isClientSide) {
            BlockEntity raw = world.getBlockEntity(pos);
            if (raw instanceof TestUpgradeBlockEntity be) {
                ItemStack held = entity.getItemInHand(hand);

                // SHIFT+ПКМ — только извлечь диск
                if (entity.isShiftKeyDown()) {
                    ItemStack out = be.tryExtractDrive();
                    if (!out.isEmpty()) {
                        if (!entity.addItem(out)) Containers.dropItemStack(world, pos.getX()+0.5, pos.getY()+1, pos.getZ()+0.5, out);
                        return InteractionResult.SUCCESS;
                    }
                    return InteractionResult.SUCCESS;
                }

                // обычный ПКМ с диском -> если гнездо пустое, просто вставить (без импорта)
                if (!held.isEmpty() && held.getItem() instanceof DriveItem && be.getDrive().isEmpty()) {
                    ItemStack toInsert = held.copy(); toInsert.setCount(1);
                    be.setDrive(toInsert);
                    held.shrink(1);
                    return InteractionResult.SUCCESS;
                }
            }
        }

        // открытие GUI
        if (entity instanceof ServerPlayer sp) {
            NetworkHooks.openScreen(sp, new MenuProvider() {
                @Override public Component getDisplayName() { return Component.literal("Signal Upgrade"); }
                @Override public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                    return new PanelUpgradeMenu(id, inv, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(pos));
                }
            }, pos);
        }
        return InteractionResult.SUCCESS;
    }

    @Override
public BlockEntity newBlockEntity(BlockPos pos, BlockState state) {
    return new TestUpgradeBlockEntity(pos, state);
}

    @Nullable
    @Override
    public <T extends BlockEntity> BlockEntityTicker<T> getTicker(Level level, BlockState state, net.minecraft.world.level.block.entity.BlockEntityType<T> type) {
        return level.isClientSide ? null : (lvl, pos, st0, be) -> {
            if (be instanceof TestUpgradeBlockEntity u) TestUpgradeBlockEntity.serverTick(lvl, pos, st0, u);

        };
    }

    @Override public void onRemove(BlockState state, Level world, BlockPos pos, BlockState newState, boolean isMoving) {
        if (state.getBlock() != newState.getBlock()) {
            BlockEntity blockEntity = world.getBlockEntity(pos);
            if (blockEntity instanceof TestUpgradeBlockEntity be) {

                ItemStack d = be.tryExtractDrive();
                if (!d.isEmpty()) Containers.dropItemStack(world, pos.getX()+0.5, pos.getY()+1.0, pos.getZ()+0.5, d);
            }
            super.onRemove(state, world, pos, newState, isMoving);
        }
    }
}
