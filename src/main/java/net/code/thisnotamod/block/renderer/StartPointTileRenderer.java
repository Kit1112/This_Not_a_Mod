package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.StartPointBlockModel;
import net.code.thisnotamod.block.entity.StartPointTileEntity;

public class StartPointTileRenderer extends GeoBlockRenderer<StartPointTileEntity> {
	public StartPointTileRenderer() {
		super(new StartPointBlockModel());
	}

	@Override
	public RenderType getRenderType(StartPointTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
