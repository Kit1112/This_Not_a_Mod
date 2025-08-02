package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundUpMiddleBlockModel;
import net.code.thisnotamod.block.entity.LampRoundUpMiddleTileEntity;

public class LampRoundUpMiddleTileRenderer extends GeoBlockRenderer<LampRoundUpMiddleTileEntity> {
	public LampRoundUpMiddleTileRenderer() {
		super(new LampRoundUpMiddleBlockModel());
	}

	@Override
	public RenderType getRenderType(LampRoundUpMiddleTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
