package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddleDisplayModel;
import net.code.thisnotamod.block.display.LampMiddleDisplayItem;

public class LampMiddleDisplayItemRenderer extends GeoItemRenderer<LampMiddleDisplayItem> {
	public LampMiddleDisplayItemRenderer() {
		super(new LampMiddleDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampMiddleDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
