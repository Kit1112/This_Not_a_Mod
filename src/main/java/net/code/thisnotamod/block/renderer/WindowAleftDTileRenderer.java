package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowAleftDBlockModel;
import net.code.thisnotamod.block.entity.WindowAleftDTileEntity;

public class WindowAleftDTileRenderer extends GeoBlockRenderer<WindowAleftDTileEntity> {
	public WindowAleftDTileRenderer() {
		super(new WindowAleftDBlockModel());
	}

	@Override
	public RenderType getRenderType(WindowAleftDTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
