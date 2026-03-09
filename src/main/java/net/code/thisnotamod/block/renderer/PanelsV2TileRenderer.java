package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;
import software.bernie.geckolib.cache.object.BakedGeoModel;

import net.minecraft.client.Minecraft;
import net.minecraft.client.renderer.LevelRenderer;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.core.BlockPos;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.blaze3d.vertex.VertexConsumer;

import net.code.thisnotamod.block.model.PanelsV2BlockModel;
import net.code.thisnotamod.block.entity.PanelsV2TileEntity;
import net.code.thisnotamod.OBB;

import org.joml.Quaternionf;

public class PanelsV2TileRenderer extends GeoBlockRenderer<PanelsV2TileEntity> {
    public PanelsV2TileRenderer() {
        super(new PanelsV2BlockModel());
        
        // Регистрируем слой интерфейса (теперь они в одной папке, импорт не нужен)
        this.addRenderLayer(new PanelsV2ScreenLayer(this));
    }

    @Override
    public RenderType getRenderType(PanelsV2TileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
        return RenderType.entityTranslucent(getTextureLocation(animatable));
    }

    @Override
    public void actuallyRender(PoseStack poseStack, PanelsV2TileEntity animatable, BakedGeoModel model, RenderType renderType, MultiBufferSource bufferSource, VertexConsumer buffer, boolean isReRender, float partialTick, int packedLight, int packedOverlay, float red, float green, float blue, float alpha) {
        super.actuallyRender(poseStack, animatable, model, renderType, bufferSource, buffer, isReRender, partialTick, packedLight, packedOverlay, red, green, blue, alpha);

        if (Minecraft.getInstance().getEntityRenderDispatcher().shouldRenderHitBoxes()) {
            BlockPos pos = animatable.getBlockPos();
            VertexConsumer vertexConsumer = bufferSource.getBuffer(RenderType.lines());

            for (OBB obb : animatable.getOBBs()) {
                poseStack.pushPose();
                double relX = obb.center().x - pos.getX();
                double relY = obb.center().y - pos.getY();
                double relZ = obb.center().z - pos.getZ();
                poseStack.translate(relX, relY, relZ);

                poseStack.mulPose(new Quaternionf(
                        (float) obb.rotation().x,
                        (float) obb.rotation().y,
                        (float) obb.rotation().z,
                        (float) obb.rotation().w
                ));

                float ex = (float) obb.extents().x;
                float ey = (float) obb.extents().y;
                float ez = (float) obb.extents().z;

                LevelRenderer.renderLineBox(poseStack, vertexConsumer, -ex, -ey, -ez, ex, ey, ez, 0.0f, 1.0f, 0.0f, 1.0f);
                poseStack.popPose();
            }
        }
    }
}