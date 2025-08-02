package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LightSwitchDisplayModel;
import net.code.thisnotamod.block.display.LightSwitchDisplayItem;

public class LightSwitchDisplayItemRenderer extends GeoItemRenderer<LightSwitchDisplayItem> {
	public LightSwitchDisplayItemRenderer() {
		super(new LightSwitchDisplayModel());
	}

	@Override
	public RenderType getRenderType(LightSwitchDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
