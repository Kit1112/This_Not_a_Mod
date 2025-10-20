package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.EndPointBlockModel;
import net.code.thisnotamod.block.entity.EndPointTileEntity;

public class EndPointTileRenderer extends GeoBlockRenderer<EndPointTileEntity> {
	public EndPointTileRenderer() {
		super(new EndPointBlockModel());
	}

	@Override
	public RenderType getRenderType(EndPointTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
