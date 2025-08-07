
package net.code.thisnotamod.entity;

import software.bernie.geckolib.util.GeckoLibUtil;
import software.bernie.geckolib.core.object.PlayState;
import software.bernie.geckolib.core.animation.RawAnimation;
import software.bernie.geckolib.core.animation.AnimationState;
import software.bernie.geckolib.core.animation.AnimationController;
import software.bernie.geckolib.core.animation.AnimatableManager;
import software.bernie.geckolib.core.animatable.instance.AnimatableInstanceCache;
import software.bernie.geckolib.animatable.GeoEntity;

import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.network.PlayMessages;
import net.minecraftforge.network.NetworkHooks;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.level.pathfinder.Path;
import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.projectile.ThrownPotion;
import net.minecraft.world.entity.projectile.AbstractArrow;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.ai.goal.RandomStrollGoal;
import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.ai.goal.FloatGoal;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.Pose;
import net.minecraft.world.entity.PathfinderMob;
import net.minecraft.world.entity.MobType;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.EntityDimensions;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.AreaEffectCloud;
import net.minecraft.world.damagesource.DamageTypes;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.InteractionHand;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.syncher.SynchedEntityData;
import net.minecraft.network.syncher.EntityDataSerializers;
import net.minecraft.network.syncher.EntityDataAccessor;
import net.minecraft.network.protocol.game.ClientGamePacketListener;
import net.minecraft.network.protocol.Packet;
import net.minecraft.nbt.StringTag;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.BlockPos;

import net.code.thisnotamod.procedures.KerfuRBMProcedure;
import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.code.thisnotamod.init.ThisnotamodModEntities;

import java.util.EnumSet;

