package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerTopDisplayModel;
import net.code.thisnotamod.block.display.VotvLockerTopDisplayItem;

public class VotvLockerTopDisplayItemRenderer extends GeoItemRenderer<VotvLockerTopDisplayItem> {
	public VotvLockerTopDisplayItemRenderer() {
		super(new VotvLockerTopDisplayModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerTopDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
