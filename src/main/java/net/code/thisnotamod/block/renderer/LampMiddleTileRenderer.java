package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddleBlockModel;
import net.code.thisnotamod.block.entity.LampMiddleTileEntity;

public class LampMiddleTileRenderer extends GeoBlockRenderer<LampMiddleTileEntity> {
	public LampMiddleTileRenderer() {
		super(new LampMiddleBlockModel());
	}

	@Override
	public RenderType getRenderType(LampMiddleTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
