package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.LightSwitchBlockModel;
import net.code.thisnotamod.block.entity.LightSwitchTileEntity;

public class LightSwitchTileRenderer extends GeoBlockRenderer<LightSwitchTileEntity> {
	public LightSwitchTileRenderer() {
		super(new LightSwitchBlockModel());
	}

	@Override
	public RenderType getRenderType(LightSwitchTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
