package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerBlockModel;
import net.code.thisnotamod.block.entity.VotvLockerTileEntity;

public class VotvLockerTileRenderer extends GeoBlockRenderer<VotvLockerTileEntity> {
	public VotvLockerTileRenderer() {
		super(new VotvLockerBlockModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
