package net.code.thisnotamod.entity;

import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.protocol.Packet;
import net.minecraft.network.syncher.EntityDataAccessor;
import net.minecraft.network.syncher.EntityDataSerializers;
import net.minecraft.network.syncher.SynchedEntityData;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobCategory;
import net.minecraft.world.level.Level;
import net.minecraftforge.network.NetworkHooks;
import net.minecraft.network.protocol.game.ClientGamePacketListener;
import net.minecraftforge.network.PlayMessages;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.code.thisnotamod.init.ThisnotamodModEntities;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.SpawnGroupData;
import net.minecraft.world.entity.MobSpawnType;
import net.minecraft.world.DifficultyInstance;
import net.minecraft.world.level.ServerLevelAccessor;
import net.minecraft.world.level.LevelAccessor;

public class ModTextDisplayEntity extends net.minecraft.world.entity.Mob {
    public enum BillboardMode { CENTER, FIXED;
        public static BillboardMode fromString(String s) {
            if (s == null) return CENTER;
            s = s.toLowerCase();
            if (s.equals("center")) return CENTER;
            return FIXED;
        }
    }

    private static final EntityDataAccessor<String> DATA_TEXT_JSON =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.STRING);
    private static final EntityDataAccessor<Boolean> DATA_SHADOW =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.BOOLEAN);
    private static final EntityDataAccessor<Integer> DATA_COLOR_ARGB =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.INT);
    private static final EntityDataAccessor<Integer> DATA_LINE_WIDTH =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.INT);
    private static final EntityDataAccessor<Float> DATA_SCALE =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.FLOAT);
    private static final EntityDataAccessor<Integer> DATA_BILLBOARD =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.INT);
    private static final EntityDataAccessor<Float> DATA_Y_OFFSET =
            SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.FLOAT);
    private static final EntityDataAccessor<Boolean> DATA_BG_ENABLED =
        SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.BOOLEAN);
private static final EntityDataAccessor<Integer> DATA_BG_COLOR_ARGB =
        SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.INT);
private static final EntityDataAccessor<Integer> DATA_BG_PADDING =
        SynchedEntityData.defineId(ModTextDisplayEntity.class, EntityDataSerializers.INT);


public ModTextDisplayEntity(PlayMessages.SpawnEntity packet, Level level) {
    this(ThisnotamodModEntities.MOD_TEXT_DISPLAY.get(), level);
    System.out.println("[ModTextDisplayEntity] ctor(packet)");
}


public ModTextDisplayEntity(EntityType<? extends ModTextDisplayEntity> type, Level level) {
    super(type, level); 
    System.out.println("[ModTextDisplayEntity] ctor(type)");
    this.setNoAi(true);
    this.setNoGravity(true);
    this.noPhysics = true;
}



@Override
protected void registerGoals() {
    // без AI, это ж блять визуализатор текста
}

@Override
public SpawnGroupData finalizeSpawn(ServerLevelAccessor world, DifficultyInstance difficulty, MobSpawnType reason, SpawnGroupData spawnData, CompoundTag dataTag) {
    System.out.println("[ModTextDisplayEntity] finalizeSpawn reason=" + reason + " at " + this.blockPosition());
    // Ничего не трогаем, просто не даём упасть
    return spawnData;
}

@Override
public boolean checkSpawnRules(LevelAccessor world, MobSpawnType reason) {
    // Никогда не спавнимся «естественно», чтобы спавнер не долбился постоянно
    return false;
}


    @Override
protected void defineSynchedData() {
    super.defineSynchedData(); // <-- обязательно сначала
    System.out.println("[ModTextDisplayEntity] defineSynchedData");
    this.entityData.define(DATA_TEXT_JSON, "{\"text\":\"\"}");
    this.entityData.define(DATA_SHADOW, false);
    this.entityData.define(DATA_COLOR_ARGB, 0xFFFFFFFF);
    this.entityData.define(DATA_LINE_WIDTH, 0);
    this.entityData.define(DATA_SCALE, 0.025f);
    this.entityData.define(DATA_BILLBOARD, BillboardMode.CENTER.ordinal());
    this.entityData.define(DATA_Y_OFFSET, 0.0f);
    this.entityData.define(DATA_BG_ENABLED, false);
	this.entityData.define(DATA_BG_COLOR_ARGB, 0x4C000000); // ~30% чёрный: ARGB
	this.entityData.define(DATA_BG_PADDING, 4);             // паддинг в пикселях шрифта

}


    // ==== getters/setters (используются рендерером) ====
    public String getTextJson() { return this.entityData.get(DATA_TEXT_JSON); }
    public boolean hasShadow() { return this.entityData.get(DATA_SHADOW); }
    public int getColor() { return this.entityData.get(DATA_COLOR_ARGB); }
    public int getLineWidth() { return this.entityData.get(DATA_LINE_WIDTH); }
    public float getScale() { return this.entityData.get(DATA_SCALE); }
    public BillboardMode getBillboard() { return BillboardMode.values()[this.entityData.get(DATA_BILLBOARD)]; }
    public float getYOffset() { return this.entityData.get(DATA_Y_OFFSET); }
    public boolean hasBackground() { return this.entityData.get(DATA_BG_ENABLED); }
	public int getBackgroundColor() { return this.entityData.get(DATA_BG_COLOR_ARGB); }
	public int getBackgroundPadding() { return this.entityData.get(DATA_BG_PADDING); }


    public Component getTextComponent() {
        try {
            return Component.Serializer.fromJson(getTextJson());
        } catch (Exception ignored) {
            return Component.literal(getTextJson());
        }
    }

    @Override
