package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvDoorTopDisplayModel;
import net.code.thisnotamod.block.display.VotvDoorTopDisplayItem;

public class VotvDoorTopDisplayItemRenderer extends GeoItemRenderer<VotvDoorTopDisplayItem> {
	public VotvDoorTopDisplayItemRenderer() {
		super(new VotvDoorTopDisplayModel());
	}

	@Override
	public RenderType getRenderType(VotvDoorTopDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
