package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.CraftingTableRBlockModel;
import net.code.thisnotamod.block.entity.CraftingTableRTileEntity;

public class CraftingTableRTileRenderer extends GeoBlockRenderer<CraftingTableRTileEntity> {
	public CraftingTableRTileRenderer() {
		super(new CraftingTableRBlockModel());
	}

	@Override
	public RenderType getRenderType(CraftingTableRTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
