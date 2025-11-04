
package net.code.thisnotamod.item;

import software.bernie.geckolib.util.GeckoLibUtil;
import software.bernie.geckolib.core.object.PlayState;
import software.bernie.geckolib.core.animation.RawAnimation;
import software.bernie.geckolib.core.animation.AnimationState;
import software.bernie.geckolib.core.animation.AnimationController;
import software.bernie.geckolib.core.animation.AnimatableManager;
import software.bernie.geckolib.core.animatable.instance.AnimatableInstanceCache;
import software.bernie.geckolib.animatable.GeoItem;
import software.bernie.geckolib.animatable.SingletonGeoAnimatable;
import net.minecraftforge.client.extensions.common.IClientItemExtensions;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemDisplayContext;
import net.minecraft.world.item.Item;
import net.minecraft.client.renderer.BlockEntityWithoutLevelRenderer;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.Entity;

import net.minecraft.network.chat.Component;
import net.minecraft.world.item.TooltipFlag;
import org.jetbrains.annotations.Nullable;
import java.util.Locale;
import java.util.Random;
import java.util.List;


import net.code.thisnotamod.item.renderer.DriveItemRenderer;

import java.util.function.Consumer;

import net.minecraft.network.chat.Component;
import net.minecraft.world.item.TooltipFlag;
import org.jetbrains.annotations.Nullable;
import java.util.Locale;
import java.util.Random;
import java.util.List;


public class DriveItem extends Item implements GeoItem {


// === NBT-ключи ===
public static final String TAG_SIGNAL_ID = "signalId";
public static final String TAG_LEVEL     = "level";
public static final String TAG_USER_NAME = "userName";
public static final String TAG_SERIAL    = "serial";
public static final String TAG_SIG_SIZE  = "sigSize";
public static final String TAG_IS_COPY = "isCopy";

// === генератор серийника ===
private static final char[] ALNUM = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".toCharArray();
private static String randomSerial(net.minecraft.util.RandomSource r, int min, int max) {
    int len = min + r.nextInt(max - min + 1);
    char[] out = new char[len];
    for (int i = 0; i < len; i++) out[i] = ALNUM[r.nextInt(ALNUM.length)];
    return new String(out);
}

	private final AnimatableInstanceCache cache = GeckoLibUtil.createInstanceCache(this);
	public String animationprocedure = "";


	private ItemDisplayContext transformType;

	public DriveItem() {
		super(new Item.Properties().stacksTo(1).rarity(Rarity.COMMON));
		SingletonGeoAnimatable.registerSyncedAnimatable(this);
	}

