package net.code.thisnotamod.procedures;

import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.fml.common.Mod;

import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.item.ItemStack;

import java.util.Map;
import java.util.HashMap;
import java.util.UUID;
import java.util.function.Function;
import java.util.function.Supplier;

import net.code.thisnotamod.world.inventory.CraftingTableKerfuInterfaceMenu;
import net.code.thisnotamod.init.ThisnotamodModBlocks;
import net.code.thisnotamod.init.ThisnotamodModItems;
import net.code.thisnotamod.ThisnotamodMod;

@Mod.EventBusSubscriber(modid = ThisnotamodMod.MODID, bus = Mod.EventBusSubscriber.Bus.FORGE)
public class KerfuCraftRecalcOutputProcedure {

    // Был ли предмет в слоте результата в прошлом тике
    private static final Map<UUID, Boolean> prevHadOutput = new HashMap<>();
    // Снимок количеств ингредиентов (слоты 2..8) в разборке
    private static final Map<UUID, int[]>  prevDeconCounts = new HashMap<>();

    // Текущий режим
    private static final int MODE_NONE = 0, MODE_CRAFT = 1, MODE_DECON = 2;
    private static final Map<UUID, Integer> prevMode = new HashMap<>();

    // gate на новый экземпляр меню
    private static final Map<UUID, Integer> lastMenuId   = new HashMap<>();
    private static final Map<UUID, Boolean> skipOneTick  = new HashMap<>();

    // НОВОЕ: дебаунс изменения слота 0 (0 - прочее/пусто, 1 - blueprint, 2 - kerfu_block)
    private static final Map<UUID, Integer> lastSlot0Type = new HashMap<>();
    private static final Map<UUID, Integer> slotCooldown  = new HashMap<>();

    public static void execute(Entity entity) { /* no-op */ }

