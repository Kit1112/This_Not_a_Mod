package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvDoorTopBlockModel;
import net.code.thisnotamod.block.entity.VotvDoorTopTileEntity;

public class VotvDoorTopTileRenderer extends GeoBlockRenderer<VotvDoorTopTileEntity> {
	public VotvDoorTopTileRenderer() {
		super(new VotvDoorTopBlockModel());
	}

	@Override
	public RenderType getRenderType(VotvDoorTopTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
