package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.CraftingTableVotvBlockModel;
import net.code.thisnotamod.block.entity.CraftingTableVotvTileEntity;

public class CraftingTableVotvTileRenderer extends GeoBlockRenderer<CraftingTableVotvTileEntity> {
	public CraftingTableVotvTileRenderer() {
		super(new CraftingTableVotvBlockModel());
	}

	@Override
	public RenderType getRenderType(CraftingTableVotvTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
