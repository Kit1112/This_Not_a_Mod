
package net.code.thisnotamod.block;

import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.level.block.state.properties.DirectionProperty;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.Rotation;
import net.minecraft.world.level.block.Mirror;
import net.minecraft.world.level.block.HorizontalDirectionalBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.ItemStack;
import net.minecraft.network.chat.Component;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;

import java.util.List;

public class KripoghusBlock extends Block {
	public static final DirectionProperty FACING = HorizontalDirectionalBlock.FACING;

	public KripoghusBlock() {
		super(BlockBehaviour.Properties.of().ignitedByLava().sound(SoundType.WOOL).strength(0f, 10f).noOcclusion().isRedstoneConductor((bs, br, bp) -> false));
		this.registerDefaultState(this.stateDefinition.any().setValue(FACING, Direction.NORTH));
	}

	@Override
	public void appendHoverText(ItemStack itemstack, BlockGetter level, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, level, list, flag);
		list.add(Component.literal(""));
		list.add(Component.literal(
				"\u0421\u0410\u041C\u042B\u0419 \u041B\u0423\u0427\u0428\u0418\u0419 \u041A\u041E\u041C\u041F\u0410\u041D\u042C\u041E\u041D \u0412 \u0412\u0410\u0428\u0415\u041C \u041F\u0423\u0422\u0415\u0428\u0415\u0412\u0421\u0422\u0412\u0418\u0418!!!"));
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
	public VoxelShape getVisualShape(BlockState state, BlockGetter world, BlockPos pos, CollisionContext context) {
		return Shapes.empty();
	}

	@Override
	public VoxelShape getShape(BlockState state, BlockGetter world, BlockPos pos, CollisionContext context) {
		return switch (state.getValue(FACING)) {
			default -> Shapes.or(box(10, 0, 7, 12, 2, 9), box(12, 0, 7, 13, 1, 9), box(5, 0, 6, 10, 3, 10), box(7, 0, 10, 10, 1, 12), box(8, 0, 12, 10, 1, 13), box(10, 0, 12, 11, 1, 14), box(6, 0, 10, 7, 1, 11), box(10, 0, 11, 11, 1, 12),
					box(7, 0, 4, 10, 1, 6), box(8, 0, 3, 10, 1, 4), box(10, 0, 2, 11, 1, 4), box(6, 0, 5, 7, 1, 6), box(10, 0, 4, 11, 1, 5), box(4, 0, 6, 5, 1, 7), box(4, 0, 9, 5, 1, 10));
			case NORTH -> Shapes.or(box(4, 0, 7, 6, 2, 9), box(3, 0, 7, 4, 1, 9), box(6, 0, 6, 11, 3, 10), box(6, 0, 4, 9, 1, 6), box(6, 0, 3, 8, 1, 4), box(5, 0, 2, 6, 1, 4), box(9, 0, 5, 10, 1, 6), box(5, 0, 4, 6, 1, 5), box(6, 0, 10, 9, 1, 12),
					box(6, 0, 12, 8, 1, 13), box(5, 0, 12, 6, 1, 14), box(9, 0, 10, 10, 1, 11), box(5, 0, 11, 6, 1, 12), box(11, 0, 9, 12, 1, 10), box(11, 0, 6, 12, 1, 7));
			case EAST -> Shapes.or(box(7, 0, 4, 9, 2, 6), box(7, 0, 3, 9, 1, 4), box(6, 0, 6, 10, 3, 11), box(10, 0, 6, 12, 1, 9), box(12, 0, 6, 13, 1, 8), box(12, 0, 5, 14, 1, 6), box(10, 0, 9, 11, 1, 10), box(11, 0, 5, 12, 1, 6),
					box(4, 0, 6, 6, 1, 9), box(3, 0, 6, 4, 1, 8), box(2, 0, 5, 4, 1, 6), box(5, 0, 9, 6, 1, 10), box(4, 0, 5, 5, 1, 6), box(6, 0, 11, 7, 1, 12), box(9, 0, 11, 10, 1, 12));
			case WEST -> Shapes.or(box(7, 0, 10, 9, 2, 12), box(7, 0, 12, 9, 1, 13), box(6, 0, 5, 10, 3, 10), box(4, 0, 7, 6, 1, 10), box(3, 0, 8, 4, 1, 10), box(2, 0, 10, 4, 1, 11), box(5, 0, 6, 6, 1, 7), box(4, 0, 10, 5, 1, 11),
					box(10, 0, 7, 12, 1, 10), box(12, 0, 8, 13, 1, 10), box(12, 0, 10, 14, 1, 11), box(10, 0, 6, 11, 1, 7), box(11, 0, 10, 12, 1, 11), box(9, 0, 4, 10, 1, 5), box(6, 0, 4, 7, 1, 5));
		};
	}

	@Override
	protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> builder) {
		builder.add(FACING);
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
}
