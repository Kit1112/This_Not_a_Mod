package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampRoundDisplayModel;
import net.code.thisnotamod.block.display.LampRoundDisplayItem;

public class LampRoundDisplayItemRenderer extends GeoItemRenderer<LampRoundDisplayItem> {
	public LampRoundDisplayItemRenderer() {
		super(new LampRoundDisplayModel());
	}

	@Override
	public RenderType getRenderType(LampRoundDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
