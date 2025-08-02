package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampBlockModel;
import net.code.thisnotamod.block.entity.LampTileEntity;

public class LampTileRenderer extends GeoBlockRenderer<LampTileEntity> {
	public LampTileRenderer() {
		super(new LampBlockModel());
	}

	@Override
	public RenderType getRenderType(LampTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
