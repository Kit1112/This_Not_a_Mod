package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.MannequinDownDisplayModel;
import net.code.thisnotamod.block.display.MannequinDownDisplayItem;

public class MannequinDownDisplayItemRenderer extends GeoItemRenderer<MannequinDownDisplayItem> {
	public MannequinDownDisplayItemRenderer() {
		super(new MannequinDownDisplayModel());
	}

	@Override
	public RenderType getRenderType(MannequinDownDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
