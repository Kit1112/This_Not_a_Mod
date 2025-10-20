package net.code.thisnotamod;

import net.minecraft.client.Minecraft;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.LevelAccessor;

import net.code.thisnotamod.init.ThisnotamodModItems; // INFOICON

/**
 * Универсальная процедура показа всплывашки.
 * Параметры с дефолтами:
 *  text (если пусто)  -> "Текст-заглушка"
 *  icon (если пусто)  -> ThisnotamodModItems.INFOICON
 *  soundId (если пусто)-> "thisnotamod:hint"
 *
 * Вызовы из Blocky:
 *  - HintCallProcedure.execute(world, entity);                           // все дефолты
 *  - HintCallProcedure.execute(world, entity, "Привет");                 // дефолтная иконка и звук
 *  - HintCallProcedure.execute(world, entity, "Привет", stack);          // дефолтный звук
 *  - HintCallProcedure.execute(world, entity, "Привет", stack, "thisnotamod:hint2");
 *  - HintCallProcedure.execute(); // НУЛЕВОЙ, только с клиента (HUD)
 */
public class HintCallProcedure {

    // ===== ОСНОВНОЙ ВХОД С ПОЛНЫМ НАБОРОМ ПАРАМЕТРОВ =====
    public static void execute(LevelAccessor world, Entity entity, String text, ItemStack icon, String soundId) {
        if (!(world instanceof Level level)) return;
        if (!level.isClientSide()) return;                 // рисуем только на клиенте
        if (Minecraft.getInstance() == null) return;

        // --- дефолты ---
        String finalText = (text == null || text.isBlank()) ? "Текст-заглушка" : text;

        ItemStack finalIcon = (icon == null || icon.isEmpty())
                ? new ItemStack(ThisnotamodModItems.INFOICON.get())
                : icon.copy();

        ResourceLocation finalSound;
        if (soundId == null || soundId.isBlank()) {
            finalSound = new ResourceLocation("thisnotamod", "hint");
        } else {
            finalSound = soundId.contains(":")
                    ? new ResourceLocation(soundId)
                    : new ResourceLocation("thisnotamod", soundId);
        }

        // Показ
        CustomTipOverlay.queueTip(Component.literal(finalText), finalIcon, finalSound);
    }

    // ===== УДОБНЫЕ ПЕРЕГРУЗКИ =====
    public static void execute(LevelAccessor world, Entity entity, String text, ItemStack icon) {
        execute(world, entity, text, icon, "");
    }

    public static void execute(LevelAccessor world, Entity entity, String text) {
        execute(world, entity, text, ItemStack.EMPTY, "");
    }

    public static void execute(LevelAccessor world, Entity entity) {
        execute(world, entity, "", ItemStack.EMPTY, "");
    }

    // ===== НУЛЕВАЯ ПЕРЕГРУЗКА ДЛЯ ВЫЗОВА БЕЗ ЗАВИСИМОСТЕЙ (КЛИЕНТ ТОЛЬКО) =====
    public static void execute() {
        Minecraft mc = Minecraft.getInstance();
        if (mc == null || mc.level == null || mc.player == null) return;
        // используем дефолты
        execute(mc.level, mc.player, "", ItemStack.EMPTY, "");
    }
}
