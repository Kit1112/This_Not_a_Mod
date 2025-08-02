
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.code.thisnotamod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;

import net.minecraft.world.entity.decoration.PaintingVariant;

import net.code.thisnotamod.ThisnotamodMod;

public class ThisnotamodModPaintings {
	public static final DeferredRegister<PaintingVariant> REGISTRY = DeferredRegister.create(ForgeRegistries.PAINTING_VARIANTS, ThisnotamodMod.MODID);
	public static final RegistryObject<PaintingVariant> KARTINA = REGISTRY.register("kartina", () -> new PaintingVariant(80, 48));
}
