package net.code.thisnotamod.item.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;
import software.bernie.geckolib.cache.object.BakedGeoModel;
import software.bernie.geckolib.renderer.layer.AutoGlowingGeoLayer;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.ItemDisplayContext;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.item.model.DriveItemModel;
import net.code.thisnotamod.item.DriveItem;

import java.util.Set;
import java.util.HashSet;

import com.mojang.blaze3d.vertex.VertexConsumer;
import com.mojang.blaze3d.vertex.PoseStack;

import net.minecraft.client.Minecraft;
import software.bernie.geckolib.animatable.GeoItem;

public class DriveItemRenderer extends GeoItemRenderer<DriveItem> {
    public DriveItemRenderer() {
        super(new DriveItemModel());
        // ВАЖНО: слой автосвечения (ищет *_glowmask.png рядом с базовой текстурой)
        this.addRenderLayer(new AutoGlowingGeoLayer<>(this));
    }

    @Override
    public RenderType getRenderType(DriveItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
        // Прозрачность для текстуры предмета (как у тебя было)
        return RenderType.entityTranslucent(getTextureLocation(animatable));
    }

    private static final float SCALE_RECIPROCAL = 1.0f / 16.0f;
    protected boolean renderArms = false;
    protected MultiBufferSource currentBuffer;
    protected RenderType renderType;
    public ItemDisplayContext transformType;
    // НЕ перекрываем внутреннее поле родителя: используем своё имя
    protected DriveItem animatableRef;
    private final Set<String> hiddenBones = new HashSet<>();
    private final Set<String> suppressedBones = new HashSet<>();

    @Override
public void renderByItem(ItemStack stack, ItemDisplayContext transformType, PoseStack matrixStack, MultiBufferSource bufferIn, int combinedLightIn, int overlay) {
    this.transformType = transformType;

    // === Пер-стековый запуск анимации из ItemAnimationFactory ===
    if (stack.getItem() instanceof DriveItem di) {
        String pending = di.animationprocedure; // сюда фабрика кладёт имя анимации
        if (pending != null && !pending.isEmpty()) {
            // Поддержка префиксов "R:" / "L:" для выбора руки
            String prefix = "";
            String animName = pending;
            int colon = pending.indexOf(':');
            if (colon >= 0) {
                prefix = pending.substring(0, colon);
                animName = pending.substring(colon + 1);
            }

            boolean rightCtx = transformType == ItemDisplayContext.FIRST_PERSON_RIGHT_HAND
                            || transformType == ItemDisplayContext.THIRD_PERSON_RIGHT_HAND;
            boolean leftCtx  = transformType == ItemDisplayContext.FIRST_PERSON_LEFT_HAND
                            || transformType == ItemDisplayContext.THIRD_PERSON_LEFT_HAND;

            boolean handOk = prefix.isEmpty()
                    || ("R".equals(prefix) && rightCtx)
                    || ("L".equals(prefix) && leftCtx);

            if (handOk) {
                var player = Minecraft.getInstance().player;
                if (player != null && player.level() != null) {
                    long id = GeoItem.getId(stack); // клиент берёт уже назначенный id
                    if (id != -1L) {
                        di.triggerAnim(player, id, "main", animName);
                        di.animationprocedure = ""; // чистим после успешного триггера
                    }
                }
            }
        }
    }

    if (this.animatableRef != null) {
        this.animatableRef.getTransformType(transformType);
    }
    super.renderByItem(stack, transformType, matrixStack, bufferIn, combinedLightIn, overlay);
}


    @Override
    public void actuallyRender(PoseStack matrixStackIn, DriveItem animatable, BakedGeoModel model, RenderType type, MultiBufferSource renderTypeBuffer, VertexConsumer vertexBuilder, boolean isRenderer, float partialTicks,
                               int packedLightIn, int packedOverlayIn, float red, float green, float blue, float alpha) {
        this.currentBuffer = renderTypeBuffer;
        this.renderType = type;
        this.animatableRef = animatable;

        super.actuallyRender(matrixStackIn, animatable, model, type, renderTypeBuffer, vertexBuilder, isRenderer, partialTicks, packedLightIn, packedOverlayIn, red, green, blue, alpha);

        if (this.renderArms) {
            this.renderArms = false;
        }
    }

    @Override
    public ResourceLocation getTextureLocation(DriveItem instance) {
        return super.getTextureLocation(instance);
    }
}
