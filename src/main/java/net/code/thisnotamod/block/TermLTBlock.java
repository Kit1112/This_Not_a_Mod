
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
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.network.chat.Component;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.procedures.TermLTdestrProcedure;
import net.code.thisnotamod.procedures.TermLTRClProcedure;
import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.code.thisnotamod.init.ThisnotamodModBlockEntities;

import javax.annotation.Nullable;

import java.util.List;
import java.util.Collections;

public class TermLTBlock extends BaseEntityBlock implements EntityBlock {
	public static final IntegerProperty BLOCKSTATE = IntegerProperty.create("blockstate", 0, 4);
	public static final IntegerProperty ANIMATION = IntegerProperty.create("animation", 0, (int) 2);
	public static final DirectionProperty FACING = HorizontalDirectionalBlock.FACING;

	public TermLTBlock() {
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
		return ThisnotamodModBlockEntities.TERM_LT.get().create(blockPos, blockState);
	}

	@Override
	public void appendHoverText(ItemStack itemstack, BlockGetter level, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, level, list, flag);
		list.add(Component.literal("\u00A74 \u043F\u043E\u043A\u0430 \u0447\u0442\u043E \u0442\u0435\u0441\u0442\u043E\u0432\u044B\u0439"));
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

		return switch (state.getValue(FACING)) {
			default -> Shapes.or(box(5, 0, 2.5, 16, 1, 10.5), box(2, 0, 9.5, 4, 18, 11.5), box(5, 1, 2.5, 16, 2, 10.5), box(3, 2, 6.5, 16, 18, 10.5), box(1, 18, -2.5, 16, 20, 11.5), box(8, 7, 2.5, 16, 17, 6.5), box(1, 0, -2.5, 16, 18, 2.5));
			case NORTH -> Shapes.or(box(0, 0, 5.5, 11, 1, 13.5), box(12, 0, 4.5, 14, 18, 6.5), box(0, 1, 5.5, 11, 2, 13.5), box(0, 2, 5.5, 13, 18, 9.5), box(0, 18, 4.5, 15, 20, 18.5), box(0, 7, 9.5, 8, 17, 13.5), box(0, 0, 13.5, 15, 18, 18.5));
			case EAST -> Shapes.or(box(2.5, 0, 0, 10.5, 1, 11), box(9.5, 0, 12, 11.5, 18, 14), box(2.5, 1, 0, 10.5, 2, 11), box(6.5, 2, 0, 10.5, 18, 13), box(-2.5, 18, 0, 11.5, 20, 15), box(2.5, 7, 0, 6.5, 17, 8), box(-2.5, 0, 0, 2.5, 18, 15));
			case WEST -> Shapes.or(box(5.5, 0, 5, 13.5, 1, 16), box(4.5, 0, 2, 6.5, 18, 4), box(5.5, 1, 5, 13.5, 2, 16), box(5.5, 2, 3, 9.5, 18, 16), box(4.5, 18, 1, 18.5, 20, 16), box(9.5, 7, 8, 13.5, 17, 16), box(13.5, 0, 1, 18.5, 18, 16));
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
		return new ItemStack(ThisnotamodModBlocks.TERMINAL.get());
	}

	@Override
	public List<ItemStack> getDrops(BlockState state, LootParams.Builder builder) {
		List<ItemStack> dropsOriginal = super.getDrops(state, builder);
		if (!dropsOriginal.isEmpty())
			return dropsOriginal;
		return Collections.singletonList(new ItemStack(ThisnotamodModBlocks.TERMINAL.get()));
	}

	@Override
	public boolean onDestroyedByPlayer(BlockState blockstate, Level world, BlockPos pos, Player entity, boolean willHarvest, FluidState fluid) {
		boolean retval = super.onDestroyedByPlayer(blockstate, world, pos, entity, willHarvest, fluid);
		TermLTdestrProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ(), blockstate);
		return retval;
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

		TermLTRClProcedure.execute(world, x, y, z, blockstate);
		return InteractionResult.SUCCESS;
	}
}
