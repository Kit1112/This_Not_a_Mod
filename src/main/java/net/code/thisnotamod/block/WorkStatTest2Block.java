package net.code.thisnotamod.block;

import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.BooleanOp;
import net.minecraft.world.phys.shapes.CollisionContext;
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
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.ItemStack;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.List;
import java.util.Collections;

public class WorkStatTest2Block extends BaseEntityBlock implements EntityBlock {
	public static final IntegerProperty ANIMATION = IntegerProperty.create("animation", 0, 1);

	// Готовая форма блока из твоего списка
	private static final VoxelShape SHAPE = makeShape();

	public WorkStatTest2Block() {
		super(BlockBehaviour.Properties.of()
			.sound(SoundType.GRAVEL)
			.strength(1f, 10f)
			.noOcclusion()
			.isRedstoneConductor((bs, br, bp) -> false));
	}

	@Override
	public RenderShape getRenderShape(BlockState state) {
		return RenderShape.ENTITYBLOCK_ANIMATED;
	}

	@Nullable
	@Override
	public BlockEntity newBlockEntity(BlockPos blockPos, BlockState blockState) {
		return ThisnotamodModBlockEntities.WORK_STAT_TEST_2.get().create(blockPos, blockState);
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
	public VoxelShape getShape(BlockState state, BlockGetter world, BlockPos pos, CollisionContext context) {
		return SHAPE;
	}

	@Override
	public VoxelShape getCollisionShape(BlockState state, BlockGetter level, BlockPos pos, CollisionContext context) {
		return SHAPE;
	}

	@Override
	public VoxelShape getInteractionShape(BlockState state, BlockGetter level, BlockPos pos) {
		return SHAPE;
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

	// ====== Воксельная форма ======
	private static VoxelShape makeShape() {
		VoxelShape shape = Shapes.empty();
		shape = Shapes.join(shape, Shapes.box(-2.3125, 2.25, 2.9375, 3.3125, 2.5, 3.1875), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.6875, 1, 3, 3.3125, 1.9375, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.3125, 1, 3, -0.6875, 1.9375, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.3125, 0.5, 3, 3.3125, 0.8125, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.4375, 0, 3, 3.3125, 0.5, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.3125, 1.9375, 3, -0.6875, 2.25, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.6875, 1.9375, 3, 3.3125, 2.25, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.3125, 0, 3, -0.4375, 0.5, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.1875, 0.9536425, 1.7469475, 1.125, 1.0161425, 2.0594475), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1, 1.8125, 0.0625, 1.0625, 2.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.125, 1, 2.25, 0.625, 1.0625, 2.75), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.25, 1.0625, 2.375, 0.5, 1.125, 2.625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1.1875, 2.125, 0.8125, 1.25, 2.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1.75, 2.125, 0.8125, 1.875, 2.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1.25, 2.125, 0, 1.75, 2.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.75, 1.25, 2.125, 0.8125, 1.75, 2.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0, 1.25, 2.15625, 0.75, 1.75, 2.21875), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0, 1.1875, 2.5625, 0.75, 1.8125, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1.1875, 2.25, 0.8125, 1.875, 2.5625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.875, 1, 2.125, 1.25, 1.8125, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0, 1.125, 2.125, 0.75, 1.1875, 2.8125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.6875, 1.9375, 3, -0.5625, 2.25, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.5625, 1.9375, 3, 1.6875, 2.25, 3.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2.1875, 0, 0.125, 4.1875, 0.5625, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2.125, 0.5625, 0.125, 4.1875, 1, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2.834778125, 0.88105875, 0.125, 3.584778125, 1.00605875, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2.125, 0.875, 0.125, 3.1875, 1, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.5625, 1, 0.125, 4.1875, 1.1875, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.421875, 1.25, 0.8125, 3.421875, 2.1875, 2.3125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.4375, 1.0625, 0.625, 3.6875, 2.375, 2.5), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.875, 1.1875, 1, 4.125, 1.875, 2.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.6875, 1.1875, 0.75, 3.875, 2.0625, 2.375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.8125, 1.1875, 0.0625, 4.0625, 2.375, 0.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.8125, 1.1875, 2.8125, 4.0625, 2.375, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.6875, 2.375, 0.125, 4.1875, 2.5, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2, 0, -1.8125, 4, 0.5625, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.9375, 0.5625, -1.8125, 4, 1, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(2.647278125, 0.88105875, -1.8125, 3.397278125, 1.00605875, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.9375, 0.875, -1.8125, 3, 1, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.375, 1, -1.8125, 4, 1.1875, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.234375, 1.25, -1.125, 3.234375, 2.1875, 0.375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.25, 1.0625, -1.3125, 3.5, 2.375, 0.5625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.6875, 1.1875, -0.9375, 3.9375, 1.875, 0.1875), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.5, 1.1875, -1.1875, 3.6875, 2.0625, 0.4375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.625, 1.1875, -1.8125, 3.875, 2.375, -1.625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.625, 1.1875, 0.9375, 3.875, 2.375, 1.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(3.5, 2.375, -1.8125, 4, 2.5, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(1.6875, 0, -2.25, 3.4375, 0.875, -1.375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-0.0625, 1, 1.8125, 0.0625, 1.0625, 2.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.3125, 0.8125, 1.625, 3.3125, 1, 3.1875), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(0.1875, 0.9536425, 1.7469475, 1.125, 1.0161425, 2.0594475), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3, 0, -1.8125, -1, 0.5625, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3, 0.5625, -1.8125, -0.9375, 1, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.397278125, 0.88105875, -1.8125, -1.6472781250000001, 1.00605875, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2, 0.875, -1.8125, -0.9375, 1, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3, 1, -1.8125, -2.375, 1.1875, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.234375, 1.25, -1.125, -2.234375, 2.1875, 0.375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.5, 1.0625, -1.3125, -2.25, 2.375, 0.5625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.9375, 1.1875, -0.9375, -2.6875, 1.875, 0.1875), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.6875, 1.1875, -1.1875, -2.5, 2.0625, 0.4375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.875, 1.1875, -1.8125, -2.625, 2.375, -1.625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.875, 1.1875, 0.9375, -2.625, 2.375, 1.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3, 2.375, -1.8125, -2.5, 2.5, 1.0625), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.1875, 0, 0.125, -1.1875, 0.5625, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.1875, 0.5625, 0.125, -1.125, 1, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.584778125, 0.88105875, 0.125, -1.8347781250000001, 1.00605875, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.1875, 0.875, 0.125, -1.125, 1, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.1875, 1, 0.125, -2.5625, 1.1875, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.421875, 1.25, 0.8125, -2.421875, 2.1875, 2.3125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.6875, 1.0625, 0.625, -2.4375, 2.375, 2.5), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.125, 1.1875, 1, -2.875, 1.875, 2.125), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.875, 1.1875, 0.75, -2.6875, 2.0625, 2.375), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.0625, 1.1875, 0.0625, -2.8125, 2.375, 0.25), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.0625, 1.1875, 2.8125, -2.8125, 2.375, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-3.1875, 2.375, 0.125, -2.6875, 2.5, 3), BooleanOp.OR);
	shape = Shapes.join(shape, Shapes.box(-2.4375, 0, -2.25, -0.6875, 0.875, -1.375), BooleanOp.OR);
		return shape;
	}
}
