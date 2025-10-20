package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.FridgeDownDisplayModel;
import net.code.thisnotamod.block.display.FridgeDownDisplayItem;

public class FridgeDownDisplayItemRenderer extends GeoItemRenderer<FridgeDownDisplayItem> {
	public FridgeDownDisplayItemRenderer() {
		super(new FridgeDownDisplayModel());
	}

	@Override
	public RenderType getRenderType(FridgeDownDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
