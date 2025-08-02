package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.RadiotielieskopDisplayModel;
import net.code.thisnotamod.block.display.RadiotielieskopDisplayItem;

public class RadiotielieskopDisplayItemRenderer extends GeoItemRenderer<RadiotielieskopDisplayItem> {
	public RadiotielieskopDisplayItemRenderer() {
		super(new RadiotielieskopDisplayModel());
	}

	@Override
	public RenderType getRenderType(RadiotielieskopDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
