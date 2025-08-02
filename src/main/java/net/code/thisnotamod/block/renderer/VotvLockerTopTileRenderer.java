package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerTopBlockModel;
import net.code.thisnotamod.block.entity.VotvLockerTopTileEntity;

public class VotvLockerTopTileRenderer extends GeoBlockRenderer<VotvLockerTopTileEntity> {
	public VotvLockerTopTileRenderer() {
		super(new VotvLockerTopBlockModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerTopTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
