package net.code.thisnotamod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.core.BlockPos;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.network.chat.Component;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraftforge.network.NetworkHooks;

import io.netty.buffer.Unpooled;

import java.util.Map;
import java.util.HashMap;
import java.util.UUID;

import net.code.thisnotamod.world.inventory.CraftingTableBaseInterfaceMenu;
import net.code.thisnotamod.world.inventory.CraftingTableKerfuInterfaceMenu;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.code.thisnotamod.ThisnotamodMod;

public class CraftTabSlot0ChangedProcedure {

    // защита от повторного открытия во время переключения
    private static boolean switching = false;

    // запоминаем, был ли в Kerfu в слоте 0 именно blueprint (по игроку);
    // нужно, чтобы НЕ закрывать Kerfu при разборке kerfu_block
    private static final Map<UUID, Boolean> kerfuPrevHadBlueprint = new HashMap<>();

    public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {

        CreateDataMapProcedure.execute(entity);

        if (!(entity instanceof ServerPlayer serverPlayer)) return;
        if (switching) return;

        AbstractContainerMenu menu = serverPlayer.containerMenu;
        if (menu == null || menu.slots == null || menu.slots.isEmpty()) return;

        // === ИЗ БАЗОВОГО → В KERFU ===
        if (menu instanceof CraftingTableBaseInterfaceMenu) {
            // ровно один тик — чтобы слот и carried были в финальном состоянии после клика
            ThisnotamodMod.queueServerWork(1, () -> {
                if (!(serverPlayer.containerMenu instanceof CraftingTableBaseInterfaceMenu)) return;

                Slot slot0 = serverPlayer.containerMenu.slots.get(0);
                ItemStack slotStack = (slot0 != null) ? slot0.getItem() : ItemStack.EMPTY;

                boolean isBlueprint  = !slotStack.isEmpty() && slotStack.getItem() == ThisnotamodModItems.KERFU_BLUEPRINT.get();
                boolean isKerfuBlock = !slotStack.isEmpty() && slotStack.getItem() == ThisnotamodModBlocks.KERFU_BLOCK.get().asItem();

                // Открываем Kerfu как по чертежу, так и по kerfu_block (для разборки)
                if (isBlueprint || isKerfuBlock) {
                    switching = true;
                    try {
                        // фактический предмет на курсоре ПОСЛЕ клика
                        ItemStack carriedNow = serverPlayer.containerMenu.getCarried().copy();

                        // если курсор держит тот же предмет, что мы положили в слот 0, чистим
                        if (!carriedNow.isEmpty() &&
                                (carriedNow.getItem() == ThisnotamodModItems.KERFU_BLUEPRINT.get()
                                 || carriedNow.getItem() == ThisnotamodModBlocks.KERFU_BLOCK.get().asItem())) {
                            carriedNow = ItemStack.EMPTY;
                        }

                        // очистить курсор ДО открытия, чтобы старый контейнер не переложил предмет в инвентарь
                        serverPlayer.containerMenu.setCarried(ItemStack.EMPTY);

                        NetworkHooks.openScreen(serverPlayer, new net.minecraft.world.MenuProvider() {
                            @Override
                            public Component getDisplayName() {
                                return Component.literal("CraftingTableKerfuInterface");
                            }

                            @Override
                            public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                                return new CraftingTableKerfuInterfaceMenu(
                                        id, inv,
                                        new FriendlyByteBuf(Unpooled.buffer())
                                                .writeBlockPos(new BlockPos((int) x, (int) y, (int) z))
                                );
                            }
                        }, new BlockPos((int) x, (int) y, (int) z));

                        // вернуть то, что должно остаться на курсоре
                        serverPlayer.containerMenu.setCarried(carriedNow);
                        serverPlayer.containerMenu.broadcastChanges();

                        // при входе в Kerfu запомним, был ли именно blueprint
                        kerfuPrevHadBlueprint.put(serverPlayer.getUUID(), isBlueprint);

                    } finally {
                        switching = false;
                    }
                }
            });
        }

        // === ИЗ KERFU → В БАЗОВЫЙ (ТОЛЬКО ЕСЛИ УБРАЛИ ИМЕННО ЧЕРТЁЖ) ===
        else if (menu instanceof CraftingTableKerfuInterfaceMenu) {
            ThisnotamodMod.queueServerWork(1, () -> {
                if (!(serverPlayer.containerMenu instanceof CraftingTableKerfuInterfaceMenu)) return;

                UUID pid = serverPlayer.getUUID();

                Slot slot0 = serverPlayer.containerMenu.slots.get(0);
                ItemStack slotStack = (slot0 != null) ? slot0.getItem() : ItemStack.EMPTY;

                boolean hasBlueprintNow  = !slotStack.isEmpty() && slotStack.getItem() == ThisnotamodModItems.KERFU_BLUEPRINT.get();
                boolean slot0EmptyNow    = slotStack.isEmpty();

                boolean hadBlueprintBefore = kerfuPrevHadBlueprint.getOrDefault(pid, false);
                // обновляем флажок на текущий кадр
                kerfuPrevHadBlueprint.put(pid, hasBlueprintNow);

                // Закрываем ТОЛЬКО по переходу "раньше был blueprint, теперь пусто"
                if (hadBlueprintBefore && slot0EmptyNow) {
                    switching = true;
                    try {
                        ItemStack carriedNow = serverPlayer.containerMenu.getCarried().copy();
                        serverPlayer.containerMenu.setCarried(ItemStack.EMPTY);

                        NetworkHooks.openScreen(serverPlayer, new net.minecraft.world.MenuProvider() {
                            @Override
                            public Component getDisplayName() {
                                return Component.literal("CraftingTableBaseInterface");
                            }

                            @Override
                            public AbstractContainerMenu createMenu(int id, Inventory inv, Player p) {
                                return new CraftingTableBaseInterfaceMenu(
                                        id, inv,
                                        new FriendlyByteBuf(Unpooled.buffer())
                                                .writeBlockPos(new BlockPos((int) x, (int) y, (int) z))
                                );
                            }
                        }, new BlockPos((int) x, (int) y, (int) z));

                        // вернуть предмет на курсор — без автопереноса и без дубля
                        serverPlayer.containerMenu.setCarried(carriedNow);
                        serverPlayer.containerMenu.broadcastChanges();
                    } finally {
                        switching = false;
                    }
                }

                // если в слоте 0 kerfu_block (или он обнулился из-за разборки) — НЕ закрываем автоматически
            });
        }
    }
}
