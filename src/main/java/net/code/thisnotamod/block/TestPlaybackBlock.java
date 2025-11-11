
package net.code.thisnotamod.block;

import net.minecraftforge.network.NetworkHooks;

import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.level.block.state.properties.NoteBlockInstrument;
import net.minecraft.world.item.ItemStack;
import net.code.thisnotamod.block.entity.TestPlaybackBlockEntity;
import net.code.thisnotamod.item.DriveItem;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.EntityBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.MenuProvider;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.Containers;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.core.BlockPos;
import net.minecraft.world.item.ItemStack;

import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;
import net.code.thisnotamod.block.entity.TestPlaybackBlockEntity;

import io.netty.buffer.Unpooled;

public class TestPlaybackBlock extends Block implements EntityBlock {
    public TestPlaybackBlock() {
        super(BlockBehaviour.Properties.of().instrument(NoteBlockInstrument.BASEDRUM).sound(SoundType.GRAVEL).strength(1f, 10f));
    }

    @Override
    public int getLightBlock(BlockState state, BlockGetter worldIn, BlockPos pos) {
        return 15;
    }

    @Override
    public InteractionResult use(BlockState state, Level world, BlockPos pos, Player entity, InteractionHand hand, BlockHitResult hit) {
        super.use(state, world, pos, entity, hand, hit);

        if (!world.isClientSide) {
            BlockEntity raw = world.getBlockEntity(pos);
            if (raw instanceof TestPlaybackBlockEntity be) {
                ItemStack held = entity.getItemInHand(hand);

                // SHIFT + ПКМ -> только извлечь диск (если вставлен). НИКАКОГО импорта/экспорта!
                if (entity.isShiftKeyDown()) {
                    ItemStack out = be.tryExtractDrive();
                    if (!out.isEmpty()) {
                        if (!entity.addItem(out)) {
                            Containers.dropItemStack(world, pos.getX() + 0.5, pos.getY() + 1, pos.getZ() + 0.5, out);
                        }
                        return InteractionResult.SUCCESS;
                    }
                    return InteractionResult.SUCCESS;
                }

                // Обычный ПКМ с диском в руке и пустым гнездом — только вставить диск. НИКАКОГО импорта!
                if (!held.isEmpty() && held.getItem() instanceof DriveItem && be.getDrive().isEmpty()) {
                    ItemStack toInsert = held.copy();
                    toInsert.setCount(1);
                    be.setDrive(toInsert);   // НЕ импортируем здесь
                    held.shrink(1);
                    return InteractionResult.SUCCESS;
                }
            }
        }

        // Открытие GUI — как было
        if (entity instanceof ServerPlayer player) {
            NetworkHooks.openScreen(player, new MenuProvider() {
                @Override public Component getDisplayName() { return Component.literal("Test Signal"); }
                @Override public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                    return new PanelPlaybackMenu(id, inv, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(pos));
                }
            }, pos);
        }
        return InteractionResult.SUCCESS;
    }



    @Override
    public MenuProvider getMenuProvider(BlockState state, Level worldIn, BlockPos pos) {
        BlockEntity tileEntity = worldIn.getBlockEntity(pos);
        return tileEntity instanceof MenuProvider menuProvider ? menuProvider : null;
    }

    @Override
    public BlockEntity newBlockEntity(BlockPos pos, BlockState state) {
        return new TestPlaybackBlockEntity(pos, state);
    }

    @Override
    public boolean triggerEvent(BlockState state, Level world, BlockPos pos, int eventID, int eventParam) {
        super.triggerEvent(state, world, pos, eventID, eventParam);
        BlockEntity blockEntity = world.getBlockEntity(pos);
        return blockEntity == null ? false : blockEntity.triggerEvent(eventID, eventParam);
    }

    @Override
    public void onRemove(BlockState state, Level world, BlockPos pos, BlockState newState, boolean isMoving) {
        if (state.getBlock() != newState.getBlock()) {
            BlockEntity blockEntity = world.getBlockEntity(pos);
            if (blockEntity instanceof TestPlaybackBlockEntity be) {
                Containers.dropContents(world, pos, be);
                ItemStack d = be.tryExtractDrive();
                if (!d.isEmpty()) {
                    Containers.dropItemStack(world, pos.getX() + 0.5, pos.getY() + 1.0, pos.getZ() + 0.5, d);
                }

                world.updateNeighbourForOutputSignal(pos, this);
            }
            super.onRemove(state, world, pos, newState, isMoving);
        }
    }

    @Override
    public boolean hasAnalogOutputSignal(BlockState state) {
        return true;
    }

    @Override
    public int getAnalogOutputSignal(BlockState blockState, Level world, BlockPos pos) {
        BlockEntity tileentity = world.getBlockEntity(pos);
        if (tileentity instanceof TestPlaybackBlockEntity be)
            return AbstractContainerMenu.getRedstoneSignalFromContainer(be);
        else
            return 0;
    }
}
