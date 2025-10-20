
package net.code.thisnotamod.entity;

import software.bernie.geckolib.util.GeckoLibUtil;
import software.bernie.geckolib.core.object.PlayState;
import software.bernie.geckolib.core.animation.RawAnimation;
import software.bernie.geckolib.core.animation.AnimationState;
import software.bernie.geckolib.core.animation.AnimationController;
import software.bernie.geckolib.core.animation.AnimatableManager;
import software.bernie.geckolib.core.animatable.instance.AnimatableInstanceCache;
import software.bernie.geckolib.animatable.GeoEntity;

import org.checkerframework.checker.units.qual.s;

import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.network.PlayMessages;
import net.minecraftforge.network.NetworkHooks;

import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.projectile.ThrownPotion;
import net.minecraft.world.entity.projectile.AbstractArrow;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.ai.navigation.PathNavigation;
import net.minecraft.world.entity.ai.navigation.FlyingPathNavigation;
import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.ai.control.FlyingMoveControl;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.Pose;
import net.minecraft.world.entity.MobType;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.EntityDimensions;
import net.minecraft.world.entity.AreaEffectCloud;
import net.minecraft.world.damagesource.DamageTypes;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.syncher.SynchedEntityData;
import net.minecraft.network.syncher.EntityDataSerializers;
import net.minecraft.network.syncher.EntityDataAccessor;
import net.minecraft.network.protocol.game.ClientGamePacketListener;
import net.minecraft.network.protocol.Packet;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.init.ThisnotamodModEntities;

