package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddleUppedBlockModel;
import net.code.thisnotamod.block.entity.LampMiddleUppedTileEntity;

public class LampMiddleUppedTileRenderer extends GeoBlockRenderer<LampMiddleUppedTileEntity> {
	public LampMiddleUppedTileRenderer() {
		super(new LampMiddleUppedBlockModel());
	}

	@Override
	public RenderType getRenderType(LampMiddleUppedTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
