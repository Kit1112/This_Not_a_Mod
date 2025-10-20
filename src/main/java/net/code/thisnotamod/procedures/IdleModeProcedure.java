package net.code.thisnotamod.procedures;

import net.minecraftforge.eventbus.api.Event;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.entity.Entity;
import net.minecraft.network.chat.Component;
import net.minecraft.world.level.LevelAccessor;
import net.code.thisnotamod.entity.KerfuOmegaEntity;
import java.util.Comparator;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.chat.Component;
import net.minecraft.client.Minecraft;

import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.entity.KerfuOmegaEntity;
import net.code.thisnotamod.CustomTipOverlay;


public class IdleModeProcedure {
    public static void execute(LevelAccessor world, double x, double y, double z) {
        Entity nearest = world.getEntitiesOfClass(KerfuOmegaEntity.class,
                AABB.ofSize(new Vec3(x, y, z), 3, 3, 3), e -> true)
            .stream()
            .min(Comparator.comparingDouble(e -> e.distanceToSqr(x, y, z)))
            .orElse(null);

        if (nearest instanceof KerfuOmegaEntity mob) {
            mob.getEntityData().set(KerfuOmegaEntity.DATA_DATA_idle, true);   // включаем режим покоя
            mob.getEntityData().set(KerfuOmegaEntity.DATA_patroul, false); // выключаем патруль
            mob.getEntityData().set(KerfuOmegaEntity.DATA_serverList, ""); // сбрасываем задания на ремонт
        }

        Minecraft mc = Minecraft.getInstance();
if (mc != null && mc.level != null && mc.player != null) {
    CustomTipOverlay.queueTip(
        Component.literal("Ожидаю!"),
        new ItemStack(ThisnotamodModItems.INFOICON.get()),
        new ResourceLocation("thisnotamod", "hint")
    );
}

    }
}
