package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.MannequinTopDisplayModel;
import net.code.thisnotamod.block.display.MannequinTopDisplayItem;

public class MannequinTopDisplayItemRenderer extends GeoItemRenderer<MannequinTopDisplayItem> {
	public MannequinTopDisplayItemRenderer() {
		super(new MannequinTopDisplayModel());
	}

	@Override
	public RenderType getRenderType(MannequinTopDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
