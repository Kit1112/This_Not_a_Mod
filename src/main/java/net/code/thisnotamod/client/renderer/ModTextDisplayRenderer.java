package net.code.thisnotamod.client.renderer;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.math.Axis;
import net.code.thisnotamod.init.ThisnotamodModEntities;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.Font;
import net.minecraft.client.renderer.MultiBufferSource;
import net.minecraft.client.renderer.entity.EntityRenderer;
import net.minecraft.client.renderer.entity.EntityRendererProvider;
import net.minecraft.client.renderer.texture.TextureAtlas;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.util.FormattedCharSequence;
import net.minecraft.client.renderer.RenderType;
import com.mojang.blaze3d.vertex.VertexConsumer;
import org.joml.Matrix4f;
import net.minecraft.network.chat.Style;
import net.minecraft.client.renderer.RenderType;
import com.mojang.blaze3d.vertex.VertexConsumer;
import org.joml.Matrix4f;

// ВАЖНО: этот тип — тот, что создал MCreator (не мы)
public class ModTextDisplayRenderer extends EntityRenderer<net.code.thisnotamod.entity.ModTextDisplayEntity> {
    public ModTextDisplayRenderer(EntityRendererProvider.Context ctx) {
        super(ctx);
    }

    @Override
    public void render(net.code.thisnotamod.entity.ModTextDisplayEntity e, float yaw, float pt,
                       PoseStack pose, MultiBufferSource buf, int light) {
        Component text = e.getCustomName(); // текст берём из CustomName
        if (text == null || text.getString().isEmpty()) return;
        if (!e.isAlive() || e.isRemoved() || e.isInvisible()) return;

        Font font = Minecraft.getInstance().font;

        pose.pushPose();
        // Рисуем чуть выше «ног» сущности; если у твоей сущности другая высота — можно регулировать
        double lift = Math.max(0.0, e.getBbHeight()) + 0.05;
        pose.translate(0.0D, lift, 0.0D);

        // Billboard: всегда к камере (аналог vanilla TextDisplay "center")
        pose.mulPose(this.entityRenderDispatcher.cameraOrientation());

        // Масштаб текста — стабильный и безопасный для шейдеров
        float scale = e.getScale() > 0 ? e.getScale() : 0.03f;
        pose.scale(-scale, -scale, scale);

        int maxWidth = e.getLineWidth() > 0 ? e.getLineWidth() : 180;
java.util.List<FormattedCharSequence> lines = font.split(text, maxWidth);

// посчитаем габариты текста
int lineH = 9;
int totalH = lines.size() * lineH;
int maxLineW = 0;
for (FormattedCharSequence l : lines) {
    int w = font.width(l);
    if (w > maxLineW) maxLineW = w;
}

// === единый полупрозрачный фон (без ручных буферов) ===
int bgRectColor = e.hasBackground() ? e.getBackgroundColor() : 0;
if (bgRectColor != 0) {
    int pad   = Math.max(1, e.getBackgroundPadding());
    int rectW = maxLineW + pad * 2;
    int rectH = totalH   + pad * 2;

    // делаем “строку-заливку” нужной ширины
    int spaceW  = Math.max(1, font.width(" "));
    int spaces  = Math.max(1, (int) Math.ceil(rectW / (double) spaceW));
    var filler  = FormattedCharSequence.forward(" ".repeat(spaces), Style.EMPTY);

    // растягиваем фон по оси Y, чтобы получилась одна сплошная плашка
    pose.pushPose();
    float scaleY = rectH / 9.0f;         // 9px — высота фоновой полосы у Font
    pose.translate(0, -pad / scaleY, 0); // верх плашки = -pad
    pose.scale(1f, scaleY, 1f);

    float leftX = -rectW / 2.0f;
    // ВАЖНО: последний аргумент — цвет фона; сам текст тут не рисуется
    font.drawInBatch(filler, leftX, 0, 0x00000000, false, pose.last().pose(), buf, Font.DisplayMode.NORMAL, bgRectColor, light);

    pose.popPose();
}

// параметры текста
int y = 0;
boolean shadow = e.hasShadow(); // 0b = один слой, 1b = “жирный”
int color = e.getColor();






        for (FormattedCharSequence line : lines) {
            int w = font.width(line);
            float x = -w / 2.0f; // выравнивание по центру
            font.drawInBatch(line, x, y, color, shadow, pose.last().pose(), buf, Font.DisplayMode.NORMAL, 0, light);
            y += 9;
        }

        pose.popPose();
        super.render(e, yaw, pt, pose, buf, light);
    }

    @Override
    public ResourceLocation getTextureLocation(net.code.thisnotamod.entity.ModTextDisplayEntity entity) {
        return TextureAtlas.LOCATION_BLOCKS; // формально обязателен, но не используется
    }
}
