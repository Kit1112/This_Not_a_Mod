package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowAleftTDisplayModel;
import net.code.thisnotamod.block.display.WindowAleftTDisplayItem;

public class WindowAleftTDisplayItemRenderer extends GeoItemRenderer<WindowAleftTDisplayItem> {
	public WindowAleftTDisplayItemRenderer() {
		super(new WindowAleftTDisplayModel());
	}

	@Override
	public RenderType getRenderType(WindowAleftTDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
