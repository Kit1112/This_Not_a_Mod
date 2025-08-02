package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerMiddleBlockModel;
import net.code.thisnotamod.block.entity.VotvLockerMiddleTileEntity;

public class VotvLockerMiddleTileRenderer extends GeoBlockRenderer<VotvLockerMiddleTileEntity> {
	public VotvLockerMiddleTileRenderer() {
		super(new VotvLockerMiddleBlockModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerMiddleTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
