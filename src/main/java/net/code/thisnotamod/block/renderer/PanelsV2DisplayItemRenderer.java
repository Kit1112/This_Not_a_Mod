package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.PanelsV2DisplayModel;
import net.code.thisnotamod.block.display.PanelsV2DisplayItem;

public class PanelsV2DisplayItemRenderer extends GeoItemRenderer<PanelsV2DisplayItem> {
	public PanelsV2DisplayItemRenderer() {
		super(new PanelsV2DisplayModel());
	}

	@Override
	public RenderType getRenderType(PanelsV2DisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
