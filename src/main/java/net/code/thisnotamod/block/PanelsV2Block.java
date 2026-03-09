package net.code.thisnotamod.block;

import net.minecraft.world.level.storage.loot.LootParams;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.RenderShape;
import net.minecraft.world.level.block.EntityBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.BaseEntityBlock;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.ItemStack;
import net.minecraft.core.BlockPos;

import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.MenuProvider;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerPlayer;
import net.minecraftforge.network.NetworkHooks;
import io.netty.buffer.Unpooled;

import net.code.thisnotamod.init.ThisnotamodModBlockEntities;
import net.code.thisnotamod.block.entity.PanelsV2TileEntity;
import net.code.thisnotamod.OBB;
import net.code.thisnotamod.world.inventory.SignalScannerMenu;
import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;
import net.code.thisnotamod.world.inventory.SignalTunerMenu;
import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.CollisionContext;


import javax.annotation.Nullable;

import java.util.List;
import java.util.Collections;

public class PanelsV2Block extends BaseEntityBlock implements EntityBlock {
    public static final IntegerProperty ANIMATION = IntegerProperty.create("animation", 0, (int) 1);

    public PanelsV2Block() {
        super(BlockBehaviour.Properties.of().sound(SoundType.GRAVEL).strength(1f, 10f));
    }

    @Override
    public RenderShape getRenderShape(BlockState state) {
        return RenderShape.ENTITYBLOCK_ANIMATED;
    }

    @Nullable
    @Override
    public BlockEntity newBlockEntity(BlockPos blockPos, BlockState blockState) {
        return ThisnotamodModBlockEntities.PANELS_V_2.get().create(blockPos, blockState);
    }

    @Override
    public boolean propagatesSkylightDown(BlockState state, BlockGetter reader, BlockPos pos) {
        return true;
    }

    @Override
    public int getLightBlock(BlockState state, BlockGetter worldIn, BlockPos pos) {
        return 0;
    }

    @Override
    protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> builder) {
        builder.add(ANIMATION);
    }

    @Override
    public BlockState getStateForPlacement(BlockPlaceContext context) {
        return this.defaultBlockState();
    }

    @Override
    public List<ItemStack> getDrops(BlockState state, LootParams.Builder builder) {
        List<ItemStack> dropsOriginal = super.getDrops(state, builder);
        if (!dropsOriginal.isEmpty())
            return dropsOriginal;
        return Collections.singletonList(new ItemStack(this, 1));
    }


    // --- ВСПОМОГАТЕЛЬНЫЕ МЕТОДЫ ---
    
    private FriendlyByteBuf createBuf(BlockPos pos) {
        FriendlyByteBuf buf = new FriendlyByteBuf(Unpooled.buffer());
        buf.writeBlockPos(pos);
        return buf;
    }

    // Внутри PanelsV2Block.java


    private void openCustomMenu(Player player, BlockPos pos, String title, CustomMenuConstructor constructor) {
        if (player instanceof ServerPlayer serverPlayer) {
            NetworkHooks.openScreen(serverPlayer, new MenuProvider() {
                @Override
                public Component getDisplayName() {
                    return Component.literal(title);
                }
                @Override
                public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                    return constructor.create(id, inv, p);
                }
            }, pos);
        }
    }


// ... внутри класса PanelsV2Block добавь этот метод:

@Override
public VoxelShape getShape(BlockState state, BlockGetter world, BlockPos pos, CollisionContext context) {
    // Возвращает абсолютно пустую форму (рамки не будет вообще)
    return Shapes.empty(); 
}

    @Override
public InteractionResult use(BlockState blockstate, Level world, BlockPos pos, Player entity, InteractionHand hand, BlockHitResult hit) {
    if (world.isClientSide()) {
        return InteractionResult.SUCCESS; 
    }

    BlockEntity be = world.getBlockEntity(pos);
    // Если игрок кликнул ровно в центр (в VoxelShape 1x1x1) - открываем обычный сундук
    if (be instanceof MenuProvider menuProvider) {
        NetworkHooks.openScreen((ServerPlayer) entity, menuProvider, pos);
        return InteractionResult.CONSUME;
    }

    return InteractionResult.PASS;
}

    private interface CustomMenuConstructor {
        AbstractContainerMenu create(int id, Inventory inv, Player p);
    }
}