package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoItemRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TelescopeDisplayModel;
import net.code.thisnotamod.block.display.TelescopeDisplayItem;

public class TelescopeDisplayItemRenderer extends GeoItemRenderer<TelescopeDisplayItem> {
	public TelescopeDisplayItemRenderer() {
		super(new TelescopeDisplayModel());
	}

	@Override
	public RenderType getRenderType(TelescopeDisplayItem animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
