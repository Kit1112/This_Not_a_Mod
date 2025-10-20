package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.FridgeDownBlockModel;
import net.code.thisnotamod.block.entity.FridgeDownTileEntity;

public class FridgeDownTileRenderer extends GeoBlockRenderer<FridgeDownTileEntity> {
	public FridgeDownTileRenderer() {
		super(new FridgeDownBlockModel());
	}

	@Override
	public RenderType getRenderType(FridgeDownTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
