package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvDoorDisplayModel;
import net.code.thisnotamod.block.display.VotvDoorDisplayItem;

public class VotvDoorDisplayItemRenderer extends GeoItemRenderer<VotvDoorDisplayItem> {
	public VotvDoorDisplayItemRenderer() {
		super(new VotvDoorDisplayModel());
	}

	@Override
	public RenderType getRenderType(VotvDoorDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
