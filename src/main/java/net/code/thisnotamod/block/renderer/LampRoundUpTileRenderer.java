package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundUpBlockModel;
import net.code.thisnotamod.block.entity.LampRoundUpTileEntity;

public class LampRoundUpTileRenderer extends GeoBlockRenderer<LampRoundUpTileEntity> {
	public LampRoundUpTileRenderer() {
		super(new LampRoundUpBlockModel());
	}

	@Override
	public RenderType getRenderType(LampRoundUpTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
