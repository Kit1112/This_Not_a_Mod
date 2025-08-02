package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowAleftTBlockModel;
import net.code.thisnotamod.block.entity.WindowAleftTTileEntity;

public class WindowAleftTTileRenderer extends GeoBlockRenderer<WindowAleftTTileEntity> {
	public WindowAleftTTileRenderer() {
		super(new WindowAleftTBlockModel());
	}

	@Override
	public RenderType getRenderType(WindowAleftTTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
