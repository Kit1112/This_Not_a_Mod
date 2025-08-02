package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.RadiotielieskopBlockModel;
import net.code.thisnotamod.block.entity.RadiotielieskopTileEntity;

public class RadiotielieskopTileRenderer extends GeoBlockRenderer<RadiotielieskopTileEntity> {
	public RadiotielieskopTileRenderer() {
		super(new RadiotielieskopBlockModel());
	}

	@Override
	public RenderType getRenderType(RadiotielieskopTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
