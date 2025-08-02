package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddlePlus1BlockModel;
import net.code.thisnotamod.block.entity.LampMiddlePlus1TileEntity;

public class LampMiddlePlus1TileRenderer extends GeoBlockRenderer<LampMiddlePlus1TileEntity> {
	public LampMiddlePlus1TileRenderer() {
		super(new LampMiddlePlus1BlockModel());
	}

	@Override
	public RenderType getRenderType(LampMiddlePlus1TileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