public void readAdditionalSaveData(CompoundTag tag) {
        if (tag.contains("text")) this.entityData.set(DATA_TEXT_JSON, tag.getString("text"));
        if (tag.contains("shadow")) this.entityData.set(DATA_SHADOW, tag.getBoolean("shadow"));
        if (tag.contains("color")) this.entityData.set(DATA_COLOR_ARGB, tag.getInt("color"));
        if (tag.contains("line_width")) this.entityData.set(DATA_LINE_WIDTH, tag.getInt("line_width"));
        if (tag.contains("scale")) this.entityData.set(DATA_SCALE, tag.getFloat("scale"));
        if (tag.contains("billboard")) this.entityData.set(DATA_BILLBOARD, BillboardMode.fromString(tag.getString("billboard")).ordinal());
        if (tag.contains("y_offset")) this.entityData.set(DATA_Y_OFFSET, tag.getFloat("y_offset"));
        if (tag.contains("bg")) this.entityData.set(DATA_BG_ENABLED, tag.getBoolean("bg"));
		if (tag.contains("bg_color")) this.entityData.set(DATA_BG_COLOR_ARGB, tag.getInt("bg_color"));
		if (tag.contains("bg_padding")) this.entityData.set(DATA_BG_PADDING, tag.getInt("bg_padding"));

    }

    @Override
    public void addAdditionalSaveData(CompoundTag tag) {
        tag.putString("text", this.entityData.get(DATA_TEXT_JSON));
        tag.putBoolean("shadow", this.entityData.get(DATA_SHADOW));
        tag.putInt("color", this.entityData.get(DATA_COLOR_ARGB));
        tag.putInt("line_width", this.entityData.get(DATA_LINE_WIDTH));
        tag.putFloat("scale", this.entityData.get(DATA_SCALE));
        tag.putString("billboard", getBillboard().name().toLowerCase());
        tag.putFloat("y_offset", this.entityData.get(DATA_Y_OFFSET));
        tag.putBoolean("bg", this.entityData.get(DATA_BG_ENABLED));
		tag.putInt("bg_color", this.entityData.get(DATA_BG_COLOR_ARGB));
		tag.putInt("bg_padding", this.entityData.get(DATA_BG_PADDING));
    }

    @Override public void tick() { /* ничего, просто сущность-носитель данных */ }

    @Override public boolean isPickable() { return false; }

    @Override
public Packet<ClientGamePacketListener> getAddEntityPacket() {
    return NetworkHooks.getEntitySpawningPacket(this);
}

@Override
public boolean shouldRender(double x, double y, double z) {
    // Гарантируем, что диспатчер даже не попытается нас рисовать
    return !this.isRemoved() && this.isAlive() && super.shouldRender(x, y, z);
}



    // Удобная фабрика для регистрации
    public static EntityType<ModTextDisplayEntity> type(String id) {
        return EntityType.Builder.<ModTextDisplayEntity>of(ModTextDisplayEntity::new, MobCategory.MISC)
                .sized(0.1f, 0.1f)
                .clientTrackingRange(64)
                .updateInterval(1)
                .build(id);
    }

    public static void init() {
    // Ничего не нужно; MCreator дергает этот метод в init()
}

public static AttributeSupplier.Builder createAttributes() {
    // Атрибуты, которых ждёт MONSTER-спавнер (важно FOLLOW_RANGE)
    return Monster.createMonsterAttributes()
        .add(Attributes.MAX_HEALTH, 1.0D)
        .add(Attributes.MOVEMENT_SPEED, 0.0D)
        .add(Attributes.FOLLOW_RANGE, 16.0D);
}



}
