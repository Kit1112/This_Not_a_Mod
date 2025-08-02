package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VentCornerBlockModel;
import net.code.thisnotamod.block.entity.VentCornerTileEntity;

public class VentCornerTileRenderer extends GeoBlockRenderer<VentCornerTileEntity> {
	public VentCornerTileRenderer() {
		super(new VentCornerBlockModel());
	}

	@Override
	public RenderType getRenderType(VentCornerTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
