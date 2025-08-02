package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvLockerDisplayModel;
import net.code.thisnotamod.block.display.VotvLockerDisplayItem;

public class VotvLockerDisplayItemRenderer extends GeoItemRenderer<VotvLockerDisplayItem> {
	public VotvLockerDisplayItemRenderer() {
		super(new VotvLockerDisplayModel());
	}

	@Override
	public RenderType getRenderType(VotvLockerDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
