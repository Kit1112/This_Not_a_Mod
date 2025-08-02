package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VentCornerHorizontalBlockModel;
import net.code.thisnotamod.block.entity.VentCornerHorizontalTileEntity;

public class VentCornerHorizontalTileRenderer extends GeoBlockRenderer<VentCornerHorizontalTileEntity> {
	public VentCornerHorizontalTileRenderer() {
		super(new VentCornerHorizontalBlockModel());
	}

	@Override
	public RenderType getRenderType(VentCornerHorizontalTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