    @SubscribeEvent
    public static void onPlayerTick(TickEvent.PlayerTickEvent event) {
        if (event.phase != TickEvent.Phase.END) return;
        if (!(event.player instanceof ServerPlayer sp)) return;
        if (sp.level().isClientSide()) return;

        AbstractContainerMenu menu = sp.containerMenu;

        if (!(menu instanceof CraftingTableKerfuInterfaceMenu)) {
            UUID id = sp.getUUID();
            prevHadOutput.remove(id);
            prevDeconCounts.remove(id);
            prevMode.remove(id);
            lastMenuId.remove(id);
            skipOneTick.remove(id);
            lastSlot0Type.remove(id);
            slotCooldown.remove(id);
            return;
        }

        UUID pid = sp.getUUID();

        // ----- gate на новый контейнер -----
        int menuIdentity = System.identityHashCode(menu);
        Integer was = lastMenuId.get(pid);
        if (was == null || was != menuIdentity) {
            lastMenuId.put(pid, menuIdentity);
            prevHadOutput.remove(pid);
            prevDeconCounts.remove(pid);
            prevMode.put(pid, MODE_NONE);
            skipOneTick.put(pid, true);
            // также сбрасываем дебаунс слота 0
            lastSlot0Type.remove(pid);
            slotCooldown.remove(pid);
            return;
        }
        if (Boolean.TRUE.equals(skipOneTick.get(pid))) {
            skipOneTick.put(pid, false);
            return;
        }

        // ----- стабильно открытый GUI -----
        Map<?, ?> slots;
        if (!(menu instanceof Supplier<?> sup) || !(sup.get() instanceof Map<?, ?> m)) return;
        else slots = m;

        Function<Integer, ItemStack> get = (id) -> {
            Object s = slots.get(id);
            return (s instanceof Slot sl) ? sl.getItem() : ItemStack.EMPTY;
        };

        Slot out = (Slot) slots.get(1);
        ItemStack outNow = out != null ? out.getItem() : ItemStack.EMPTY;

        // ---- читаем слот 0 и тип содержимого ----
        ItemStack slot0 = get.apply(0);
        boolean slot0IsBlueprint = !slot0.isEmpty() && slot0.getItem() == ThisnotamodModItems.KERFU_BLUEPRINT.get();
        boolean slot0IsKerfuBlk  = !slot0.isEmpty() && slot0.getItem() == ThisnotamodModBlocks.KERFU_BLOCK.get().asItem();

        int slot0TypeNow = slot0IsKerfuBlk ? 2 : (slot0IsBlueprint ? 1 : 0);
        Integer slot0TypePrev = lastSlot0Type.get(pid);
        if (slot0TypePrev == null || !slot0TypePrev.equals(slot0TypeNow)) {
            // Содержимое слота 0 изменилось → дебаунсим 1 тик
            lastSlot0Type.put(pid, slot0TypeNow);
            slotCooldown.put(pid, 1);
        }

        Integer cool = slotCooldown.get(pid);
        if (cool != null && cool > 0) {
            slotCooldown.put(pid, cool - 1);
            // поддержим корректный prevHadOutput
            prevHadOutput.put(pid, out != null && !out.getItem().isEmpty());
            return;
        }

        // ---- режим из слота 0 ----
        int modeNow = MODE_NONE;
        if (slot0IsKerfuBlk) modeNow = MODE_DECON;
        else if (slot0IsBlueprint) modeNow = MODE_CRAFT;

        int modePrev = prevMode.getOrDefault(pid, MODE_NONE);
        boolean enteringDecon = (modePrev != MODE_DECON && modeNow == MODE_DECON);
        boolean enteringCraft = (modePrev != MODE_CRAFT && modeNow == MODE_CRAFT);
        prevMode.put(pid, modeNow);

        // ====== РАЗБОРКА ======
        if (modeNow == MODE_DECON) {

            // Вход в разборку — только на стабильном тике после смены слота 0
            if (enteringDecon) {
                boolean allEmpty = true;
                for (int i = 2; i <= 8; i++) {
                    if (!get.apply(i).isEmpty()) { allEmpty = false; break; }
                }
                if (allEmpty) {
                    // снять 1 шт. kerfu_block
                    if (slots.get(0) instanceof Slot s0) {
                        ItemStack st0 = s0.getItem();
                        st0.shrink(1);
                        s0.set(st0.getCount() <= 0 ? ItemStack.EMPTY : st0);
                        s0.setChanged();
                    }
                    // разложить детали строго один раз
                    if (slots.get(2) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModBlocks.KERFU_HEAD.get())); s.setChanged(); }
                    if (slots.get(3) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_HAND.get())); s.setChanged(); }
                    if (slots.get(4) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_BODY.get())); s.setChanged(); }
                    if (slots.get(5) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_HAND.get())); s.setChanged(); }
                    if (slots.get(6) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_WOMB.get())); s.setChanged(); }
                    if (slots.get(7) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_LEG.get())); s.setChanged(); }
                    if (slots.get(8) instanceof Slot s) { s.set(new ItemStack(ThisnotamodModItems.KERFU_LEG.get())); s.setChanged(); }

                    if (out != null) { out.set(ItemStack.EMPTY); out.setChanged(); }
                    sp.containerMenu.broadcastChanges();

                    // стартовая «снимка» для авто-сбора
                    int[] snap = new int[7];
                    for (int i = 0; i < 7; i++) {
                        ItemStack st = get.apply(2 + i);
                        snap[i] = st.isEmpty() ? 0 : st.getCount();
                    }
                    prevDeconCounts.put(pid, snap);
                } else {
                    // занято — не трогаем slot0 и не настраиваем де-кон трекер
                    prevDeconCounts.remove(pid);
                }
            } else {
                // активная разборка: детекция «забрал любую деталь» → автосбор
                int[] prev = prevDeconCounts.get(pid);
                if (prev != null) {
                    int[] curr = new int[7];
                    boolean tookAny = false;
                    for (int i = 0; i < 7; i++) {
                        ItemStack st = get.apply(2 + i);
                        curr[i] = st.isEmpty() ? 0 : st.getCount();
                        if (curr[i] < prev[i]) tookAny = true;
                    }
                    if (tookAny) {
                        for (int i = 2; i <= 8; i++) {
                            Object so = slots.get(i);
                            if (so instanceof Slot sl) {
                                ItemStack st = sl.getItem();
                                if (!st.isEmpty()) {
                                    sp.getInventory().placeItemBackInInventory(st.copy());
                                    sl.set(ItemStack.EMPTY);
                                    sl.setChanged();
                                }
                            }
                        }
                        sp.containerMenu.broadcastChanges();
                        prevDeconCounts.remove(pid);
                    } else {
                        prevDeconCounts.put(pid, curr);
                    }
                }
            }

            prevHadOutput.put(pid, out != null && !out.getItem().isEmpty());
            return;
        } else {
            // выходим из разборки
            prevDeconCounts.remove(pid);
        }

        // ====== КРАФТ ======
        boolean hasBlueprint = slot0IsBlueprint;

        boolean recipeOK =
                get.apply(2).getItem() == ThisnotamodModBlocks.KERFU_HEAD.get().asItem() &&
                get.apply(3).getItem() == ThisnotamodModItems.KERFU_HAND.get() &&
                get.apply(4).getItem() == ThisnotamodModItems.KERFU_BODY.get() &&
                get.apply(5).getItem() == ThisnotamodModItems.KERFU_HAND.get() &&
                get.apply(6).getItem() == ThisnotamodModItems.KERFU_WOMB.get() &&
                get.apply(7).getItem() == ThisnotamodModItems.KERFU_LEG.get() &&
                get.apply(8).getItem() == ThisnotamodModItems.KERFU_LEG.get();

        if (!hasBlueprint) recipeOK = false;

        boolean hadOutput = prevHadOutput.getOrDefault(pid, false);
        boolean nowHasOutput = (out != null && !outNow.isEmpty()
                && outNow.getItem() == ThisnotamodModBlocks.KERFU_BLOCK.get().asItem());

        // забрали результат → списать ингредиенты
        if (hadOutput && !nowHasOutput && recipeOK) {
            for (int i = 2; i <= 8; i++) {
                Object so = slots.get(i);
                if (so instanceof Slot sl) {
                    ItemStack item = sl.getItem();
                    if (!item.isEmpty()) {
                        item.shrink(1);
                        sl.set(item.getCount() <= 0 ? ItemStack.EMPTY : item);
                        sl.setChanged();
                    }
                }
            }
            sp.containerMenu.broadcastChanges();
        }

        // пересчёт результата
        boolean recipeOKAfterConsume =
                slot0IsBlueprint &&
                get.apply(2).getItem() == ThisnotamodModBlocks.KERFU_HEAD.get().asItem() &&
                get.apply(3).getItem() == ThisnotamodModItems.KERFU_HAND.get() &&
                get.apply(4).getItem() == ThisnotamodModItems.KERFU_BODY.get() &&
                get.apply(5).getItem() == ThisnotamodModItems.KERFU_HAND.get() &&
                get.apply(6).getItem() == ThisnotamodModItems.KERFU_WOMB.get() &&
                get.apply(7).getItem() == ThisnotamodModItems.KERFU_LEG.get() &&
                get.apply(8).getItem() == ThisnotamodModItems.KERFU_LEG.get();

        ItemStack want = recipeOKAfterConsume ? new ItemStack(ThisnotamodModBlocks.KERFU_BLOCK.get()) : ItemStack.EMPTY;
        if (out != null) {
            ItemStack cur = out.getItem();
            boolean same = ItemStack.isSameItemSameTags(cur, want) && cur.getCount() == want.getCount();
            if (!same) {
                out.set(want);
                out.setChanged();
                sp.containerMenu.broadcastChanges();
            }
        }

        prevHadOutput.put(pid, out != null && !out.getItem().isEmpty());
    }
}
