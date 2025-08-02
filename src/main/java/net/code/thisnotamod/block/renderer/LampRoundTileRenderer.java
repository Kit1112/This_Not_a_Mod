package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundBlockModel;
import net.code.thisnotamod.block.entity.LampRoundTileEntity;

public class LampRoundTileRenderer extends GeoBlockRenderer<LampRoundTileEntity> {
	public LampRoundTileRenderer() {
		super(new LampRoundBlockModel());
	}

	@Override
	public RenderType getRenderType(LampRoundTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
