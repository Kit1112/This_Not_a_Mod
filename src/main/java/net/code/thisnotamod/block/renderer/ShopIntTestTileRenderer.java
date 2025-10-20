package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ShopIntTestBlockModel;
import net.code.thisnotamod.block.entity.ShopIntTestTileEntity;

public class ShopIntTestTileRenderer extends GeoBlockRenderer<ShopIntTestTileEntity> {
	public ShopIntTestTileRenderer() {
		super(new ShopIntTestBlockModel());
	}

	@Override
	public RenderType getRenderType(ShopIntTestTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
