package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerMiddleDisplayModel;
import net.code.thisnotamod.block.display.VotvLockerMiddleDisplayItem;

public class VotvLockerMiddleDisplayItemRenderer extends GeoItemRenderer<VotvLockerMiddleDisplayItem> {
	public VotvLockerMiddleDisplayItemRenderer() {
		super(new VotvLockerMiddleDisplayModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerMiddleDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
