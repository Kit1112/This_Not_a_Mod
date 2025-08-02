
package net.code.thisnotamod.block;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.CollisionContext;
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
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.network.chat.Component;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.procedures.VotvDoorDownRightClickedProcedure;
import net.code.thisnotamod.procedures.VotvDoorBlockAddedProcedure;
import net.code.thisnotamod.procedures.VDrDestroyedProcedure;
import net.code.thisnotamod.procedures.EntityHitDoorDProcedure;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.List;
import java.util.Collections;

public class VotvDoorBlock extends BaseEntityBlock implements EntityBlock {
	public static final IntegerProperty BLOCKSTATE = IntegerProperty.create("blockstate", 0, 4);
	public static final IntegerProperty ANIMATION = IntegerProperty.create("animation", 0, (int) 4);
	public static final DirectionProperty FACING = HorizontalDirectionalBlock.FACING;

	public VotvDoorBlock() {
		super(BlockBehaviour.Properties.of().sound(SoundType.METAL).strength(1f, 10f).lightLevel(s -> (new Object() {
			public int getLightLevel() {
				if (s.getValue(BLOCKSTATE) == 1)
					return 0;
				if (s.getValue(BLOCKSTATE) == 2)
					return 0;
				if (s.getValue(BLOCKSTATE) == 3)
					return 0;
				if (s.getValue(BLOCKSTATE) == 4)
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
		return ThisnotamodModBlockEntities.VOTV_DOOR.get().create(blockPos, blockState);
	}

	@Override
	public void appendHoverText(ItemStack itemstack, BlockGetter level, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, level, list, flag);
		list.add(Component.literal("\u00A78\u041F\u041A\u041C \u0447\u0442\u043E \u0431\u044B \u043E\u0442\u043A\u0440\u044B\u0442\u044C/\u0437\u0430\u043A\u0440\u044B\u0442\u044C"));
		list.add(Component.literal(
				"\u00A78\u0420\u0430\u0437\u043C\u0435\u0441\u0442\u0438 \u0434\u0432\u0435 \u0440\u044F\u0434\u043E\u043C \u0438 \u0431\u0443\u0434\u0443\u0442 \u0440\u0430\u0431\u043E\u0442\u0430\u0442\u044C \u0432 \u0441\u0432\u044F\u0437\u043A\u0435"));
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
				default -> box(0, 0, 6, 16, 16, 10);
				case NORTH -> box(0, 0, 6, 16, 16, 10);
				case EAST -> box(6, 0, 0, 10, 16, 16);
				case WEST -> box(6, 0, 0, 10, 16, 16);
			};
		}
		if (state.getValue(BLOCKSTATE) == 2) {

			return switch (state.getValue(FACING)) {
				default -> box(-8, 0, 6, 8, 16, 10);
				case NORTH -> box(8, 0, 6, 24, 16, 10);
				case EAST -> box(6, 0, 8, 10, 16, 24);
				case WEST -> box(6, 0, -8, 10, 16, 8);
			};
		}
		if (state.getValue(BLOCKSTATE) == 3) {

			return switch (state.getValue(FACING)) {
				default -> box(-14, 0, 6, 2, 16, 10);
				case NORTH -> box(14, 0, 6, 30, 16, 10);
				case EAST -> box(6, 0, 14, 10, 16, 30);
				case WEST -> box(6, 0, -14, 10, 16, 2);
			};
		}
		if (state.getValue(BLOCKSTATE) == 4) {

			return switch (state.getValue(FACING)) {
				default -> box(0, 0, 6, 16, 16, 10);
				case NORTH -> box(0, 0, 6, 16, 16, 10);
				case EAST -> box(6, 0, 0, 10, 16, 16);
				case WEST -> box(6, 0, 0, 10, 16, 16);
			};
		}

		return switch (state.getValue(FACING)) {
			default -> box(0, 0, 6, 16, 16, 10);
			case NORTH -> box(0, 0, 6, 16, 16, 10);
			case EAST -> box(6, 0, 0, 10, 16, 16);
			case WEST -> box(6, 0, 0, 10, 16, 16);
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
	public List<ItemStack> getDrops(BlockState state, LootParams.Builder builder) {
		List<ItemStack> dropsOriginal = super.getDrops(state, builder);
		if (!dropsOriginal.isEmpty())
			return dropsOriginal;
		return Collections.singletonList(new ItemStack(this, 1));
	}

	@Override
	public boolean onDestroyedByPlayer(BlockState blockstate, Level world, BlockPos pos, Player entity, boolean willHarvest, FluidState fluid) {
		boolean retval = super.onDestroyedByPlayer(blockstate, world, pos, entity, willHarvest, fluid);
		VDrDestroyedProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ());
		return retval;
	}

	@Override
	public void entityInside(BlockState blockstate, Level world, BlockPos pos, Entity entity) {
		super.entityInside(blockstate, world, pos, entity);
		EntityHitDoorDProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ(), blockstate, entity);
	}

	@Override
	public void setPlacedBy(Level world, BlockPos pos, BlockState blockstate, LivingEntity entity, ItemStack itemstack) {
		super.setPlacedBy(world, pos, blockstate, entity, itemstack);
		VotvDoorBlockAddedProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ(), blockstate);
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

		VotvDoorDownRightClickedProcedure.execute(world, x, y, z, blockstate, entity);
		return InteractionResult.SUCCESS;
	}
}
