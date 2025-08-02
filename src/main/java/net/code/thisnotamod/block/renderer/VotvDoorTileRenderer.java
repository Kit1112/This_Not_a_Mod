package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.VotvDoorBlockModel;
import net.code.thisnotamod.block.entity.VotvDoorTileEntity;

public class VotvDoorTileRenderer extends GeoBlockRenderer<VotvDoorTileEntity> {
	public VotvDoorTileRenderer() {
		super(new VotvDoorBlockModel());
	}

	@Override
	public RenderType getRenderType(VotvDoorTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
