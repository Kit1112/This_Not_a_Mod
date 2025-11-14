package net.code.thisnotamod.block;

import net.minecraftforge.network.NetworkHooks;

import net.code.thisnotamod.block.entity.TestUpgradeBlockEntity;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;
import net.code.thisnotamod.item.DriveItem;

import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.level.block.entity.BlockEntityTicker;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.properties.NoteBlockInstrument;
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
import net.minecraft.resources.ResourceLocation;

import io.netty.buffer.Unpooled;

/**
 * Блок апгрейда: вставка/извлечение диска по ПКМ (в точности как в TestPlaybackBlock),
 * открытие GUI, серверный тикер для завершения апгрейда.
 */
public class TestUpgradeBlock extends Block implements EntityBlock {
    public TestUpgradeBlock() {
        super(BlockBehaviour.Properties.of().instrument(NoteBlockInstrument.BASEDRUM).sound(SoundType.GRAVEL).strength(1f, 10f));
    }

    @Override public int getLightBlock(BlockState state, BlockGetter worldIn, BlockPos pos) { return 15; }

    @Override
    public InteractionResult use(BlockState state, Level world, BlockPos pos, Player entity, InteractionHand hand, BlockHitResult hit) {
        super.use(state, world, pos, entity, hand, hit);

        if (!world.isClientSide) {
            BlockEntity raw = world.getBlockEntity(pos);
            if (raw instanceof TestUpgradeBlockEntity be) {
                var held = entity.getItemInHand(hand);

                // Shift+ПКМ — извлечь диск
                if (entity.isShiftKeyDown()) {
                    var out = be.tryExtractDrive();
                    if (!out.isEmpty()) {
                        if (!entity.addItem(out)) {
                            Containers.dropItemStack(world, pos.getX() + 0.5, pos.getY() + 1, pos.getZ() + 0.5, out);
                        }
                        return InteractionResult.SUCCESS;
                    }
                    return InteractionResult.SUCCESS;
                }

                // Обычный ПКМ с диском в руке и пустым гнездом — вставить диск
                if (!held.isEmpty() && held.getItem() instanceof DriveItem && be.getDrive().isEmpty()) {
                    var toInsert = held.copy();
                    toInsert.setCount(1);
                    be.setDrive(toInsert);
                    held.shrink(1);
                    return InteractionResult.SUCCESS;
                }
            }
        }

        // Открыть GUI
        if (entity instanceof ServerPlayer player) {
            NetworkHooks.openScreen(player, new MenuProvider() {
                @Override public Component getDisplayName() { return Component.literal("Test Upgrade"); }
                @Override public net.minecraft.world.inventory.AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                    return new net.code.thisnotamod.world.inventory.PanelUpgradeMenu(id, inv,
                            new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(pos));
                }
            }, pos);
        }
        return InteractionResult.SUCCESS;
    }

    @Override
    public MenuProvider getMenuProvider(BlockState state, Level worldIn, BlockPos pos) {
        BlockEntity te = worldIn.getBlockEntity(pos);
        return te instanceof MenuProvider mp ? mp : null;
    }

    @Override
    public BlockEntity newBlockEntity(BlockPos pos, BlockState state) {
        return new TestUpgradeBlockEntity(pos, state);
    }

    // Серверный тикер для завершения апгрейда
    @Override
public <T extends BlockEntity> BlockEntityTicker<T> getTicker(Level level, BlockState state, BlockEntityType<T> type) {
    if (level.isClientSide) return null;

    // если тип совпал с нашим BE — возвращаем лямбду-тилкер
    if (type == net.code.thisnotamod.init.ThisnotamodModBlockEntities.TEST_UPGRADE.get()) {
        return (lvl, pos, st, be) -> {
            // безопасное приведение и вызов серверного тика
            if (be instanceof net.code.thisnotamod.block.entity.TestUpgradeBlockEntity upg) {
                net.code.thisnotamod.block.entity.TestUpgradeBlockEntity.serverTick(lvl, pos, st, upg);
            }
        };
    }
    return null;
}


    @Override
    public boolean triggerEvent(BlockState state, Level world, BlockPos pos, int eventID, int eventParam) {
        super.triggerEvent(state, world, pos, eventID, eventParam);
        BlockEntity blockEntity = world.getBlockEntity(pos);
        return blockEntity != null && blockEntity.triggerEvent(eventID, eventParam);
    }

    @Override
    public void onRemove(BlockState state, Level world, BlockPos pos, BlockState newState, boolean isMoving) {
        if (state.getBlock() != newState.getBlock()) {
            BlockEntity blockEntity = world.getBlockEntity(pos);
            if (blockEntity instanceof TestUpgradeBlockEntity be) {
                Containers.dropContents(world, pos, be);
                var d = be.tryExtractDrive();
                if (!d.isEmpty()) {
                    Containers.dropItemStack(world, pos.getX() + 0.5, pos.getY() + 1.0, pos.getZ() + 0.5, d);
                }
                world.updateNeighbourForOutputSignal(pos, this);
            }
            super.onRemove(state, world, pos, newState, isMoving);
        }
    }

    @Override public boolean hasAnalogOutputSignal(BlockState state) { return true; }

    @Override
    public int getAnalogOutputSignal(BlockState blockState, Level world, BlockPos pos) {
        BlockEntity te = world.getBlockEntity(pos);
        if (te instanceof TestUpgradeBlockEntity be)
            return AbstractContainerMenu.getRedstoneSignalFromContainer(be);
        else
            return 0;
    }
}
