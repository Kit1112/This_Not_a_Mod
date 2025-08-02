
package net.code.thisnotamod.block;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.phys.HitResult;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.level.storage.loot.LootParams;
import net.minecraft.world.level.material.FluidState;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.properties.DirectionProperty;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.Rotation;
import net.minecraft.world.level.block.RenderShape;
import net.minecraft.world.level.block.Mirror;
import net.minecraft.world.level.block.HorizontalDirectionalBlock;
import net.minecraft.world.level.block.EntityBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.BaseEntityBlock;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.Explosion;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.procedures.MiddleRightClickedProcedure;
import net.code.thisnotamod.procedures.MiddleDestrProcedure;
import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.List;
import java.util.Collections;

public class VotvLockerMiddleBlock extends BaseEntityBlock implements EntityBlock {
	public static final IntegerProperty BLOCKSTATE = IntegerProperty.create("blockstate", 0, 3);
	public static final IntegerProperty ANIMATION = IntegerProperty.create("animation", 0, (int) 3);
	public static final DirectionProperty FACING = HorizontalDirectionalBlock.FACING;

	public VotvLockerMiddleBlock() {
		super(BlockBehaviour.Properties.of().sound(SoundType.METAL).strength(1f, 10f).lightLevel(s -> (new Object() {
			public int getLightLevel() {
				if (s.getValue(BLOCKSTATE) == 1)
					return 0;
				if (s.getValue(BLOCKSTATE) == 2)
					return 0;
				if (s.getValue(BLOCKSTATE) == 3)
					return 0;
				return 0;
			}
		}.getLightLevel())).noOcclusion().isRedstoneConductor((bs, br, bp) -> false));
		this.registerDefaultState(this.stateDefinition.any().setValue(FACING, Direction.NORTH));
	}

	@Override
	public RenderShape getRenderShape(BlockState state) {
		return RenderShape.ENTITYBLOCK_ANIMATED;
	}

	@Nullable
	@Override
	public BlockEntity newBlockEntity(BlockPos blockPos, BlockState blockState) {
		return ThisnotamodModBlockEntities.VOTV_LOCKER_MIDDLE.get().create(blockPos, blockState);
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
		if (state.getValue(BLOCKSTATE) == 1) {

			return switch (state.getValue(FACING)) {
				default -> Shapes.or(box(0, 0, 0, 1, 16, 13), box(15, 0, 0, 16, 16, 13), box(1, 0, 0, 15, 16, 1), box(1, 0, 11, 15, 16, 12));
				case NORTH -> Shapes.or(box(15, 0, 3, 16, 16, 16), box(0, 0, 3, 1, 16, 16), box(1, 0, 15, 15, 16, 16), box(1, 0, 4, 15, 16, 5));
				case EAST -> Shapes.or(box(0, 0, 15, 13, 16, 16), box(0, 0, 0, 13, 16, 1), box(0, 0, 1, 1, 16, 15), box(11, 0, 1, 12, 16, 15));
				case WEST -> Shapes.or(box(3, 0, 0, 16, 16, 1), box(3, 0, 15, 16, 16, 16), box(15, 0, 1, 16, 16, 15), box(4, 0, 1, 5, 16, 15));
			};
		}
		if (state.getValue(BLOCKSTATE) == 2) {

			return switch (state.getValue(FACING)) {
				default -> Shapes.or(box(0, 0, 0, 1, 16, 13), box(15, 0, 0, 16, 16, 13), box(1, 0, 0, 15, 16, 1));
				case NORTH -> Shapes.or(box(15, 0, 3, 16, 16, 16), box(0, 0, 3, 1, 16, 16), box(1, 0, 15, 15, 16, 16));
				case EAST -> Shapes.or(box(0, 0, 15, 13, 16, 16), box(0, 0, 0, 13, 16, 1), box(0, 0, 1, 1, 16, 15));
				case WEST -> Shapes.or(box(3, 0, 0, 16, 16, 1), box(3, 0, 15, 16, 16, 16), box(15, 0, 1, 16, 16, 15));
			};
		}
		if (state.getValue(BLOCKSTATE) == 3) {

			return switch (state.getValue(FACING)) {
				default -> Shapes.or(box(0, 0, 0, 1, 16, 13), box(15, 0, 0, 16, 16, 13), box(1, 0, 0, 15, 16, 1), box(1, 0, 11, 15, 16, 12));
				case NORTH -> Shapes.or(box(15, 0, 3, 16, 16, 16), box(0, 0, 3, 1, 16, 16), box(1, 0, 15, 15, 16, 16), box(1, 0, 4, 15, 16, 5));
				case EAST -> Shapes.or(box(0, 0, 15, 13, 16, 16), box(0, 0, 0, 13, 16, 1), box(0, 0, 1, 1, 16, 15), box(11, 0, 1, 12, 16, 15));
				case WEST -> Shapes.or(box(3, 0, 0, 16, 16, 1), box(3, 0, 15, 16, 16, 16), box(15, 0, 1, 16, 16, 15), box(4, 0, 1, 5, 16, 15));
			};
		}

		return switch (state.getValue(FACING)) {
			default -> Shapes.or(box(0, 0, 0, 1, 16, 13), box(15, 0, 0, 16, 16, 13), box(1, 0, 0, 15, 16, 1));
			case NORTH -> Shapes.or(box(15, 0, 3, 16, 16, 16), box(0, 0, 3, 1, 16, 16), box(1, 0, 15, 15, 16, 16));
			case EAST -> Shapes.or(box(0, 0, 15, 13, 16, 16), box(0, 0, 0, 13, 16, 1), box(0, 0, 1, 1, 16, 15));
			case WEST -> Shapes.or(box(3, 0, 0, 16, 16, 1), box(3, 0, 15, 16, 16, 16), box(15, 0, 1, 16, 16, 15));
		};
	}

