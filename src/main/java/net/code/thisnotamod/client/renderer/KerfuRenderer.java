
package net.code.thisnotamod.client.renderer;

import software.bernie.geckolib.renderer.GeoEntityRenderer;
import software.bernie.geckolib.cache.object.BakedGeoModel;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.entity.EntityRendererProvider;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.entity.model.KerfuModel;
import net.code.thisnotamod.entity.layer.KerfuLayer;
import net.code.thisnotamod.entity.KerfuEntity;

import com.mojang.blaze3d.vertex.VertexConsumer;
import com.mojang.blaze3d.vertex.PoseStack;

public class KerfuRenderer extends GeoEntityRenderer<KerfuEntity> {
	public KerfuRenderer(EntityRendererProvider.Context renderManager) {
		super(renderManager, new KerfuModel());
		this.shadowRadius = 0.5f;
		this.addRenderLayer(new KerfuLayer(this));
	}

	@Override
	public RenderType getRenderType(KerfuEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}

	@Override
	public void preRender(PoseStack poseStack, KerfuEntity entity, BakedGeoModel model, MultiBufferSource bufferSource, VertexConsumer buffer, boolean isReRender, float partialTick, int packedLight, int packedOverlay, float red, float green,
			float blue, float alpha) {
		float scale = 0.6f;
		this.scaleHeight = scale;
		this.scaleWidth = scale;
		super.preRender(poseStack, entity, model, bufferSource, buffer, isReRender, partialTick, packedLight, packedOverlay, red, green, blue, alpha);
	}

	@Override
	protected float getDeathMaxRotation(KerfuEntity entityLivingBaseIn) {
		return 0.0F;
	}
}
