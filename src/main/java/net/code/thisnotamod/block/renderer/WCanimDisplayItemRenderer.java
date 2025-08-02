package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WCanimDisplayModel;
import net.code.thisnotamod.block.display.WCanimDisplayItem;

public class WCanimDisplayItemRenderer extends GeoItemRenderer<WCanimDisplayItem> {
	public WCanimDisplayItemRenderer() {
		super(new WCanimDisplayModel());
	}

	@Override
	public RenderType getRenderType(WCanimDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