	@Override
	protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> builder) {
		builder.add(ANIMATION, FACING, BLOCKSTATE);
	}

	@Override
	public BlockState getStateForPlacement(BlockPlaceContext context) {
		return this.defaultBlockState().setValue(FACING, context.getHorizontalDirection().getOpposite());
	}

	public BlockState rotate(BlockState state, Rotation rot) {
		return state.setValue(FACING, rot.rotate(state.getValue(FACING)));
	}

	public BlockState mirror(BlockState state, Mirror mirrorIn) {
		return state.rotate(mirrorIn.getRotation(state.getValue(FACING)));
	}

	@Override
	public ItemStack getCloneItemStack(BlockState state, HitResult target, BlockGetter world, BlockPos pos, Player player) {
		return new ItemStack(ThisnotamodModBlocks.VOTV_LOCKER.get());
	}

	@Override
	public List<ItemStack> getDrops(BlockState state, LootParams.Builder builder) {
		List<ItemStack> dropsOriginal = super.getDrops(state, builder);
		if (!dropsOriginal.isEmpty())
			return dropsOriginal;
		return Collections.singletonList(new ItemStack(ThisnotamodModBlocks.VOTV_LOCKER.get()));
	}

	@Override
	public boolean onDestroyedByPlayer(BlockState blockstate, Level world, BlockPos pos, Player entity, boolean willHarvest, FluidState fluid) {
		boolean retval = super.onDestroyedByPlayer(blockstate, world, pos, entity, willHarvest, fluid);
		MiddleDestrProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ());
		return retval;
	}

	@Override
	public void wasExploded(Level world, BlockPos pos, Explosion e) {
		super.wasExploded(world, pos, e);
		MiddleDestrProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ());
	}

	@Override
	public InteractionResult use(BlockState blockstate, Level world, BlockPos pos, Player entity, InteractionHand hand, BlockHitResult hit) {
		super.use(blockstate, world, pos, entity, hand, hit);
		int x = pos.getX();
		int y = pos.getY();
		int z = pos.getZ();
		double hitX = hit.getLocation().x;
		double hitY = hit.getLocation().y;
		double hitZ = hit.getLocation().z;
		Direction direction = hit.getDirection();

		MiddleRightClickedProcedure.execute(world, x, y, z, blockstate);
		return InteractionResult.SUCCESS;
	}
}
