package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundMiddleBlockModel;
import net.code.thisnotamod.block.entity.LampRoundMiddleTileEntity;

public class LampRoundMiddleTileRenderer extends GeoBlockRenderer<LampRoundMiddleTileEntity> {
	public LampRoundMiddleTileRenderer() {
		super(new LampRoundMiddleBlockModel());
	}

	@Override
	public RenderType getRenderType(LampRoundMiddleTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
