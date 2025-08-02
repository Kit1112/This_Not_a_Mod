package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WCanimBlockModel;
import net.code.thisnotamod.block.entity.WCanimTileEntity;

public class WCanimTileRenderer extends GeoBlockRenderer<WCanimTileEntity> {
	public WCanimTileRenderer() {
		super(new WCanimBlockModel());
	}

	@Override
	public RenderType getRenderType(WCanimTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
