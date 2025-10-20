package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.EndPointDisplayModel;
import net.code.thisnotamod.block.display.EndPointDisplayItem;

public class EndPointDisplayItemRenderer extends GeoItemRenderer<EndPointDisplayItem> {
	public EndPointDisplayItemRenderer() {
		super(new EndPointDisplayModel());
	}

	@Override
	public RenderType getRenderType(EndPointDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
