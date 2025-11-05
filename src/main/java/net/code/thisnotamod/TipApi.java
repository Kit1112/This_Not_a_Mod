package net.code.thisnotamod;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.network.PacketDistributor;

public final class TipApi {
    private TipApi(){}

    public static void show(LevelAccessor world, Entity ctxEntity, String text, ItemStack iconStack, ResourceLocation soundId) {
        if (!(world instanceof Level level)) return;

        String txt = (text == null || text.isBlank()) ? "Текст-заглушка" : text;
        ResourceLocation iconId = null;
        if (iconStack != null && !iconStack.isEmpty()) {
            Item it = iconStack.getItem();
            iconId = ForgeRegistries.ITEMS.getKey(it);
        }
        if (iconId == null) {
            iconId = ForgeRegistries.ITEMS.getKey(net.code.thisnotamod.init.ThisnotamodModItems.INFOICON.get());
        }
        ResourceLocation snd = (soundId != null) ? soundId : new ResourceLocation("thisnotamod", "hint");

        if (level.isClientSide()) {
            // клиент: рисуем напрямую
            net.code.thisnotamod.client.TipClientHandlers.handleShowTip(txt, iconId, snd);
        } else {
            // сервер: отправляем пакетом конкретному игроку (если есть)
            if (ctxEntity instanceof ServerPlayer sp) {
                net.code.thisnotamod.network.TipNetworking.CHANNEL.send(
    net.minecraftforge.network.PacketDistributor.PLAYER.with(() -> sp),
    new net.code.thisnotamod.network.ShowTipMessage(txt, iconId, snd)
);
            }
        }
    }

    public static void show(LevelAccessor w, Entity e, String text) {
        show(w, e, text, ItemStack.EMPTY, null);
    }
    public static void show(LevelAccessor w, Entity e, String text, ItemStack icon) {
        show(w, e, text, icon, null);
    }
    public static void show(LevelAccessor w, Entity e, String text, String soundIdStr) {
        show(w, e, text, ItemStack.EMPTY,
                (soundIdStr == null || soundIdStr.isBlank())
                        ? new ResourceLocation("thisnotamod", "hint")
                        : (soundIdStr.indexOf(':') >= 0 ? new ResourceLocation(soundIdStr)
                                                        : new ResourceLocation("thisnotamod", soundIdStr)));
    }
}
