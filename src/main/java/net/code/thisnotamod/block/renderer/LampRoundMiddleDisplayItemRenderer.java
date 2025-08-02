package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundMiddleDisplayModel;
import net.code.thisnotamod.block.display.LampRoundMiddleDisplayItem;

public class LampRoundMiddleDisplayItemRenderer extends GeoItemRenderer<LampRoundMiddleDisplayItem> {
	public LampRoundMiddleDisplayItemRenderer() {
		super(new LampRoundMiddleDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampRoundMiddleDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
