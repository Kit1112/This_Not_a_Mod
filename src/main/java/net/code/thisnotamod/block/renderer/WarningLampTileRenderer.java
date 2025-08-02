package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.WarningLampBlockModel;
import net.code.thisnotamod.block.entity.WarningLampTileEntity;

public class WarningLampTileRenderer extends GeoBlockRenderer<WarningLampTileEntity> {
	public WarningLampTileRenderer() {
		super(new WarningLampBlockModel());
	}

	@Override
	public RenderType getRenderType(WarningLampTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