public class Drone1Entity extends Monster implements GeoEntity {
	public static final EntityDataAccessor<Boolean> SHOOT = SynchedEntityData.defineId(Drone1Entity.class, EntityDataSerializers.BOOLEAN);
	public static final EntityDataAccessor<String> ANIMATION = SynchedEntityData.defineId(Drone1Entity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> TEXTURE = SynchedEntityData.defineId(Drone1Entity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_StartPoint = SynchedEntityData.defineId(Drone1Entity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_EnndPoint = SynchedEntityData.defineId(Drone1Entity.class, EntityDataSerializers.STRING);
	private final AnimatableInstanceCache cache = GeckoLibUtil.createInstanceCache(this);
	private boolean swinging;
	private boolean lastloop;
	private long lastSwing;
	public String animationprocedure = "empty";

	public Drone1Entity(PlayMessages.SpawnEntity packet, Level world) {
		this(ThisnotamodModEntities.DRONE_1.get(), world);
	}

	public Drone1Entity(EntityType<Drone1Entity> type, Level world) {
		super(type, world);
		xpReward = 0;
		setNoAi(false);
		setMaxUpStep(0.6f);
		setPersistenceRequired();
		this.moveControl = new FlyingMoveControl(this, 10, true);
	}

	@Override
	protected void defineSynchedData() {
		super.defineSynchedData();
		this.entityData.define(SHOOT, false);
		this.entityData.define(ANIMATION, "undefined");
		this.entityData.define(TEXTURE, "drone");
		this.entityData.define(DATA_StartPoint, "");
		this.entityData.define(DATA_EnndPoint, "");
	}

	public void setTexture(String texture) {
		this.entityData.set(TEXTURE, texture);
	}

	public String getTexture() {
		return this.entityData.get(TEXTURE);
	}

	@Override
	public Packet<ClientGamePacketListener> getAddEntityPacket() {
		return NetworkHooks.getEntitySpawningPacket(this);
	}

	@Override
	protected PathNavigation createNavigation(Level world) {
		return new FlyingPathNavigation(this, world);
	}

	@Override
	protected void registerGoals() {
		super.registerGoals();
		this.goalSelector.addGoal(0, new Goal() {
			private final Drone1Entity mob = Drone1Entity.this;

			private enum Stage {
				IDLE, ASCEND, CRUISE_TO_END, DROP, WAIT, RETURN_TO_START_ALT, DESCEND_TO_PAD
			}

			// состояние
			private Stage stage = Stage.IDLE;
			private Stage lastLoggedStage = Stage.IDLE;
			private BlockPos startPos = null;
			private BlockPos endPos = null;
			private int waitTicks = 0;
			// зафиксированная высота крейсерского полёта
			private double cruiseY = Double.NaN;
			// === ЗВУК ДРОНА (луп 9 секунд) ===
			private int droneHumCooldown = 0; // тиков до следующего запуска
			private static final net.minecraft.resources.ResourceLocation DRONE_HUM_ID = new net.minecraft.resources.ResourceLocation("thisnotamod", "drone_sound");
			private static final int DRONE_HUM_PERIOD = 9 * 20; // 9с * 20 т/с
			// заказ
			private Player orderOwner = null;
			private String orderKey = null; // ключ в CompoundTag (строка "1","2",...)
			private String orderStr = null; // строка "0, 1, 2, "
			// логгирование
			private int lastTickLog = 0; // чтобы не спамить каждую миллисекунду
			private static final int LOG_COOLDOWN_TICKS = 20; // раз в секунду для «текущих» логов
			{
				this.setFlags(java.util.EnumSet.of(Goal.Flag.MOVE, Goal.Flag.LOOK));
			}

			@Override
			public boolean isInterruptable() {
				return false;
			}

			@Override
			public boolean requiresUpdateEveryTick() {
				return true;
			}

			@Override
			public boolean canUse() {
				if (stage != Stage.IDLE) {
					return false;
				}
				// читаем точки старта/финиша из entity data
				String sp = mob.getEntityData().get(Drone1Entity.DATA_StartPoint);
				String ep = mob.getEntityData().get(Drone1Entity.DATA_EnndPoint);
				// парсим без фолбэка
				startPos = parsePoint(sp);
				endPos = parsePoint(ep);
				if (startPos == null || endPos == null) {
					return false;
				}
				if (startPos.equals(endPos)) {
					return false;
				}
				// ищем ближайшего игрока с непустым CompoundTag заказов
				orderOwner = findNearestPlayerWithOrders(128.0);
				if (orderOwner == null) {
					return false;
				}
				net.minecraft.nbt.CompoundTag orders = orderOwner.getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
						.orElse(new net.code.thisnotamod.network.ThisnotamodModVariables.PlayerVariables()).Order_list;
				if (orders == null || orders.isEmpty()) {
					return false;
				}
				orderKey = pickMinNumericKey(orders);
				if (orderKey == null) {
					return false;
				}
				net.minecraft.nbt.Tag t = orders.get(orderKey);
				orderStr = (t instanceof net.minecraft.nbt.StringTag s) ? s.getAsString() : null;
				if (orderStr == null || orderStr.isEmpty()) {
					return false;
				}
				return true;
			}

			@Override
			public boolean canContinueToUse() {
				return (stage != Stage.IDLE);
			}

			@Override
			public void start() {
				stage = Stage.ASCEND;
				cruiseY = Double.NaN; // сбрасываем перед новым рейсом
				droneHumCooldown = 0; // сброс таймера лупа
				stopNav();
				// sanity‑лог: какой контроллер/навигация и какие атрибуты реально используются
				debugNow(String.format(java.util.Locale.ROOT, "INIT: MC=%s Nav=%s fly=%.3f move=%.3f", mob.getMoveControl().getClass().getSimpleName(), mob.getNavigation().getClass().getSimpleName(),
						val(mob, net.minecraft.world.entity.ai.attributes.Attributes.FLYING_SPEED), val(mob, net.minecraft.world.entity.ai.attributes.Attributes.MOVEMENT_SPEED)));
			}

			@Override
			public void stop() {
				stopNav();
				stage = Stage.IDLE;
				droneHumCooldown = 0; // перестраховка
				waitTicks = 0;
				orderOwner = null;
				orderKey = null;
				orderStr = null;
				startPos = null;
				endPos = null;
			}

			@Override
			public void tick() {
				// лог входа в стадию
				if (lastLoggedStage != stage) {
					debugStageEnter(stage, "tick()");
					lastLoggedStage = stage;
				}
				// === ЛУП ЗВУКА: играет во всех стадиях кроме IDLE ===
				tickDroneHum();
				switch (stage) {
					case ASCEND -> {
						double tx = startPos.getX() + 0.5, ty = startPos.getY() + 5.0, tz = startPos.getZ() + 0.5;
						moveTo(tx, ty, tz, 15.0);
						if (closeTo(tx, ty, tz)) {
							cruiseY = mob.getY(); // запоминаем фактическую высоту после подъёма
							stage = Stage.CRUISE_TO_END;
							stabilizeVertical(ty);
							stopNav();
						}
					}
					case CRUISE_TO_END -> {
						double tx = endPos.getX() + 0.5, ty = Double.isNaN(cruiseY) ? (endPos.getY() + 5.0) : cruiseY, tz = endPos.getZ() + 0.5;
						moveTo(tx, ty, tz, 15.0);
						if (closeTo(tx, ty, tz)) {
							stage = Stage.DROP;
							stabilizeVertical(ty);
							stopNav();
						}
					}
					case DROP -> {
						dropOrderItems();
						removeOrderFromOwner();
						waitTicks = 100; // 5 сек
						stage = Stage.WAIT;
					}
					case WAIT -> {
						if (waitTicks > 0) {
							waitTicks--;
						} else {
							stage = Stage.RETURN_TO_START_ALT;
						}
					}
					case RETURN_TO_START_ALT -> {
						double tx = startPos.getX() + 0.5, ty = Double.isNaN(cruiseY) ? (startPos.getY() + 5.0) : cruiseY, tz = startPos.getZ() + 0.5;
						moveTo(tx, ty, tz, 15.0);
						if (closeTo(tx, ty, tz)) {
							stage = Stage.DESCEND_TO_PAD;
							stabilizeVertical(ty);
							stopNav();
						}
					}
					case DESCEND_TO_PAD -> {
						double tx = startPos.getX() + 0.5, ty = startPos.getY() + 1.0, tz = startPos.getZ() + 0.5;
						moveTo(tx, ty, tz, 15.0);
						if (closeTo(tx, ty, tz)) {
							stabilizeVertical(ty);
							stop(); // цикл завершён
						}
					}
					case IDLE -> {
						debugEverySec("IDLE: ожидаю условия запуска (см. canUse-логи)");
					}
				}
			}

			// =========================
			// ВСПОМОГАТЕЛЬНОЕ
			// =========================
			private void moveTo(double x, double y, double z, double speed) {
				// 1) просим штатный контроллер
				mob.getMoveControl().setWantedPosition(x, y, z, speed);
				// 2) небольшой горизонтальный форсаж, чтобы крейсерские этапы были реально быстрыми
				double fly = 0.0;
				var flyAttr = mob.getAttribute(net.minecraft.world.entity.ai.attributes.Attributes.FLYING_SPEED);
				if (flyAttr != null)
					fly = flyAttr.getValue();
				double flyNorm = Math.max(0.3, Math.min(fly, 2.0)); // нормализация
				double baseAcc = 0.005 * Math.min(speed, 3.0) * flyNorm; // блоков/тик
				double dx = x - mob.getX();
				double dz = z - mob.getZ();
				double dXZ = Math.sqrt(dx * dx + dz * dz);
				if (dXZ > 1.0E-4) {
					double nx = dx / dXZ;
					double nz = dz / dXZ;
					var v = mob.getDeltaMovement();
					double kDrag = 0.90; // чуть сглаживаем
					double vx = v.x * kDrag + nx * baseAcc;
					double vz = v.z * kDrag + nz * baseAcc;
					mob.setDeltaMovement(vx, v.y, vz);
				}
			}

			private void stopNav() {
				mob.getNavigation().stop();
				// не гасим горизонтальную скорость
				var v = mob.getDeltaMovement();
				mob.setDeltaMovement(v.x, 0.0, v.z);
			}

			private boolean closeTo(double x, double y, double z) {
				double dx = mob.getX() - x;
				double dy = mob.getY() - y;
				double dz = mob.getZ() - z;
				boolean inHoriz = (dx * dx + dz * dz) <= (1.5 * 1.5); // мягче
				boolean inVert = Math.abs(dy) <= 0.6; // мягче
				return inHoriz && inVert;
			}

			private void stabilizeVertical(double targetY) {
				double dy = targetY - mob.getY();
				if (Math.abs(dy) < 0.25) {
					var v = mob.getDeltaMovement();
					mob.setDeltaMovement(v.x, 0.0, v.z);
				}
			}

			private double distSqrTo(double x, double y, double z) {
				return mob.position().distanceToSqr(x, y, z);
			}

			// === Луп звука ===
			private void tickDroneHum() {
				if (mob.level().isClientSide)
					return; // играем на сервере
				if (stage == Stage.IDLE) { // в IDLE не перезапускаем
					droneHumCooldown = 0;
					return;
				}
				if (droneHumCooldown <= 0) {
					playDroneHumOnce();
					droneHumCooldown = DRONE_HUM_PERIOD - 1; // небольшой запас на шов
				} else {
					droneHumCooldown--;
				}
			}

			private void playDroneHumOnce() {
				var evt = net.minecraftforge.registries.ForgeRegistries.SOUND_EVENTS.getValue(DRONE_HUM_ID);
				if (evt == null)
					return;
				float volume = 0.6f;
				float pitch = 1.0f;
				mob.level().playSound(/*player*/ null, mob.getX(), mob.getY(), mob.getZ(), evt, net.minecraft.sounds.SoundSource.AMBIENT, volume, pitch);
			}

			// Универсальный парсер координат
			private BlockPos parsePoint(String s) {
				if (s == null)
					return null;
				s = s.trim();
				if (s.isEmpty())
					return null;
				s = s.replace("BlockPos", "");
				s = s.replace("{", "").replace("}", "");
				s = s.replace("[", "").replace("]", "");
				s = s.replace("x=", "").replace("y=", "").replace("z=", "");
				String[] parts = s.split("[,;\s]+");
				if (parts.length < 3)
					return null;
				try {
					double dx = Double.parseDouble(parts[0]);
					double dy = Double.parseDouble(parts[1]);
					double dz = Double.parseDouble(parts[2]);
					int x = net.minecraft.util.Mth.floor(dx);
					int y = net.minecraft.util.Mth.floor(dy);
					int z = net.minecraft.util.Mth.floor(dz);
					return new BlockPos(x, y, z);
				} catch (Exception e) {
					return null;
				}
			}

			private Player findNearestPlayerWithOrders(double radius) {
				Player best = null;
				double bestD = radius * radius;
				for (Player p : mob.level().players()) {
					double d = p.distanceToSqr(mob);
					if (d <= bestD) {
						net.minecraft.nbt.CompoundTag orders = p.getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
								.orElse(new net.code.thisnotamod.network.ThisnotamodModVariables.PlayerVariables()).Order_list;
						if (orders != null && !orders.isEmpty()) {
							best = p;
							bestD = d;
						}
					}
				}
				return best;
			}

			private String pickMinNumericKey(net.minecraft.nbt.CompoundTag orders) {
				int best = Integer.MAX_VALUE;
				String bestKey = null;
				for (String k : orders.getAllKeys()) {
					try {
						int v = Integer.parseInt(k);
						if (v < best) {
							best = v;
							bestKey = k;
						}
					} catch (NumberFormatException ignored) {
					}
				}
				if (bestKey != null)
					return bestKey;
				java.util.Iterator<String> it = orders.getAllKeys().iterator();
				return it.hasNext() ? it.next() : null;
			}

			private void removeOrderFromOwner() {
				if (orderOwner == null || orderKey == null)
					return;
				orderOwner.getCapability(net.code.thisnotamod.network.ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(cap -> {
					if (cap.Order_list != null) {
						cap.Order_list.remove(orderKey);
					}
					try {
						cap.syncPlayerVariables(orderOwner);
					} catch (Throwable ignored) {
					}
				});
			}

			private void dropOrderItems() {
				if (!(mob.level() instanceof net.minecraft.server.level.ServerLevel level))
					return;
				if (orderStr == null || orderStr.isEmpty())
					return;
				String[] parts = orderStr.split(",");
				for (String raw : parts) {
					String s = raw.trim();
					if (s.isEmpty())
						continue;
					try {
						int code = Integer.parseInt(s);
						net.minecraft.world.item.Item item = mapCodeToItem(code);
						if (item == null || item == net.minecraft.world.item.Items.AIR)
							continue;
						net.minecraft.world.entity.item.ItemEntity it = new net.minecraft.world.entity.item.ItemEntity(level, mob.getX(), mob.getY(), mob.getZ(), new net.minecraft.world.item.ItemStack(item, 1));
						it.setPickUpDelay(10);
						level.addFreshEntity(it);
					} catch (NumberFormatException ignored) {
					}
				}
			}

			private net.minecraft.world.item.Item mapCodeToItem(int code) {
				net.minecraft.resources.ResourceLocation id = switch (code) {
					case 0 -> new net.minecraft.resources.ResourceLocation("thisnotamod", "argemiared");
					case 1 -> new net.minecraft.resources.ResourceLocation("thisnotamod", "music_disk_votv");
					case 2 -> new net.minecraft.resources.ResourceLocation("thisnotamod", "music_disk_votv_winter");
					case 3 -> new net.minecraft.resources.ResourceLocation("thisnotamod", "w_canim");
					default -> null;
				};
				return id == null ? net.minecraft.world.item.Items.AIR : net.minecraftforge.registries.ForgeRegistries.ITEMS.getValue(id);
			}

			// =========================
			// ЛОГИ В ЧАТ
			// =========================
			private void debug(String msg) {
				if (mob.level().isClientSide)
					return;
				String prefix = "[DRONE:" + mob.getId() + "] ";
				net.minecraft.server.level.ServerLevel sl = (net.minecraft.server.level.ServerLevel) mob.level();
				for (Player p : sl.players()) {
					if (p.distanceToSqr(mob) <= 32 * 32) {
						p.sendSystemMessage(net.minecraft.network.chat.Component.literal(prefix + msg));
					}
				}
				if (orderOwner != null && orderOwner.level() == sl && orderOwner.distanceToSqr(mob) > 32 * 32) {
					orderOwner.sendSystemMessage(net.minecraft.network.chat.Component.literal(prefix + msg));
				}
			}

			private void debugNow(String msg) {
				debug(msg);
			}

			private void debugEverySec(String msg) {
				int tick = mob.tickCount;
				if (tick - lastTickLog >= LOG_COOLDOWN_TICKS) {
					lastTickLog = tick;
					debug(msg);
				}
			}

			private void debugStageEnter(Stage st, String src) {
				debug("ENTER " + st + " (" + src + "), startPos=" + fmt(startPos) + ", endPos=" + fmt(endPos) + ", pos=" + fmt(mob.getX(), mob.getY(), mob.getZ()));
			}

			private static String fmt(BlockPos p) {
				return p == null ? "null" : ("[" + p.getX() + ", " + p.getY() + ", " + p.getZ() + "]");
			}

			private static String fmt(double x, double y, double z) {
				return String.format(java.util.Locale.ROOT, "[%.2f, %.2f, %.2f]", x, y, z);
			}

			// safe‑получение значения атрибута (0 если нет)
			private static double val(LivingEntity e, net.minecraft.world.entity.ai.attributes.Attribute a) {
				var i = e.getAttribute(a);
				return (i == null) ? 0.0 : i.getValue();
			}
		});
	}

	@Override
	public MobType getMobType() {
		return MobType.UNDEFINED;
	}

	@Override
	public boolean removeWhenFarAway(double distanceToClosestPlayer) {
		return false;
	}

	@Override
	public SoundEvent getAmbientSound() {
		return ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:drone_sound"));
	}

	@Override
	public SoundEvent getHurtSound(DamageSource ds) {
		return ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("entity.generic.hurt"));
	}

	@Override
	public SoundEvent getDeathSound() {
		return ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("entity.generic.death"));
	}

	@Override
	public boolean causeFallDamage(float l, float d, DamageSource source) {
		return false;
	}

	@Override
	public boolean hurt(DamageSource source, float amount) {
		if (source.is(DamageTypes.IN_FIRE))
			return false;
		if (source.getDirectEntity() instanceof AbstractArrow)
			return false;
		if (source.getDirectEntity() instanceof Player)
			return false;
		if (source.getDirectEntity() instanceof ThrownPotion || source.getDirectEntity() instanceof AreaEffectCloud)
			return false;
		if (source.is(DamageTypes.FALL))
			return false;
		if (source.is(DamageTypes.CACTUS))
			return false;
		if (source.is(DamageTypes.DROWN))
			return false;
		if (source.is(DamageTypes.LIGHTNING_BOLT))
			return false;
		if (source.is(DamageTypes.EXPLOSION))
			return false;
		if (source.is(DamageTypes.TRIDENT))
			return false;
		if (source.is(DamageTypes.FALLING_ANVIL))
			return false;
		if (source.is(DamageTypes.DRAGON_BREATH))
			return false;
		if (source.is(DamageTypes.WITHER))
			return false;
		if (source.is(DamageTypes.WITHER_SKULL))
			return false;
		return super.hurt(source, amount);
	}

	@Override
	public void addAdditionalSaveData(CompoundTag compound) {
		super.addAdditionalSaveData(compound);
		compound.putString("Texture", this.getTexture());
		compound.putString("DataStartPoint", this.entityData.get(DATA_StartPoint));
		compound.putString("DataEnndPoint", this.entityData.get(DATA_EnndPoint));
	}

	@Override
	public void readAdditionalSaveData(CompoundTag compound) {
		super.readAdditionalSaveData(compound);
		if (compound.contains("Texture"))
			this.setTexture(compound.getString("Texture"));
		if (compound.contains("DataStartPoint"))
			this.entityData.set(DATA_StartPoint, compound.getString("DataStartPoint"));
		if (compound.contains("DataEnndPoint"))
			this.entityData.set(DATA_EnndPoint, compound.getString("DataEnndPoint"));
	}

	@Override
	public void baseTick() {
		super.baseTick();
		this.refreshDimensions();
	}

	@Override
	public EntityDimensions getDimensions(Pose p_33597_) {
		return super.getDimensions(p_33597_).scale((float) 1);
	}

	@Override
	protected void checkFallDamage(double y, boolean onGroundIn, BlockState state, BlockPos pos) {
	}

	@Override
	public void setNoGravity(boolean ignored) {
		super.setNoGravity(true);
	}

	public void aiStep() {
		super.aiStep();
		this.setNoGravity(true);
	}

	public static void init() {
	}

	public static AttributeSupplier.Builder createAttributes() {
		AttributeSupplier.Builder builder = Mob.createMobAttributes();
		builder = builder.add(Attributes.MOVEMENT_SPEED, 1);
		builder = builder.add(Attributes.MAX_HEALTH, 10);
		builder = builder.add(Attributes.ARMOR, 0);
		builder = builder.add(Attributes.ATTACK_DAMAGE, 3);
		builder = builder.add(Attributes.FOLLOW_RANGE, 16);
		builder = builder.add(Attributes.FLYING_SPEED, 1);
		return builder;
	}

	private PlayState movementPredicate(AnimationState event) {
		if (this.animationprocedure.equals("empty")) {
			if (!this.onGround()) {
				return event.setAndContinue(RawAnimation.begin().thenLoop("fast_fly"));
			}
			return event.setAndContinue(RawAnimation.begin().thenLoop("fly"));
		}
		return PlayState.STOP;
	}

	String prevAnim = "empty";

	private PlayState procedurePredicate(AnimationState event) {
		if (!animationprocedure.equals("empty") && event.getController().getAnimationState() == AnimationController.State.STOPPED || (!this.animationprocedure.equals(prevAnim) && !this.animationprocedure.equals("empty"))) {
			if (!this.animationprocedure.equals(prevAnim))
				event.getController().forceAnimationReset();
			event.getController().setAnimation(RawAnimation.begin().thenPlay(this.animationprocedure));
			if (event.getController().getAnimationState() == AnimationController.State.STOPPED) {
				this.animationprocedure = "empty";
				event.getController().forceAnimationReset();
			}
		} else if (animationprocedure.equals("empty")) {
			prevAnim = "empty";
			return PlayState.STOP;
		}
		prevAnim = this.animationprocedure;
		return PlayState.CONTINUE;
	}

	@Override
	protected void tickDeath() {
		++this.deathTime;
		if (this.deathTime == 20) {
			this.remove(Drone1Entity.RemovalReason.KILLED);
			this.dropExperience();
		}
	}

	public String getSyncedAnimation() {
		return this.entityData.get(ANIMATION);
	}

	public void setAnimation(String animation) {
		this.entityData.set(ANIMATION, animation);
	}

	@Override
	public void registerControllers(AnimatableManager.ControllerRegistrar data) {
		data.add(new AnimationController<>(this, "movement", 4, this::movementPredicate));
		data.add(new AnimationController<>(this, "procedure", 4, this::procedurePredicate));
	}

	@Override
	public AnimatableInstanceCache getAnimatableInstanceCache() {
		return this.cache;
	}
}
