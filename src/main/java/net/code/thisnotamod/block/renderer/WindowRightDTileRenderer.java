package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WindowRightDBlockModel;
import net.code.thisnotamod.block.entity.WindowRightDTileEntity;

public class WindowRightDTileRenderer extends GeoBlockRenderer<WindowRightDTileEntity> {
	public WindowRightDTileRenderer() {
		super(new WindowRightDBlockModel());
	}

	@Override
	public RenderType getRenderType(WindowRightDTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
