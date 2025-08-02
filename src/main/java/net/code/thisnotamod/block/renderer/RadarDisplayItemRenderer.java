package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.RadarDisplayModel;
import net.code.thisnotamod.block.display.RadarDisplayItem;

public class RadarDisplayItemRenderer extends GeoItemRenderer<RadarDisplayItem> {
	public RadarDisplayItemRenderer() {
		super(new RadarDisplayModel());
	}

	@Override
	public RenderType getRenderType(RadarDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
