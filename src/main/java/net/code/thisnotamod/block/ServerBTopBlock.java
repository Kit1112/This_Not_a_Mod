
package net.code.thisnotamod.block;

import org.checkerframework.checker.units.qual.s;

import net.minecraft.world.phys.shapes.VoxelShape;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.phys.HitResult;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.level.pathfinder.BlockPathTypes;
import net.minecraft.world.level.material.FluidState;
import net.minecraft.world.level.block.state.properties.NoteBlockInstrument;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.properties.DirectionProperty;
import net.minecraft.world.level.block.state.StateDefinition;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.Rotation;
import net.minecraft.world.level.block.Mirror;
import net.minecraft.world.level.block.HorizontalDirectionalBlock;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.item.context.BlockPlaceContext;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.util.RandomSource;
import net.minecraft.sounds.SoundSource;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundSource;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.util.RandomSource;
import java.util.Map;
import java.util.HashMap;
import java.util.WeakHashMap;
import net.code.thisnotamod.init.ThisnotamodModSounds;

import java.util.Map;
import java.util.HashMap;
import java.util.WeakHashMap;

import net.code.thisnotamod.init.ThisnotamodModSounds;

import net.code.thisnotamod.procedures.ServerTdestrProcedure;
import net.code.thisnotamod.procedures.ServerRBMProcedure;
import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.minecraft.network.protocol.game.ClientboundSoundPacket;
import net.minecraft.core.Holder;

public class ServerBTopBlock extends Block {

	    // === Управление звуками ===
    private static final WeakHashMap<Level, Map<BlockPos, Timers>> SOUND_TIMERS = new WeakHashMap<>();
    private static final int LOOP_PERIOD_TICKS = 180; // 9 сек
    private static final int RANDOM_MIN_TICKS = 5 * 20;
    private static final int RANDOM_MAX_TICKS = 30 * 20;
    private static final double HEAR_RADIUS = 5.0; // слышно в ~5 блоках

    private static Map<BlockPos, Timers> timers(Level level) {
        return SOUND_TIMERS.computeIfAbsent(level, l -> new HashMap<>());
    }

    private static class Timers {
        long nextLoop = 0L;
        long nextRandom = 0L;
        boolean wasActive = false;
        boolean hadPlayersNear = false;
    }

        private static void playSoundInRadius(ServerLevel level, BlockPos pos,
                                          SoundEvent sound, SoundSource source,
                                          float volume, float pitch, double radiusBlocks) {
        double r2 = radiusBlocks * radiusBlocks;
        ClientboundSoundPacket pkt = new ClientboundSoundPacket(
                Holder.direct(sound),
                source,
                pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5,
                volume, pitch,
                level.random.nextLong()
        );
        for (var p : level.getPlayers(pl -> pl.distanceToSqr(pos.getCenter()) <= r2)) {
            p.connection.send(pkt);
        }
    }


        private static void stopAllSounds(ServerLevel level, BlockPos pos) {
        double r2 = HEAR_RADIUS * HEAR_RADIUS;
        for (var player : level.getPlayers(p -> p.distanceToSqr(pos.getCenter()) <= r2)) {
            player.connection.send(
                new net.minecraft.network.protocol.game.ClientboundStopSoundPacket(
                    null, // все звуки
                    SoundSource.BLOCKS
                )
            );
        }
    }


    




	
	public static final IntegerProperty BLOCKSTATE = IntegerProperty.create("blockstate", 0, 2);
	public static final DirectionProperty FACING = HorizontalDirectionalBlock.FACING;

