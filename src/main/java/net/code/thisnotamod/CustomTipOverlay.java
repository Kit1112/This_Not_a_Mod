package net.code.thisnotamod;

import com.mojang.blaze3d.systems.RenderSystem;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.Font;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.world.item.ItemStack;
import net.minecraftforge.client.gui.overlay.ForgeGui;
import net.minecraftforge.client.gui.overlay.IGuiOverlay;

import java.util.*;

public class CustomTipOverlay implements IGuiOverlay {

    public static final CustomTipOverlay INSTANCE = new CustomTipOverlay();

    // --- визуальные настройки ---
    private static final int PADDING = 6;
    private static final int ICON_SIZE = 15; // логический бокс иконки для лэйаута
    private static final int MARGIN_FROM_EDGE = 8;
    private static final int STACK_GAP = 2;         // расстояние между всплывашками
    private static final int OFFSET_Y = 75;         // вертикальный сдвиг нижней всплывашки

    // --- тайминги ---
    private static final int SHOW_DURATION_MS = 3000;
    private static final int SLIDE_IN_MS = 260;
    private static final int SLIDE_OUT_MS = 260;

    // --- антиспам ---
    private static final long MIN_INTERVAL_MS = 10 * 50; // 10 тиков ~ 500 мс
    private final Map<String, Long> lastShown = new HashMap<>();

    // --- цвета ---
    private static final int BG_COLOR = 0xAA2A2A2A;
    private static final int TEXT_COLOR = 0xFFFFFFFF;

    private record Tip(Component text, ItemStack icon, long startTimeMs, int widthPx, int heightPx, ResourceLocation soundId) {}

    // максимум 3 активных; остальные ждут
    private static final int MAX_ACTIVE = 3;
    private final LinkedList<Tip> active = new LinkedList<>(); // index 0 — самая новая (внизу)
    private final Deque<Tip> waiting = new ArrayDeque<>();

    private CustomTipOverlay() {}

    // === ПУБЛИЧНЫЕ API ===

    /** Показать подсказку с дефолтным звуком thisnotamod:hint */
    public static void queueTip(Component text, ItemStack icon) {
        queueTip(text, icon, new ResourceLocation("thisnotamod", "hint"));
    }

    /** Показать подсказку с кастомным звуком (например "thisnotamod:rare_hint") */
    public static void queueTip(Component text, ItemStack icon, ResourceLocation soundId) {
        Minecraft mc = Minecraft.getInstance();
        if (mc == null || mc.level == null) return;

        // --- антиспам ---
        long now = System.currentTimeMillis();
        String key = makeKey(text, icon, soundId);
        Long lastTime = INSTANCE.lastShown.get(key);
        if (lastTime != null && now - lastTime < MIN_INTERVAL_MS) {
            return; // слишком рано
        }
        INSTANCE.lastShown.put(key, now);

        Font font = mc.font;
        int textW = font.width(text);
        int textH = 9;

        // базовая высота и симметричное "сжатие" до 75%
        int baseHeight = Math.max(ICON_SIZE, textH) + PADDING * 2;
        int cut = (int) ((baseHeight - baseHeight * 0.75f) / 2f);
        int height = baseHeight - cut * 2;

        int width = PADDING + ICON_SIZE + PADDING + textW + PADDING;

        Tip tip = new Tip(text, icon == null ? ItemStack.EMPTY : icon.copy(), now, width, height, soundId);

        if (INSTANCE.active.size() < MAX_ACTIVE) {
            INSTANCE.active.addFirst(tip); // новая становится нижней
            INSTANCE.playHintSound(tip.soundId(), 0, 1.0f);
        } else {
            INSTANCE.waiting.addLast(tip);
        }
    }

    private static String makeKey(Component text, ItemStack icon, ResourceLocation soundId) {
        String iconStr = icon == null ? "empty" : icon.getItem().toString();
        return text.getString() + "|" + iconStr + "|" + soundId.toString();
    }

    // === РЕНДЕР ===

