package net.code.thisnotamod.client;

import net.minecraft.client.Minecraft;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.registries.ForgeRegistries;

@Mod.EventBusSubscriber(value = Dist.CLIENT, bus = Mod.EventBusSubscriber.Bus.MOD, modid = "thisnotamod")
public final class TipClientHandlers {
    private TipClientHandlers(){}

    public static void handleShowTip(String text, ResourceLocation iconId, ResourceLocation soundId) {
        var mc = Minecraft.getInstance();
        if (mc == null) return;

        mc.execute(() -> {
            if (mc.level == null) return;
            Item it = ForgeRegistries.ITEMS.getValue(iconId);
            ItemStack icon = (it == null) ? ItemStack.EMPTY : new ItemStack(it);
            net.code.thisnotamod.CustomTipOverlay.queueTip(
                    net.minecraft.network.chat.Component.literal(text),
                    icon,
                    soundId
            );
        });
    }
}
