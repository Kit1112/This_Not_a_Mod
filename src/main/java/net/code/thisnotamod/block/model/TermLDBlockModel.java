package net.code.thisnotamod.block.model;

import software.bernie.geckolib.model.GeoModel;

import net.minecraft.resources.ResourceLocation;

import net.code.thisnotamod.block.entity.TermLDTileEntity;

public class TermLDBlockModel extends GeoModel<TermLDTileEntity> {
	@Override
	public ResourceLocation getAnimationResource(TermLDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
		return new ResourceLocation("thisnotamod", "animations/terminal_down_left.animation.json");
	}

	@Override
	public ResourceLocation getModelResource(TermLDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
		return new ResourceLocation("thisnotamod", "geo/terminal_down_left.geo.json");
	}

	@Override
	public ResourceLocation getTextureResource(TermLDTileEntity animatable) {
		final int blockstate = animatable.blockstateNew;
		if (blockstate == 1)
			return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
		if (blockstate == 2)
			return new ResourceLocation("thisnotamod", "textures/block/term_start_anim_int.png");
		if (blockstate == 3)
			return new ResourceLocation("thisnotamod", "textures/block/terminal.png");
		if (blockstate == 4)
			return new ResourceLocation("thisnotamod", "textures/block/term_anim_off.png");
		return new ResourceLocation("thisnotamod", "textures/block/term_off.png");
	}
}
