package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.MannequinDownBlockModel;
import net.code.thisnotamod.block.entity.MannequinDownTileEntity;

public class MannequinDownTileRenderer extends GeoBlockRenderer<MannequinDownTileEntity> {
	public MannequinDownTileRenderer() {
		super(new MannequinDownBlockModel());
	}

	@Override
	public RenderType getRenderType(MannequinDownTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
