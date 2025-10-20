package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.ShopIntTestDisplayModel;
import net.code.thisnotamod.block.display.ShopIntTestDisplayItem;

public class ShopIntTestDisplayItemRenderer extends GeoItemRenderer<ShopIntTestDisplayItem> {
	public ShopIntTestDisplayItemRenderer() {
		super(new ShopIntTestDisplayModel());
	}

	@Override
	public RenderType getRenderType(ShopIntTestDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
