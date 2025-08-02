package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LampMiddlePlus1UppedBlockModel;
import net.code.thisnotamod.block.entity.LampMiddlePlus1UppedTileEntity;

public class LampMiddlePlus1UppedTileRenderer extends GeoBlockRenderer<LampMiddlePlus1UppedTileEntity> {
	public LampMiddlePlus1UppedTileRenderer() {
		super(new LampMiddlePlus1UppedBlockModel());
	}

	@Override
	public RenderType getRenderType(LampMiddlePlus1UppedTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
