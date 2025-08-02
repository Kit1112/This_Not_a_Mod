package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TermRTBlockModel;
import net.code.thisnotamod.block.entity.TermRTTileEntity;

public class TermRTTileRenderer extends GeoBlockRenderer<TermRTTileEntity> {
	public TermRTTileRenderer() {
		super(new TermRTBlockModel());
	}

	@Override
	public RenderType getRenderType(TermRTTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