    @Override
    public void render(ForgeGui gui, GuiGraphics graphics, float partialTick, int screenWidth, int screenHeight) {
        if (active.isEmpty()) {
            promoteFromWaiting();
            if (active.isEmpty()) return;
        }

        long now = System.currentTimeMillis();

        // рисуем активные; удаляем завершённые
        Iterator<Tip> it = active.iterator();
        int index = 0;
        int yPrev = 0;
        while (it.hasNext()) {
            Tip tip = it.next();

            long elapsed = now - tip.startTimeMs();
            long total = SLIDE_IN_MS + SHOW_DURATION_MS + SLIDE_OUT_MS;

            if (elapsed >= total) {
                it.remove();
                continue;
            }

            // X с анимацией влёта/вылёта
            int targetX = screenWidth - tip.widthPx() - MARGIN_FROM_EDGE;
            double x;
            if (elapsed <= SLIDE_IN_MS) {
                double p = clamp01((double) elapsed / SLIDE_IN_MS);
                p = easeOutCubic(p);
                x = lerp(screenWidth, targetX, p);
            } else if (elapsed <= SLIDE_IN_MS + SHOW_DURATION_MS) {
                x = targetX;
            } else {
                long outTime = elapsed - (SLIDE_IN_MS + SHOW_DURATION_MS);
                double p = clamp01((double) outTime / SLIDE_OUT_MS);
                p = easeInCubic(p);
                x = lerp(targetX, screenWidth, p);
            }
            int xi = (int) Math.round(x);

            // Y-ступеньки
            int y;
            if (index == 0) {
                y = (screenHeight - tip.heightPx()) / 2 + OFFSET_Y;
            } else {
                y = yPrev - (tip.heightPx() + STACK_GAP);
            }
            yPrev = y;
            index++;

            // фон
            graphics.fill(xi, y, xi + tip.widthPx(), y + tip.heightPx() - 2, BG_COLOR);

            // иконка — масштабируем рендер, НЕ меняя лэйаут (ICON_SIZE)
            int iconX = xi + PADDING;
            int iconY = y + (tip.heightPx() - ICON_SIZE) / 2;
            if (!tip.icon().isEmpty()) {
                RenderSystem.enableBlend();
                graphics.pose().pushPose();

                // базовый масштаб (как был раньше)
                float baseScale = 0.75f;

                // определяем, является ли иконка infoicon/erroricon
                ResourceLocation itemId = BuiltInRegistries.ITEM.getKey(tip.icon().getItem());
                boolean isSpecial = itemId != null &&
                        (itemId.equals(new ResourceLocation("thisnotamod", "infoicon"))
                         || itemId.equals(new ResourceLocation("thisnotamod", "erroricon")));

                // если спец-иконка — увеличиваем до 125% от базового
                float scale = isSpecial ? (baseScale * 1.25f) : baseScale; // 0.9375f для спец., 0.75f по умолчанию

                // фактический размер в пикселях (ванильный рендер 16x16)
                float renderedPx = 16f * scale;

                // центрируем внутри логического окна ICON_SIZE, не меняя фон/разметку
                float dx = iconX + (ICON_SIZE - renderedPx) / 2f;
                float dy = iconY + (ICON_SIZE - renderedPx) / 2f;

                graphics.pose().translate(dx, dy, 0);
                graphics.pose().scale(scale, scale, 1.0f);
                graphics.renderItem(tip.icon(), 0, 0);

                graphics.pose().popPose();
                RenderSystem.disableBlend();
            }

            // текст по центру
            int textX = iconX + ICON_SIZE + PADDING; // остаётся от ICON_SIZE — фон не меняем
            int textY = y + (tip.heightPx() - 9) / 2;
            graphics.drawString(Minecraft.getInstance().font, tip.text(), textX, textY, TEXT_COLOR, false);
        }

        // поднимем из очереди, если освободилось место
        promoteFromWaiting();
    }

    // === СЛУЖЕБНОЕ ===

    private void promoteFromWaiting() {
        while (active.size() < MAX_ACTIVE && !waiting.isEmpty()) {
            Tip next = waiting.removeFirst();
            Tip refreshed = new Tip(next.text(), next.icon(), System.currentTimeMillis(),
                    next.widthPx(), next.heightPx(), next.soundId());
            active.addFirst(refreshed);
            playHintSound(refreshed.soundId(), 0, 1.0f);
        }
    }

    /** Проиграть звук появления всплывашки (безопасно для Forge 1.20.1). */
    private void playHintSound(ResourceLocation soundId, int delayMs, float volume) {
        Minecraft mc = Minecraft.getInstance();
        if (mc == null) return;

        SoundEvent se = BuiltInRegistries.SOUND_EVENT.get(soundId);
        if (se == null) return;

        // всегда выполняем в главном (render) потоке
        mc.execute(() -> {
            try {
                if (delayMs > 0) {
                    Thread.sleep(delayMs);
                }
            } catch (InterruptedException ignored) {}

            // запускаем звук безопасно
            mc.getSoundManager().play(SimpleSoundInstance.forUI(se, volume));
        });
    }

    // математика анимаций
    private static double lerp(double a, double b, double t) { return a + (b - a) * t; }
    private static double clamp01(double v) { return v < 0 ? 0 : Math.min(v, 1); }
    private static double easeOutCubic(double t) { return 1 - Math.pow(1 - t, 3); }
    private static double easeInCubic(double t) { return t * t * t; }
}