	public ServerBTopBlock() {
		super(BlockBehaviour.Properties.of().instrument(NoteBlockInstrument.BASEDRUM).sound(SoundType.METAL).strength(1f, 10f).lightLevel(s -> (new Object() {
			public int getLightLevel() {
				if (s.getValue(BLOCKSTATE) == 1)
					return 0;
				if (s.getValue(BLOCKSTATE) == 2)
					return 0;
				return 0;
			}
		}.getLightLevel())).noOcclusion().isRedstoneConductor((bs, br, bp) -> false));
		this.registerDefaultState(this.stateDefinition.any().setValue(FACING, Direction.NORTH));
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
			default -> Shapes.or(box(0.5, 0, 0, 2.5, 2, 2.5), box(0.5, 0, 14.5, 2.5, 2, 17), box(0.5, 2, 0, 15.5, 16, 17), box(13.5, 0, 14.5, 15.5, 2, 17), box(13.5, 0, 0, 15.5, 2, 2.5));
			case NORTH -> Shapes.or(box(13.5, 0, 13.5, 15.5, 2, 16), box(13.5, 0, -1, 15.5, 2, 1.5), box(0.5, 2, -1, 15.5, 16, 16), box(0.5, 0, -1, 2.5, 2, 1.5), box(0.5, 0, 13.5, 2.5, 2, 16));
			case EAST -> Shapes.or(box(0, 0, 13.5, 2.5, 2, 15.5), box(14.5, 0, 13.5, 17, 2, 15.5), box(0, 2, 0.5, 17, 16, 15.5), box(14.5, 0, 0.5, 17, 2, 2.5), box(0, 0, 0.5, 2.5, 2, 2.5));
			case WEST -> Shapes.or(box(13.5, 0, 0.5, 16, 2, 2.5), box(-1, 0, 0.5, 1.5, 2, 2.5), box(-1, 2, 0.5, 16, 16, 15.5), box(-1, 0, 13.5, 1.5, 2, 15.5), box(13.5, 0, 13.5, 16, 2, 15.5));
		};
	}

	@Override
	protected void createBlockStateDefinition(StateDefinition.Builder<Block, BlockState> builder) {
		builder.add(FACING, BLOCKSTATE);
	}

	@Override
	public BlockState getStateForPlacement(BlockPlaceContext context) {
		return this.defaultBlockState().setValue(FACING, context.getHorizontalDirection().getOpposite());
	}

	    @Override
    public void onPlace(BlockState state, Level level, BlockPos pos, BlockState oldState, boolean isMoving) {
        super.onPlace(state, level, pos, oldState, isMoving);
        if (level instanceof ServerLevel sl) {
            // Инициализируем таймеры и запускаем тики
            Timers t = timers(sl).computeIfAbsent(pos, p -> new Timers());
            long now = sl.getGameTime();
            t.nextLoop = now + 1;   // запустим почти сразу
            // первый "рандом" тоже почти сразу, чтобы не ждать полминуты при установке
            t.nextRandom = now + (5 + sl.random.nextInt(6)) * 20; // 5..10 сек на первый раз
            sl.scheduleTick(pos, this, 1);
        }
    }


	public BlockState rotate(BlockState state, Rotation rot) {
		return state.setValue(FACING, rot.rotate(state.getValue(FACING)));
	}

	public BlockState mirror(BlockState state, Mirror mirrorIn) {
		return state.rotate(mirrorIn.getRotation(state.getValue(FACING)));
	}

	@Override
	public ItemStack getCloneItemStack(BlockState state, HitResult target, BlockGetter world, BlockPos pos, Player player) {
		return new ItemStack(ThisnotamodModBlocks.SERVER_B.get());
	}

	@Override
	public BlockPathTypes getBlockPathType(BlockState state, BlockGetter world, BlockPos pos, Mob entity) {
		return BlockPathTypes.BLOCKED;
	}

	@Override
	public boolean onDestroyedByPlayer(BlockState blockstate, Level world, BlockPos pos, Player entity, boolean willHarvest, FluidState fluid) {
		boolean retval = super.onDestroyedByPlayer(blockstate, world, pos, entity, willHarvest, fluid);
		ServerTdestrProcedure.execute(world, pos.getX(), pos.getY(), pos.getZ());
		return retval;
	}

	    @Override
    public void onRemove(BlockState state, Level level, BlockPos pos, BlockState newState, boolean isMoving) {
        super.onRemove(state, level, pos, newState, isMoving);
                if (level instanceof ServerLevel sl) {
            stopAllSounds(sl, pos);
        }
        Map<BlockPos, Timers> m = SOUND_TIMERS.get(level);
        if (m != null) m.remove(pos);
    }

            @Override
    public void tick(BlockState state, ServerLevel level, BlockPos pos, RandomSource random) {
        boolean active = (state.getValue(BLOCKSTATE) == 0 || state.getValue(BLOCKSTATE) == 1);

        Timers t = timers(level).computeIfAbsent(pos, p -> new Timers());
        long now = level.getGameTime();
        boolean playersNear = level.hasNearbyAlivePlayer(
   		pos.getX() + 0.5, pos.getY() + 0.5, pos.getZ() + 0.5,
    	(float)(HEAR_RADIUS + 0.5)
		);


        // === отслеживаем смену активности ===
        if (t.wasActive && !active) {
            // только что выключился
            stopAllSounds(level, pos);
        } else if (!t.wasActive && active) {
            // только что включился — сразу запускаем loop
            SoundEvent loop = ThisnotamodModSounds.SERVER_LOOP.get();
            playSoundInRadius(level, pos, loop, SoundSource.BLOCKS, 0.20f, 1.0f, HEAR_RADIUS);
            t.nextLoop = now + LOOP_PERIOD_TICKS;
            t.nextRandom = now + (5 + random.nextInt(6)) * 20;
        }
        t.wasActive = active;

        // мгновенный старт, если игроки только что появились рядом
if (active && playersNear && !t.hadPlayersNear) {
    SoundEvent loop = ThisnotamodModSounds.SERVER_LOOP.get();
    playSoundInRadius(level, pos, loop, SoundSource.BLOCKS, 0.20f, 1.0f, HEAR_RADIUS);
    t.nextLoop = now + LOOP_PERIOD_TICKS; // следующий луп по расписанию
}
// обновляем флаг близости игроков
t.hadPlayersNear = playersNear;


        if (active) {
            // регулярный цикл звуков
            if (now >= t.nextLoop) {
                SoundEvent loop = ThisnotamodModSounds.SERVER_LOOP.get();
                playSoundInRadius(level, pos, loop, SoundSource.BLOCKS, 0.20f, 1.0f, HEAR_RADIUS);
                t.nextLoop = now + LOOP_PERIOD_TICKS;
            }

            if (now >= t.nextRandom) {
                int pick = 1 + random.nextInt(3);
                SoundEvent s = switch (pick) {
                    case 1 -> ThisnotamodModSounds.SERVER_1.get();
                    case 2 -> ThisnotamodModSounds.SERVER_2.get();
                    default -> ThisnotamodModSounds.SERVER_3.get();
                };
                float pitch = 0.95f + random.nextFloat() * 0.1f;
                playSoundInRadius(level, pos, s, SoundSource.BLOCKS, 0.30f, pitch, HEAR_RADIUS);
                t.nextRandom = now + RANDOM_MIN_TICKS + random.nextInt(RANDOM_MAX_TICKS - RANDOM_MIN_TICKS + 1);
            }
        }

        // планируем следующий тик (1 сек)
        level.scheduleTick(pos, this, (active || playersNear) ? 10 : 20);
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
		ServerRBMProcedure.execute(world, x, y, z, blockstate, entity);
		        if (world instanceof ServerLevel sl) {
            sl.scheduleTick(pos, this, 1);
        }
		return InteractionResult.SUCCESS;
	}
}
