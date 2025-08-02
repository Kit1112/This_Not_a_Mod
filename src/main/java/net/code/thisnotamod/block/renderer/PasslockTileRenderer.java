package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.PasslockBlockModel;
import net.code.thisnotamod.block.entity.PasslockTileEntity;

public class PasslockTileRenderer extends GeoBlockRenderer<PasslockTileEntity> {
	public PasslockTileRenderer() {
		super(new PasslockBlockModel());
	}

	@Override
	public RenderType getRenderType(PasslockTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
