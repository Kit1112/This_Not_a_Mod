
package net.code.thisnotamod.entity;

import software.bernie.geckolib.util.GeckoLibUtil;
import software.bernie.geckolib.core.object.PlayState;
import software.bernie.geckolib.core.animation.RawAnimation;
import software.bernie.geckolib.core.animation.AnimationState;
import software.bernie.geckolib.core.animation.AnimationController;
import software.bernie.geckolib.core.animation.AnimatableManager;
import software.bernie.geckolib.core.animatable.instance.AnimatableInstanceCache;
import software.bernie.geckolib.animatable.GeoEntity;

import org.checkerframework.checker.units.qual.m;

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
import net.minecraft.util.RandomSource;
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

import java.util.List;
import java.util.EnumSet;
import java.util.ArrayList;

public class KerfuOmegaEntity extends PathfinderMob implements GeoEntity {
	public static final EntityDataAccessor<Boolean> SHOOT = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.BOOLEAN);
	public static final EntityDataAccessor<String> ANIMATION = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> TEXTURE = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_kerfu = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<String> DATA_serverList = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.STRING);
	public static final EntityDataAccessor<Boolean> DATA_patroul = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.BOOLEAN);
	public static final EntityDataAccessor<Boolean> DATA_DATA_idle = SynchedEntityData.defineId(KerfuOmegaEntity.class, EntityDataSerializers.BOOLEAN);
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
		this.entityData.define(DATA_patroul, false);
		this.entityData.define(DATA_DATA_idle, false);
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
			// === СЃРѕСЃС‚РѕСЏРЅРёРµ ===
			private BlockPos currentTarget = null;
			private boolean lastHadTarget = false;
			private String lastServerList = "";
			// === РЅР°РІРёРіР°С†РёСЏ/Р°РЅС‚Рё-Р·Р°СЃС‚СЂРµРІР°РЅРёРµ ===
			private int failPathTicks = 0; // РЅР°РІРёРіР°С†РёСЏ РЅРµ СЃС‚Р°СЂС‚СѓРµС‚/РЅРµ РёРґС‘С‚
			private int stuckTicks = 0; // СЃС‚РѕРёРј РЅР° РјРµСЃС‚Рµ
			private int pathNullTicks = 0; // РїРѕРґСЂСЏРґ createPath == null
			private Vec3 lastPos = null;
			// === СЂРµРјРѕРЅС‚/Р°РЅРёРјР°С†РёСЏ ===
			private int repairCooldownTicks = 0; // РѕР±С‰РµРµ РІСЂРµРјСЏ В«СЃРёРґРµРЅРёСЏВ»
			private int repairDelayTicks = 0; // Р·Р°РґРµСЂР¶РєР° РїРµСЂРµРґ РїСЂРёРјРµРЅРµРЅРёРµРј СЂРµРјРѕРЅС‚Р°
			private boolean animationStarted = false;// С‡С‚РѕР±С‹ Р°РЅРёРјР°С†РёСЏ Р·Р°РїСѓСЃРєР°Р»Р°СЃСЊ СЂРѕРІРЅРѕ 1 СЂР°Р·
			private boolean repairApplied = false; // С‡С‚РѕР±С‹ СЂРµРјРѕРЅС‚ РїСЂРёРјРµРЅСЏР»СЃСЏ 1 СЂР°Р·
			private BlockPos removeAfterCooldownPos = null; // РєР°РєСѓСЋ С‚РѕС‡РєСѓ СѓРґР°Р»РёС‚СЊ РёР· СЃРїРёСЃРєР° РџРћРЎР›Р• РѕР¶РёРґР°РЅРёСЏ
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
				// РёРіРЅРѕСЂРёСЂСѓРµРј С„Р»Р°Рі РїРѕРєРѕСЏ вЂ” СЂРµРјРѕРЅС‚ РґРѕР»Р¶РµРЅ СѓРјРµС‚СЊ СЃС‚Р°СЂС‚РѕРІР°С‚СЊ РёР· "РѕР¶РёРґР°РЅРёСЏ"
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.equals(lastServerList)) {
					lastServerList = list;
				}
				return (list != null && !list.isEmpty()) || repairCooldownTicks > 0 || currentTarget != null || removeAfterCooldownPos != null;
			}

			@Override
			public boolean canContinueToUse() {
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				if (idle != null && idle)
					return false; // РЅРµ РїСЂРѕРґРѕР»Р¶Р°РµРј СЂР°Р±РѕС‚Р°С‚СЊ РІ СЂРµР¶РёРјРµ РїРѕРєРѕСЏ
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				// Р”РµСЂР¶РёРј goal Р°РєС‚РёРІРЅС‹Рј, РїРѕРєР° РёРґС‘С‚ РєСѓР»РґР°СѓРЅ/СѓРґР°Р»РµРЅРёРµ, РґР°Р¶Рµ РµСЃР»Рё СЃРїРёСЃРѕРє СѓР¶Рµ РїСѓСЃС‚
				return (list != null && !list.isEmpty()) || currentTarget != null || repairCooldownTicks > 0 || removeAfterCooldownPos != null;
			}

			@Override
			public void start() {
				mob.getEntityData().set(KerfuOmegaEntity.DATA_DATA_idle, false);
				failPathTicks = 0;
				stuckTicks = 0;
				pathNullTicks = 0;
				lastPos = mob.position();
				// РѕС‚РєР»СЋС‡Р°РµРј РїР°С‚СЂСѓР»СЊ РЅР° РІСЂРµРјСЏ РІС‹РїРѕР»РЅРµРЅРёСЏ СЂРµРјРѕРЅС‚РЅРѕР№ С†РµР»Рё
				mob.getEntityData().set(KerfuOmegaEntity.DATA_patroul, false);
				// Р•СЃР»Рё РЅРµ РІ РєСѓР»РґР°СѓРЅРµ Рё РЅРµС‚ Р°РєС‚РёРІРЅРѕР№ С†РµР»Рё вЂ” РІС‹Р±РµСЂРµРј РµС‘
				if (repairCooldownTicks <= 0 && currentTarget == null) {
					selectNextTarget();
				}
			}

			@Override
			public void stop() {
				mob.getNavigation().stop();
			}

			@Override
			public void tick() {
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				if (idle != null && idle) {
					mob.getNavigation().stop();
					return;
				}
				// === Р¤РђР—Рђ РћР–РР”РђРќРРЇ / РђРќРРњРђР¦РР РџРћРЎР›Р• Р Р•РњРћРќРўРђ ===
				if (repairCooldownTicks > 0) {
					// Р’ СЂРµР¶РёРјРµ РѕР¶РёРґР°РЅРёСЏ СЃС‚РѕРёРј Рё РЅРёС‡РµРіРѕ РЅРµ РґРµР»Р°РµРј
					mob.getNavigation().stop();
					// Р—Р°РїСѓСЃРєР°РµРј Р°РЅРёРјР°С†РёСЋ РѕРґРёРЅ СЂР°Р·
					if (!animationStarted) {
						mob.setAnimation("serverFixNormal_No");
						animationStarted = true;
					}
					// РћС‚СЃС‡РёС‚С‹РІР°РµРј Р·Р°РґРµСЂР¶РєСѓ СЂРµРјРѕРЅС‚Р° Рё РїСЂРёРјРµРЅСЏРµРј РµРіРѕ СЂРѕРІРЅРѕ РѕРґРёРЅ СЂР°Р· С‡РµСЂРµР· 30 С‚РёРєРѕРІ
					if (!repairApplied && repairDelayTicks > 0) {
						repairDelayTicks--;
						if (repairDelayTicks == 0 && removeAfterCooldownPos != null) {
							applyRepairAt(removeAfterCooldownPos);
							repairApplied = true;
						}
					}
					// РћС‚СЃС‡РёС‚С‹РІР°РµРј РѕР±С‰РёР№ РєСѓР»РґР°СѓРЅ
					repairCooldownTicks--;
					if (repairCooldownTicks == 0) {
						// РђРЅРёРјР°С†РёСЏ С‚РѕС‡РЅРѕ РґРѕРёРіСЂР°Р»Р°
						mob.setAnimation("empty");
						animationStarted = false;
						// РўРµРїРµСЂСЊ (Рё С‚РѕР»СЊРєРѕ С‚РµРїРµСЂСЊ) СѓРґР°Р»СЏРµРј С†РµР»СЊ РёР· СЃРїРёСЃРєР°, РµСЃР»Рё РѕРЅР° Р±С‹Р»Р°
						if (removeAfterCooldownPos != null) {
							removePosFromList(removeAfterCooldownPos);
							removeAfterCooldownPos = null;
						}
						// РЎР±СЂР°СЃС‹РІР°РµРј С„Р»Р°РіРё СЂРµРјРѕРЅС‚Р°
						repairApplied = false;
						repairDelayTicks = 0;
						// РЎР±СЂР°СЃС‹РІР°РµРј С†РµР»СЊ Рё Р±РµСЂС‘Рј СЃР»РµРґСѓСЋС‰СѓСЋ, РµСЃР»Рё РµСЃС‚СЊ
						currentTarget = null;
						lastHadTarget = false;
						selectNextTarget();
					}
					return;
				}
				// === Р•РЎР›Р Р¦Р•Р›Р РќР•Рў вЂ” РџР РћР‘РЈР•Рњ Р’Р—РЇРўР¬ ===
				if (currentTarget == null) {
					if (lastHadTarget) {
						lastHadTarget = false;
					}
					selectNextTarget();
					return;
				} else if (!lastHadTarget) {
					lastHadTarget = true;
				}
				// === РџР РћР‘РЈР•Рњ РџРћРЎРўР РћРРўР¬ РџРЈРўР¬ ===
				Path path = mob.getNavigation().createPath(currentTarget, 0);
				if (path == null) {
					pathNullTicks++;
					// РґР°С‘Рј С€Р°РЅСЃ РЅРµСЃРєРѕР»СЊРєРѕ С‚РёРєРѕРІ вЂ” РёРЅРѕРіРґР° РїСѓС‚СЊ РЅРµ СЃС‚СЂРѕРёС‚СЃСЏ РїСЂСЏРјРѕ РЅР° РјРµСЃС‚Рµ
					if (pathNullTicks > 40) { // ~2 СЃРµРєСѓРЅРґС‹
						// СЃС‡РёС‚Р°РµРј С†РµР»СЊ РЅРµРґРѕСЃС‚РёР¶РёРјРѕР№ вЂ” СѓРґР°Р»СЏРµРј СЃСЂР°Р·Сѓ Рё Р±РµСЂС‘Рј СЃР»РµРґСѓСЋС‰СѓСЋ
						removePosFromList(currentTarget);
						resetNavState();
						currentTarget = null;
						selectNextTarget();
						return;
					}
				} else {
					pathNullTicks = 0;
				}
				// Р”РІРёРіР°РµРјСЃСЏ Рє С†РµРЅС‚СЂСѓ Р±Р»РѕРєР° (РєР°Рє Сѓ С‚РµР±СЏ Р±С‹Р»Рѕ вЂ” РєРѕРѕСЂРґРёРЅР°С‚Р°РјРё)
				mob.getNavigation().moveTo(currentTarget.getX() + 0.5, currentTarget.getY(), currentTarget.getZ() + 0.5, 1.0);
				// Р•СЃР»Рё РЅР°РІРёРіР°С†РёСЏ РЅРµ СЃС‚Р°СЂС‚СѓРµС‚ вЂ” Р¶РґС‘Рј РґРѕ 1 СЃРµРєСѓРЅРґС‹ Рё СЃРєРёРїР°РµРј С†РµР»СЊ
				if (!mob.getNavigation().isInProgress()) {
					failPathTicks++;
					if (failPathTicks > 20) {
						removePosFromList(currentTarget);
						resetNavState();
						currentTarget = null;
						selectNextTarget();
						return;
					}
				} else {
					failPathTicks = 0;
				}
				// РђРЅС‚Рё-Р·Р°СЃС‚СЂРµРІР°РЅРёРµ: РїРѕС‡С‚Рё РЅРµ РґРІРёРіР°РµРјСЃСЏ вЂ” СЃС‡РёС‚Р°РµРј Р·Р°СЃС‚СЂСЏР»Рё
				Vec3 now = mob.position();
				if (lastPos != null && now.distanceToSqr(lastPos) < 0.0009) { // ~0.03 Р±Р»РѕРєР°
					stuckTicks++;
					if (stuckTicks > 40) { // ~2 СЃРµРєСѓРЅРґС‹
						removePosFromList(currentTarget);
						resetNavState();
						currentTarget = null;
						selectNextTarget();
						return;
					}
				} else {
					stuckTicks = 0;
				}
				lastPos = now;
				// === Р”РћРЎРўРР“Р›Р Р¦Р•Р›Р? (РєР°Рє РІ С‚РІРѕРµР№ РІРµСЂСЃРёРё) ===
				if (mob.blockPosition().closerThan(currentTarget, 1.5)) {
					// РќР• РїСЂРёРјРµРЅСЏРµРј СЂРµРјРѕРЅС‚ СЃСЂР°Р·Сѓ!
					// РЎРЅР°С‡Р°Р»Р° Р·Р°РїСѓСЃРєР°РµРј СЂРµР¶РёРј РѕР¶РёРґР°РЅРёСЏ/Р°РЅРёРјР°С†РёРё Рё С‚РѕР»СЊРєРѕ С‡РµСЂРµР· 30 С‚РёРєРѕРІ РїРѕС‡РёРЅРёРј Р±Р»РѕРє
					// Р—Р°РїРѕРјРЅРёРј РїРѕР·РёС†РёСЋ РґР»СЏ СЂРµРјРѕРЅС‚Р°/СѓРґР°Р»РµРЅРёСЏ
					removeAfterCooldownPos = currentTarget;
					// Р—Р°РїСѓСЃРєР°РµРј 60 С‚РёРєРѕРІ РѕР¶РёРґР°РЅРёСЏ / Р°РЅРёРјР°С†РёРё
					repairCooldownTicks = 75;
					repairDelayTicks = 62; // РїРѕС‡РёРЅРєР° С‡РµСЂРµР· 30 С‚РёРєРѕРІ РїРѕСЃР»Рµ СЃС‚Р°СЂС‚Р° Р°РЅРёРјР°С†РёРё
					repairApplied = false;
					animationStarted = false;
					// РћСЃС‚Р°РЅР°РІР»РёРІР°РµРј РЅР°РІРёРіР°С†РёСЋ Рё РѕСЃРІРѕР±РѕР¶РґР°РµРј С‚РµРєСѓС‰СѓСЋ С†РµР»СЊ (С‡С‚РѕР±С‹ РЅРµ РґРІРёРіР°С‚СЊСЃСЏ)
					mob.getNavigation().stop();
					currentTarget = null;
					lastHadTarget = false;
					return;
				}
			}

			// ===========================
			// Р’РЎРџРћРњРћР“РђРўР•Р›Р¬РќРћР•
			// ===========================
			private void resetNavState() {
				mob.getNavigation().stop();
				failPathTicks = 0;
				stuckTicks = 0;
				pathNullTicks = 0;
				lastPos = mob.position();
			}

			private void selectNextTarget() {
				// Р•СЃР»Рё РёРґС‘С‚ РєСѓР»РґР°СѓРЅ вЂ” РЅРµ РІС‹Р±РёСЂР°РµРј РЅРѕРІСѓСЋ
				if (repairCooldownTicks > 0 || removeAfterCooldownPos != null)
					return;
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				List<BlockPos> poses = parseServerList(list);
				if (poses.isEmpty()) {
					currentTarget = null;
					return;
				}
				currentTarget = poses.get(0); // Р±РµСЂС‘Рј РїРµСЂРІСѓСЋ
			}

			private void removePosFromList(BlockPos pos) {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				List<BlockPos> poses = parseServerList(list);
				poses.removeIf(p -> p.equals(pos));
				mob.getEntityData().set(KerfuOmegaEntity.DATA_serverList, formatServerList(poses));
			}

			private void applyRepairAt(BlockPos pos) {
				LevelAccessor world = mob.level();
				if (world instanceof Level level) {
					int x = pos.getX();
					int y = pos.getY();
					int z = pos.getZ();
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
				}
			}

			private static List<BlockPos> parseServerList(String list) {
				List<BlockPos> out = new ArrayList<>();
				if (list == null || list.isEmpty())
					return out;
				java.util.regex.Matcher m = java.util.regex.Pattern.compile("\\(([^)]+)\\)").matcher(list);
				while (m.find()) {
					String[] xyz = m.group(1).split(",");
					if (xyz.length == 3) {
						try {
							int x = (int) Math.round(Double.parseDouble(xyz[0].trim()));
							int y = (int) Math.round(Double.parseDouble(xyz[1].trim()));
							int z = (int) Math.round(Double.parseDouble(xyz[2].trim()));
							out.add(new BlockPos(x, y, z));
						} catch (NumberFormatException ignored) {
						}
					}
				}
				return out;
			}

			private static String formatServerList(List<BlockPos> poses) {
				if (poses.isEmpty())
					return "";
				StringBuilder sb = new StringBuilder();
				for (BlockPos p : poses) {
					sb.append("(").append(p.getX()).append(", ").append(p.getY()).append(", ").append(p.getZ()).append(")");
				}
				return sb.toString();
			}
		});
		this.goalSelector.addGoal(1, new Goal() {
			private final KerfuOmegaEntity mob = KerfuOmegaEntity.this;
			// === состояние патруля ===
			private BlockPos patrolAnchor = null; // где стартовали патруль
			private BlockPos patrolTarget = null; // текущая точка внутри радиуса
			private static final int RADIUS = 30; // радиус патруля
			private int waitTicks = 0; // пауза между точками (для естественности)
			// анти-застревание
			private int stuckTicks = 0;
			private Vec3 lastPos = null;
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
				Boolean pat = mob.getEntityData().get(KerfuOmegaEntity.DATA_patroul);
				return pat != null && pat; // стартуем, когда процедура установила DATA_patroul = true
			}

			@Override
			public boolean canContinueToUse() {
				Boolean pat = mob.getEntityData().get(KerfuOmegaEntity.DATA_patroul);
				return pat != null && pat; // держим goal активным пока флаг включён
			}

			@Override
			public void start() {
				// привязываемся к текущей позиции как к "базе патруля"
				patrolAnchor = mob.blockPosition();
				patrolTarget = null;
				waitTicks = 0;
				stuckTicks = 0;
				lastPos = mob.position();
			}

			@Override
			public void stop() {
				mob.getNavigation().stop();
				patrolAnchor = null;
				patrolTarget = null;
				lastPos = null;
				stuckTicks = 0;
				waitTicks = 0;
			}

			@Override
			public void tick() {
				// если идёт "естественная пауза" между точками — просто стоим
				if (waitTicks > 0) {
					mob.getNavigation().stop();
					waitTicks--;
					return;
				}
				// если цели нет или мы близко — выбираем новую точку внутри радиуса
				if (patrolTarget == null || mob.blockPosition().closerThan(patrolTarget, 1.5)) {
					patrolTarget = pickRandomTargetWithinRadius();
					// небольшая пауза перед стартом движения к новой точке
					waitTicks = 5 + mob.getRandom().nextInt(10); // 5..14 тиков
					mob.getNavigation().stop();
					return;
				}
				// пробуем двигаться к цели
				mob.getNavigation().moveTo(patrolTarget.getX() + 0.5, patrolTarget.getY(), patrolTarget.getZ() + 0.5, 0.7);
				// простое анти-застревание
				Vec3 now = mob.position();
				if (lastPos != null && now.distanceToSqr(lastPos) < 0.0009) { // ~0.03 блока
					stuckTicks++;
					if (stuckTicks > 40) { // ~2 секунды стоим на месте — сменим точку
						patrolTarget = pickRandomTargetWithinRadius();
						stuckTicks = 0;
						mob.getNavigation().stop();
						return;
					}
				} else {
					stuckTicks = 0;
				}
				lastPos = now;
			}

			// ===========================
			// ВСПОМОГАТЕЛЬНОЕ
			// ===========================
			private BlockPos pickRandomTargetWithinRadius() {
				if (patrolAnchor == null)
					return null;
				LevelAccessor world = mob.level();
				RandomSource rnd = mob.getRandom();
				// делаем несколько попыток найти проходимую точку
				for (int i = 0; i < 12; i++) {
					// равномерно по кругу
					double angle = rnd.nextDouble() * Math.PI * 2.0;
					int dist = 5 + rnd.nextInt(RADIUS - 4); // 5..30
					int dx = (int) Math.round(Math.cos(angle) * dist);
					int dz = (int) Math.round(Math.sin(angle) * dist);
					int x = patrolAnchor.getX() + dx;
					int z = patrolAnchor.getZ() + dz;
					// подбираем высоту: ставим на поверхность
					int y;
					if (world instanceof Level level) {
						y = level.getHeight(net.minecraft.world.level.levelgen.Heightmap.Types.MOTION_BLOCKING_NO_LEAVES, x, z);
					} else {
						y = patrolAnchor.getY();
					}
					BlockPos candidate = new BlockPos(x, y, z);
					// обязательно в пределах радиуса (с учётом округлений)
					if (candidate.distManhattan(patrolAnchor) > RADIUS * 2)
						continue; // грубая отсечка
					if (candidate.closerThan(patrolAnchor, RADIUS + 0.5)) {
						// проверяем, что до точки хотя бы строится путь
						Path path = mob.getNavigation().createPath(candidate, 0);
						if (path != null) {
							return candidate;
						}
					}
				}
				// fallback: вернуться к центру/якорю
				return patrolAnchor;
			}
		});
		this.goalSelector.addGoal(2, new Goal() {
			private final KerfuOmegaEntity mob = KerfuOmegaEntity.this;
			private Player target;
			// === настройки ===
			private static final int STUCK_TICKS_THRESHOLD = 100; // сколько тиков терпим "пилежку"
			private static final double MOVE_SPEED = 1.2;
			private static final double HORIZ_EPS = 0.03; // почти нет движения по XZ за тик
			private static final double JUMP_Y_EPS = 0.10; // заметный скачок по Y
			// === анти-застревание ===
			private double lastX, lastY, lastZ;
			private int noProgressTicks = 0;
			private int jumpOnSpotTicks = 0;
			private int collisionTicks = 0;
			private int rerouteCooldown = 0;
			private float originalUpStep = 0.6F;
			{
				this.setFlags(EnumSet.of(Goal.Flag.MOVE));
			}

			@Override
			public boolean canUse() {
				// Не использовать эту цель, если есть задачи на ремонт
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.isEmpty())
					return false;
				// Не использовать, если включён патруль или покой
				Boolean pat = mob.getEntityData().get(KerfuOmegaEntity.DATA_patroul);
				if (pat != null && pat)
					return false;
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				if (idle != null && idle)
					return false;
				target = mob.level().getNearestPlayer(mob, 128);
				return target != null;
			}

			@Override
			public boolean canContinueToUse() {
				String list = mob.getEntityData().get(KerfuOmegaEntity.DATA_serverList);
				if (list != null && !list.isEmpty())
					return false;
				Boolean pat = mob.getEntityData().get(KerfuOmegaEntity.DATA_patroul);
				if (pat != null && pat)
					return false;
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				if (idle != null && idle)
					return false;
				return target != null && target.isAlive() && mob.distanceToSqr(target) > 4;
			}

			@Override
			public void start() {
				// выключаем другие режимы
				mob.getEntityData().set(KerfuOmegaEntity.DATA_DATA_idle, false);
				mob.getEntityData().set(KerfuOmegaEntity.DATA_patroul, false);
				mob.getEntityData().set(KerfuOmegaEntity.DATA_serverList, "");
				mob.getNavigation().stop();
				mob.setAnimation("empty");
				originalUpStep = mob.getStepHeight();
				// ищем игрока и сразу стартуем путь
				target = mob.level().getNearestPlayer(mob, 128);
				if (target != null) {
					double tx = target.getX();
					double ty = target.getY();
					double tz = target.getZ();
					mob.getNavigation().moveTo(tx, ty, tz, MOVE_SPEED);
				}
			}

			@Override
			public void stop() {
				target = null;
				mob.getNavigation().stop();
				mob.setMaxUpStep(originalUpStep);
			}

			@Override
			public void tick() {
				if (target != null) {
					mob.getLookControl().setLookAt(target, 30.0F, 30.0F);
					if (mob.getNavigation().isDone()) {
						mob.getNavigation().moveTo(target, MOVE_SPEED);
					}
				}
				// ---- детект застревания ----
				double dx = mob.getX() - lastX;
				double dz = mob.getZ() - lastZ;
				double dy = mob.getY() - lastY;
				double horiz = Math.sqrt(dx * dx + dz * dz);
				if (horiz < HORIZ_EPS) {
					noProgressTicks++;
					if (Math.abs(dy) > JUMP_Y_EPS) {
						jumpOnSpotTicks++;
					}
				} else {
					noProgressTicks = 0;
					jumpOnSpotTicks = 0;
				}
				if (mob.horizontalCollision) {
					collisionTicks++;
				} else if (collisionTicks > 0) {
					collisionTicks--;
				}
				lastX = mob.getX();
				lastY = mob.getY();
				lastZ = mob.getZ();
				if (rerouteCooldown > 0) {
					rerouteCooldown--;
					return;
				}
				boolean stuckByNoProgress = noProgressTicks >= STUCK_TICKS_THRESHOLD;
				boolean stuckByJumping = jumpOnSpotTicks >= STUCK_TICKS_THRESHOLD;
				boolean stuckByCollision = collisionTicks >= STUCK_TICKS_THRESHOLD / 2;
				if (stuckByNoProgress || stuckByJumping || stuckByCollision) {
					mob.setMaxUpStep(Math.max(mob.getStepHeight(), 1.1F));
					changeRoute();
					noProgressTicks = 0;
					jumpOnSpotTicks = 0;
					collisionTicks = 0;
					rerouteCooldown = 20; // 1 секунда
				}
			}

			private void changeRoute() {
				if (target != null) {
					double vx = target.getX() - mob.getX();
					double vz = target.getZ() - mob.getZ();
					double len = Math.max(1e-4, Math.sqrt(vx * vx + vz * vz));
					double px = -vz / len;
					double pz = vx / len;
					if (mob.getRandom().nextBoolean()) {
						px = -px;
						pz = -pz;
					}
					int dist = 6 + mob.getRandom().nextInt(5);
					if (tryMoveTo(mob.getX() + px * dist, mob.getY(), mob.getZ() + pz * dist))
						return;
					double ax = -vx / len, az = -vz / len;
					dist = 8 + mob.getRandom().nextInt(5);
					if (tryMoveTo(mob.getX() + ax * dist, mob.getY(), mob.getZ() + az * dist))
						return;
				}
				net.minecraft.world.phys.Vec3 rnd = net.minecraft.world.entity.ai.util.LandRandomPos.getPos(mob, 12, 3);
				if (rnd != null && tryMoveTo(rnd.x, rnd.y, rnd.z))
					return;
				double rx = (mob.getRandom().nextDouble() - 0.5) * 14.0;
				double rz = (mob.getRandom().nextDouble() - 0.5) * 14.0;
				tryMoveTo(mob.getX() + rx, mob.getY(), mob.getZ() + rz);
			}

			private boolean tryMoveTo(double x, double y, double z) {
				net.minecraft.core.BlockPos pos = net.minecraft.core.BlockPos.containing(x, y, z);
				net.minecraft.world.level.pathfinder.Path path = mob.getNavigation().createPath(pos, 0);
				if (path != null) {
					mob.getNavigation().moveTo(path, MOVE_SPEED);
					return true;
				}
				return false;
			}
		});
		this.goalSelector.addGoal(3, new Goal() {
			private final KerfuOmegaEntity mob = KerfuOmegaEntity.this;
			{
				this.setFlags(EnumSet.of(Goal.Flag.MOVE, Goal.Flag.LOOK));
			}

			@Override
			public boolean canUse() {
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				return idle != null && idle; // Р°РєС‚РёРІРёСЂСѓРµС‚СЃСЏ, РєРѕРіРґР° РІРєР»СЋС‡С‘РЅ С„Р»Р°Рі РїРѕРєРѕСЏ
			}

			@Override
			public boolean canContinueToUse() {
				Boolean idle = mob.getEntityData().get(KerfuOmegaEntity.DATA_DATA_idle);
				return idle != null && idle; // РґРµСЂР¶РёРј goal, РїРѕРєР° С„Р»Р°Рі РІРєР»СЋС‡С‘РЅ
			}

			@Override
			public void start() {
				mob.getPersistentData().putBoolean("followMode", false);
				mob.getNavigation().stop();
				mob.setAnimation("idle"); // РµСЃР»Рё С…РѕС‡РµС€СЊ, С‡С‚РѕР±С‹ СЃРёРґРµР»/СЃС‚РѕСЏР» РІ Р°РЅРёРјР°С†РёРё
			}

			@Override
			public void tick() {
				// РЅРёС‡РµРіРѕ РЅРµ РґРµР»Р°РµРј вЂ” СЃС‚РѕРёРј
				mob.getNavigation().stop();
			}

			@Override
			public void stop() {
				mob.setAnimation("empty");
			}
		});
		this.goalSelector.addGoal(4, new RandomStrollGoal(this, 1));
		this.goalSelector.addGoal(1, new FloatGoal(this));
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
		compound.putBoolean("Datapatroul", this.entityData.get(DATA_patroul));
		compound.putBoolean("DataDATA_idle", this.entityData.get(DATA_DATA_idle));
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
		if (compound.contains("Datapatroul"))
			this.entityData.set(DATA_patroul, compound.getBoolean("Datapatroul"));
		if (compound.contains("DataDATA_idle"))
			this.entityData.set(DATA_DATA_idle, compound.getBoolean("DataDATA_idle"));
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
			if (this.isShiftKeyDown()) {
				return event.setAndContinue(RawAnimation.begin().thenLoop("pat_simple"));
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