public class KerfuOmegaEntity extends PathfinderMob implements GeoEntity {
	public static final EntityDataAccessor<Boolean> SHOOT = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.BOOLEAN);
	public static final EntityDataAccessor<String> ANIMATION = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> TEXTURE = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_kerfu = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_serverList = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	private final AnimatableInstanceCache cache = GeckoLibUtil.createInstanceCache(this);
	private boolean swinging;
	private boolean lastloop;
	private long lastSwing;
	public String animationprocedure = "empty";

	public KerfuOmegaEntity(PlayMessages.SpawnEntity packet, Level world) {
		this(ThisnotamodModEntities.KERFU_OMEGA.get(), world);
	}

	public KerfuOmegaEntity(EntityType<KerfuOmegaEntity> type, Level world) {
		super(type, world);
		xpReward = 0;
		setNoAi(false);
		setMaxUpStep(0.6f);
		setPersistenceRequired();
	}

	@Override
	protected void defineSynchedData() {
		super.defineSynchedData();
		this.entityData.define(SHOOT, false);
		this.entityData.define(ANIMATION, "undefined");
		this.entityData.define(TEXTURE, "omega_kerfu_blue");
		this.entityData.define(DATA_kerfu, "kerfu");
		this.entityData.define(DATA_serverList, "");
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
	protected void registerGoals() {
		super.registerGoals();
		this.goalSelector.addGoal(0, new Goal() {
			private final KerfuOmegaEntity mob = KerfuOmegaEntity.this;
			private BlockPos currentTarget = null;
			private boolean lastHadTarget = false;
			private String lastServerList = "";
			private int repairCooldownTicks = 0;
			{
				this.setFlags(EnumSet.of(Goal.Flag.MOVE, Goal.Flag.LOOK));
			}

			@Override
			public boolean isInterruptable() {
				return true;
			}

			@Override
			public boolean requiresUpdateEveryTick() {
				return true;
			}

			@Override
			public boolean canUse() {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.equals(lastServerList)) {
					lastServerList = list;
					/*
					if (!mob.level().isClientSide() && mob.level().getServer() != null) {
						mob.level().getServer().getPlayerList().broadcastSystemMessage(
							Component.literal("[KERFU DEBUG] canUse() → " + list), false);
					}
					*/
				}
				return list != null && !list.isEmpty();
			}

			@Override
			public boolean canContinueToUse() {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				// System.out.println("[KERFU DEBUG] canContinueToUse(): " + list);
				return list != null && !list.isEmpty();
			}

			@Override
			public void start() {
				// System.out.println("[KERFU DEBUG] start() был вызван");
				selectNextTarget();
				/*
				System.out.println("[KERFU DEBUG] Navigation class: " + mob.getNavigation().getClass().getName());
				System.out.println("[KERFU DEBUG] onGround=" + mob.onGround() +
					", speed=" + mob.getAttributeValue(Attributes.MOVEMENT_SPEED));
				*/
				/*
				if (currentTarget != null && !mob.level().isClientSide() && mob.level().getServer() != null) {
					mob.level().getServer().getPlayerList().broadcastSystemMessage(
						Component.literal("[KERFU DEBUG] start() → иду к " + currentTarget.toShortString()), false);
				}
				*/
			}

			@Override
			public void tick() {
				// System.out.println("[KERFU DEBUG] tick() вызывается");
				if (repairCooldownTicks > 0) {
					repairCooldownTicks--;
					mob.getNavigation().stop();
					if (repairCooldownTicks == 59) {
						mob.setAnimation("sits");
					}
					if (repairCooldownTicks == 0) {
						mob.setAnimation("empty");
						selectNextTarget();
					}
					return;
				}
				if (currentTarget == null) {
					if (lastHadTarget) {
						lastHadTarget = false;
						/*
						if (!mob.level().isClientSide() && mob.level().getServer() != null) {
							mob.level().getServer().getPlayerList().broadcastSystemMessage(
								Component.literal("[KERFU DEBUG] tick() → цель потеряна"), false);
						}
						*/
					}
					return;
				} else if (!lastHadTarget) {
					lastHadTarget = true;
					/*
					if (!mob.level().isClientSide() && mob.level().getServer() != null) {
						mob.level().getServer().getPlayerList().broadcastSystemMessage(
							Component.literal("[KERFU DEBUG] tick() → цель получена: " + currentTarget.toShortString()), false);
					}
					*/
				}
				Path path = mob.getNavigation().createPath(currentTarget, 0);
				/*
				System.out.println("[KERFU DEBUG] created path = " + path);
				System.out.println("BLOCK UNDER MOB: " + mob.level().getBlockState(mob.blockPosition().below()));
				System.out.println("BLOCK UNDER TARGET: " + mob.level().getBlockState(currentTarget.below()));
				*/
				mob.getNavigation().moveTo(currentTarget.getX() + 0.5, currentTarget.getY(), currentTarget.getZ() + 0.5, 1.0);
				if (!mob.getNavigation().isInProgress() && !mob.level().isClientSide() && mob.level().getServer() != null) {
					/*
					mob.level().getServer().getPlayerList().broadcastSystemMessage(
						Component.literal("[KERFU DEBUG] ❌ Навигация не стартовала к " + currentTarget.toShortString()), false);
					*/
				}
				if (mob.blockPosition().closerThan(currentTarget, 1.5)) {
					LevelAccessor world = mob.level();
					if (world instanceof Level level) {
						int x = currentTarget.getX();
						int y = currentTarget.getY();
						int z = currentTarget.getZ();
						int _value = 1;
						BlockPos _pos = new BlockPos(x, y, z);
						BlockState _bs = level.getBlockState(_pos);
						if (_bs.getBlock().getStateDefinition().getProperty("blockstate") instanceof IntegerProperty _prop && _prop.getPossibleValues().contains(_value)) {
							level.setBlock(_pos, _bs.setValue(_prop, _value), 3);
						}
						String key = new Vec3(x, y, z).toString().replace("(", "").replace(")", "");
						ThisnotamodModVariables.MapVariables.get(level).datamap1.remove(key);
						ThisnotamodModVariables.MapVariables.get(level).datamap1.put(key, StringTag.valueOf("enabled"));
						ThisnotamodModVariables.MapVariables.get(level).syncData(level);
						/*
						if (!level.isClientSide() && level.getServer() != null) {
							level.getServer().getPlayerList().broadcastSystemMessage(
								Component.literal("[KERFU DEBUG] ✅ Починил сервер по координатам: " + key), false);
						}
						*/
					}
					String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
					String target = "(" + currentTarget.getX() + ".0, " + currentTarget.getY() + ".0, " + currentTarget.getZ() + ".0)";
					String newList = list.replace(target, "").replace(")(", ")(");
					mob.getEntityData().set(KerfuOmegaEntity.DATA_serverList, newList);
					repairCooldownTicks = 60;
					currentTarget = null;
					lastHadTarget = false;
				}
			}

			private void selectNextTarget() {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list == null || list.isEmpty()) {
					currentTarget = null;
					return;
				}
				java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("\\(([^)]+)\\)").matcher(list);
				if (matcher.find()) {
					String[] xyz = matcher.group(1).split(",");
					if (xyz.length == 3) {
						try {
							int x = (int) Double.parseDouble(xyz[0].trim());
							int y = (int) Double.parseDouble(xyz[1].trim());
							int z = (int) Double.parseDouble(xyz[2].trim());
							currentTarget = new BlockPos(x, y, z);
							return;
						} catch (NumberFormatException ignored) {
						}
					}
				}
				currentTarget = null;
			}
		});
		this.goalSelector.addGoal(1, new Goal() {
			private final KerfuOmegaEntity mob = KerfuOmegaEntity.this;
			private Player target;
			{
				this.setFlags(EnumSet.of(Goal.Flag.MOVE));
			}

			@Override
			public boolean canUse() {
				// Не использовать эту цель, если есть задачи на ремонт
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.isEmpty())
					return false;
				target = mob.level().getNearestPlayer(mob, 128); // огромная дистанция
				return target != null;
			}

			@Override
			public boolean canContinueToUse() {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.isEmpty())
					return false;
				return target != null && target.isAlive() && mob.distanceToSqr(target) > 4;
			}

			@Override
			public void start() {
				mob.getNavigation().moveTo(target, 1.2);
			}

			@Override
			public void stop() {
				target = null;
				mob.getNavigation().stop();
			}

			@Override
			public void tick() {
				if (target != null) {
					mob.getLookControl().setLookAt(target, 30.0F, 30.0F);
					mob.getNavigation().moveTo(target, 1.2);
				}
			}
		});
		this.goalSelector.addGoal(1, new FloatGoal(this));
		this.goalSelector.addGoal(2, new RandomStrollGoal(this, 1));
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
	public SoundEvent getHurtSound(DamageSource ds) {
		return ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("thisnotamod:kerfu_meow"));
	}

	@Override
	public SoundEvent getDeathSound() {
		return ForgeRegistries.SOUND_EVENTS.getValue(new ResourceLocation("entity.generic.death"));
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
		compound.putString("Datakerfu", this.entityData.get(DATA_kerfu));
		compound.putString("DataserverList", this.entityData.get(DATA_serverList));
	}

	@Override
	public void readAdditionalSaveData(CompoundTag compound) {
		super.readAdditionalSaveData(compound);
		if (compound.contains("Texture"))
			this.setTexture(compound.getString("Texture"));
		if (compound.contains("Datakerfu"))
			this.entityData.set(DATA_kerfu, compound.getString("Datakerfu"));
		if (compound.contains("DataserverList"))
			this.entityData.set(DATA_serverList, compound.getString("DataserverList"));
	}

	@Override
	public InteractionResult mobInteract(Player sourceentity, InteractionHand hand) {
		ItemStack itemstack = sourceentity.getItemInHand(hand);
		InteractionResult retval = InteractionResult.sidedSuccess(this.level().isClientSide());
		super.mobInteract(sourceentity, hand);
		double x = this.getX();
		double y = this.getY();
		double z = this.getZ();
		Entity entity = this;
		Level world = this.level();

		KerfuRBMProcedure.execute(world, x, y, z, entity, sourceentity);
		return retval;
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
	public void aiStep() {
		super.aiStep();
		this.updateSwingTime();
	}

	public static void init() {
	}

	public static AttributeSupplier.Builder createAttributes() {
		AttributeSupplier.Builder builder = Mob.createMobAttributes();
		builder = builder.add(Attributes.MOVEMENT_SPEED, 0.3);
		builder = builder.add(Attributes.MAX_HEALTH, 0);
		builder = builder.add(Attributes.ARMOR, 0);
		builder = builder.add(Attributes.ATTACK_DAMAGE, 3);
		builder = builder.add(Attributes.FOLLOW_RANGE, 16);
		return builder;
	}

	private PlayState movementPredicate(AnimationState event) {
		if (this.animationprocedure.equals("empty")) {
			if ((event.isMoving() || !(event.getLimbSwingAmount() > -0.15F && event.getLimbSwingAmount() < 0.15F))

			) {
				return event.setAndContinue(RawAnimation.begin().thenLoop("walk"));
			}
			return event.setAndContinue(RawAnimation.begin().thenLoop("idle"));
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
			this.remove(KerfuOmegaEntity.RemovalReason.KILLED);
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
