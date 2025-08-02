package net.code.thisnotamod.block.renderer;

import software.bernie.geckolib.renderer.GeoBlockRenderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.renderer.MultiBufferSource;

import net.code.thisnotamod.block.model.TableKitchenBlockModel;
import net.code.thisnotamod.block.entity.TableKitchenTileEntity;

public class TableKitchenTileRenderer extends GeoBlockRenderer<TableKitchenTileEntity> {
	public TableKitchenTileRenderer() {
		super(new TableKitchenBlockModel());
	}

	@Override
	public RenderType getRenderType(TableKitchenTileEntity animatable, ResourceLocation texture, MultiBufferSource bufferSource, float partialTick) {
		return RenderType.entityTranslucent(getTextureLocation(animatable));
	}
}
