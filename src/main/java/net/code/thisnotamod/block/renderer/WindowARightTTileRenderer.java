package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowARightTBlockModel;
import net.code.thisnotamod.block.entity.WindowARightTTileEntity;

public class WindowARightTTileRenderer extends GeoBlockRenderer<WindowARightTTileEntity> {
	public WindowARightTTileRenderer() {
		super(new WindowARightTBlockModel());
	}

	@Override
	public RenderType getRenderType(WindowARightTTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
