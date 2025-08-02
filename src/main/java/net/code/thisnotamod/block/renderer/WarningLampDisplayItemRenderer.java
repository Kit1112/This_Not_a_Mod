package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WarningLampDisplayModel;
import net.code.thisnotamod.block.display.WarningLampDisplayItem;

public class WarningLampDisplayItemRenderer extends GeoItemRenderer<WarningLampDisplayItem> {
	public WarningLampDisplayItemRenderer() {
		super(new WarningLampDisplayModel());
	}

	@Override
	public RenderType getRenderType(WarningLampDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
