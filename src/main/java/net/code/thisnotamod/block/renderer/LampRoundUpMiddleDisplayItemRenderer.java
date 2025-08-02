package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundUpMiddleDisplayModel;
import net.code.thisnotamod.block.display.LampRoundUpMiddleDisplayItem;

public class LampRoundUpMiddleDisplayItemRenderer extends GeoItemRenderer<LampRoundUpMiddleDisplayItem> {
	public LampRoundUpMiddleDisplayItemRenderer() {
		super(new LampRoundUpMiddleDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampRoundUpMiddleDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