	@Override
public void inventoryTick(ItemStack stack, Level level, Entity entity, int slot, boolean selected) {
	super.inventoryTick(stack, level, entity, slot, selected);
	if (!level.isClientSide() && stack.getItem() == this) {
		software.bernie.geckolib.animatable.GeoItem.getOrAssignId(stack, (net.minecraft.server.level.ServerLevel) level);

		var tag = stack.getOrCreateTag();

		if (!tag.contains(TAG_SERIAL)) {
			tag.putString(TAG_SERIAL, randomSerial(level.getRandom(), 8, 16));
		}
		if (!tag.contains(TAG_LEVEL)) {
			tag.putInt(TAG_LEVEL, 0);
		}
		if (!tag.contains(TAG_SIGNAL_ID)) {
			tag.putInt(TAG_SIGNAL_ID, -1);
		}
		// userName не трогаем — игрок может задать позже
		// === Автовключение правильной анимации по NBT (чтобы /give работал) ===
String expectedAnim;
int lvl = tag.getInt(TAG_LEVEL);
int sid = tag.getInt(TAG_SIGNAL_ID);
boolean isCopy = tag.getBoolean(TAG_IS_COPY);

if (sid < 0 || lvl <= 0) expectedAnim = "lvl0";
else if (lvl == 1) expectedAnim = isCopy ? "lvl1copy" : "lvl1";
else if (lvl == 2) expectedAnim = isCopy ? "lvl2copy" : "lvl2";
else expectedAnim = isCopy ? "lvl3copy" : "lvl3";

// Периодический безопасный автотриггер — раз в 20 тиков, чтобы переживать рестарты игры
if (entity instanceof net.minecraft.server.level.ServerPlayer sp) {
    // триггерим только когда понятно, что на диске есть или нет сигнала
    if (sid < 0 || lvl <= 0 || lvl <= 3) {
        if (entity.tickCount % 20 == 1) { // раз в секунду
            long id = software.bernie.geckolib.animatable.GeoItem.getOrAssignId(stack, sp.serverLevel());
            if (stack.getItem() instanceof net.code.thisnotamod.item.DriveItem drive) {
                drive.triggerAnim(sp, id, "main", expectedAnim);
            }
        }
    }
}


	}
}


@Override
public void appendHoverText(ItemStack stack, @Nullable Level world, List<Component> tooltip, TooltipFlag flag) {
	var tag = stack.getOrCreateTag();

	String userName = tag.getString(TAG_USER_NAME);
	if (userName == null || userName.isEmpty()) userName = "[Unnamed]";

	int levelVal = tag.getInt(TAG_LEVEL);
	int signalId = tag.getInt(TAG_SIGNAL_ID);

	// size: только из кэша. Если подключишь SignalRegistry — вернёмся и дотащим оттуда.
String sizeStr = tag.contains(TAG_SIG_SIZE) ? tag.getString(TAG_SIG_SIZE) : "-";

String serial = tag.getString(TAG_SERIAL);
if (serial == null || serial.isEmpty()) serial = "-";

// сначала красим компоненты, потом добавляем
// сначала красим компоненты, потом добавляем
var l0 = Component.literal("Drive data:").withStyle(s -> s.withColor(0x7F7F7F));

var l1 = Component.literal("Name: ")
        .withStyle(s -> s.withColor(0x7F7F7F))
        .append(Component.literal(userName).withStyle(s -> s.withColor(0xA8BEA8)));

var l2 = Component.literal("ID: ")
        .withStyle(s -> s.withColor(0x7F7F7F))
        .append(Component.literal(serial).withStyle(s -> s.withColor(0xA8BEA8)));

var l3 = Component.literal("Level: ")
        .withStyle(s -> s.withColor(0x7F7F7F))
        .append(Component.literal(String.valueOf(levelVal)).withStyle(s -> s.withColor(0xA8BEA8)));

var l4 = Component.literal("Size: ")
        .withStyle(s -> s.withColor(0x7F7F7F))
        .append(Component.literal(sizeStr).withStyle(s -> s.withColor(0xA8BEA8)));

tooltip.add(l0);
tooltip.add(l1);
tooltip.add(l2);
tooltip.add(l3);
tooltip.add(l4);



}




	@Override
	public void initializeClient(Consumer<IClientItemExtensions> consumer) {
		super.initializeClient(consumer);
		consumer.accept(new IClientItemExtensions() {
			private final BlockEntityWithoutLevelRenderer renderer = new DriveItemRenderer();

			@Override
			public BlockEntityWithoutLevelRenderer getCustomRenderer() {
				return renderer;
			}
		});
	}

	public void getTransformType(ItemDisplayContext type) {
		this.transformType = type;
	}

	

@Override
public void registerControllers(AnimatableManager.ControllerRegistrar data) {
    AnimationController<DriveItem> ctrl = new AnimationController<>(this, "main", 0, s -> PlayState.CONTINUE)
        .triggerableAnim("0",    RawAnimation.begin().thenLoop("0"))
        .triggerableAnim("lvl0", RawAnimation.begin().thenLoop("0"))
        .triggerableAnim("lvl1", RawAnimation.begin().thenLoop("lvl1"))
        .triggerableAnim("lvl1copy", RawAnimation.begin().thenLoop("lvl1copy"))
		.triggerableAnim("lvl2",     RawAnimation.begin().thenLoop("lvl2"))
		.triggerableAnim("lvl2copy", RawAnimation.begin().thenLoop("lvl2copy"))
		.triggerableAnim("lvl3",     RawAnimation.begin().thenLoop("lvl3"))
		.triggerableAnim("lvl3copy", RawAnimation.begin().thenLoop("lvl3copy"));

    data.add(ctrl);
}


	@Override
	public AnimatableInstanceCache getAnimatableInstanceCache() {
		return this.cache;
	}
}
