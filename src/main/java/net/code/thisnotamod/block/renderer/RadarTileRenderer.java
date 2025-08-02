package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.RadarBlockModel;
import net.code.thisnotamod.block.entity.RadarTileEntity;

public class RadarTileRenderer extends GeoBlockRenderer<RadarTileEntity> {
	public RadarTileRenderer() {
		super(new RadarBlockModel());
	}

	@Override
	public RenderType getRenderType(RadarTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
