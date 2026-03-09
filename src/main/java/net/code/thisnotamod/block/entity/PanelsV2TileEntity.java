package net.code.thisnotamod.block.entity;

import software.bernie.geckolib.util.GeckoLibUtil;
import software.bernie.geckolib.core.object.PlayState;
import software.bernie.geckolib.core.animation.RawAnimation;
import software.bernie.geckolib.core.animation.AnimationState;
import software.bernie.geckolib.core.animation.AnimationController;
import software.bernie.geckolib.core.animation.AnimatableManager;
import software.bernie.geckolib.core.animatable.instance.AnimatableInstanceCache;
import software.bernie.geckolib.animatable.GeoBlockEntity;

import net.minecraftforge.items.wrapper.SidedInvWrapper;
import net.minecraftforge.items.IItemHandler;
import net.minecraftforge.common.util.LazyOptional;
import net.minecraftforge.common.capabilities.ForgeCapabilities;
import net.minecraftforge.common.capabilities.Capability;

import net.minecraft.world.level.block.state.properties.IntegerProperty;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.entity.RandomizableContainerBlockEntity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.inventory.ChestMenu;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.entity.player.Inventory;
import net.minecraft.world.WorldlyContainer;
import net.minecraft.world.ContainerHelper;
import net.minecraft.network.protocol.game.ClientboundBlockEntityDataPacket;
import net.minecraft.network.chat.Component;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.NonNullList;
import net.minecraft.core.Direction;
import net.minecraft.core.BlockPos;
import net.minecraft.world.phys.AABB;

import net.code.thisnotamod.init.ThisnotamodModBlockEntities;
import net.code.thisnotamod.block.PanelsV2Block;

import javax.annotation.Nullable;

import java.util.stream.IntStream;
import java.util.List;
import java.util.ArrayList;

import net.code.thisnotamod.OBBEntity;
import net.code.thisnotamod.OBB;
import org.joml.Vector3d;
import org.joml.Quaterniond;

public class PanelsV2TileEntity extends RandomizableContainerBlockEntity implements GeoBlockEntity, WorldlyContainer, OBBEntity {
    private final AnimatableInstanceCache cache = GeckoLibUtil.createInstanceCache(this);
    private NonNullList<ItemStack> stacks = NonNullList.<ItemStack>withSize(9, ItemStack.EMPTY);
    private final LazyOptional<? extends IItemHandler>[] handlers = SidedInvWrapper.create(this, Direction.values());

    public PanelsV2TileEntity(BlockPos pos, BlockState state) {
        super(ThisnotamodModBlockEntities.PANELS_V_2.get(), pos, state);
    }

    // --- АНИМАЦИИ ---
    private PlayState predicate(AnimationState event) {
        String animationprocedure = ("" + this.getBlockState().getValue(PanelsV2Block.ANIMATION));
        if (animationprocedure.equals("0")) {
            return event.setAndContinue(RawAnimation.begin().thenLoop(animationprocedure));
        }
        return PlayState.STOP;
    }

    String prevAnim = "0";

    private PlayState procedurePredicate(AnimationState event) {
        String animationprocedure = ("" + this.getBlockState().getValue(PanelsV2Block.ANIMATION));
        if (!animationprocedure.equals("0") && event.getController().getAnimationState() == AnimationController.State.STOPPED || (!animationprocedure.equals(prevAnim) && !animationprocedure.equals("0"))) {
            if (!animationprocedure.equals(prevAnim))
                event.getController().forceAnimationReset();
            event.getController().setAnimation(RawAnimation.begin().thenPlay(animationprocedure));
            if (event.getController().getAnimationState() == AnimationController.State.STOPPED) {
                if (this.getBlockState().getBlock().getStateDefinition().getProperty("animation") instanceof IntegerProperty _integerProp)
                    level.setBlock(this.getBlockPos(), this.getBlockState().setValue(_integerProp, 0), 3);
                event.getController().forceAnimationReset();
            }
        } else if (animationprocedure.equals("0")) {
            prevAnim = "0";
            return PlayState.STOP;
        }
        prevAnim = animationprocedure;
        return PlayState.CONTINUE;
    }

    @Override
    public void registerControllers(AnimatableManager.ControllerRegistrar data) {
        data.add(new AnimationController<PanelsV2TileEntity>(this, "controller", 0, this::predicate));
        data.add(new AnimationController<PanelsV2TileEntity>(this, "procedurecontroller", 0, this::procedurePredicate));
    }

    @Override
    public AnimatableInstanceCache getAnimatableInstanceCache() {
        return this.cache;
    }

    // --- ИНВЕНТАРЬ И СОХРАНЕНИЕ ---
    @Override
    public void load(CompoundTag compound) {
        super.load(compound);
        if (!this.tryLoadLootTable(compound))
            this.stacks = NonNullList.withSize(this.getContainerSize(), ItemStack.EMPTY);
        ContainerHelper.loadAllItems(compound, this.stacks);
    }

    @Override
    public void saveAdditional(CompoundTag compound) {
        super.saveAdditional(compound);
        if (!this.trySaveLootTable(compound)) {
            ContainerHelper.saveAllItems(compound, this.stacks);
        }
    }

    @Override
    public ClientboundBlockEntityDataPacket getUpdatePacket() {
        return ClientboundBlockEntityDataPacket.create(this);
    }

    @Override
    public CompoundTag getUpdateTag() {
        return this.saveWithFullMetadata();
    }

    @Override
    public int getContainerSize() {
        return stacks.size();
    }

    @Override
    public boolean isEmpty() {
        for (ItemStack itemstack : this.stacks)
            if (!itemstack.isEmpty())
                return false;
        return true;
    }

    @Override
    public Component getDefaultName() {
        return Component.literal("panels_v_2");
    }

    @Override
    public int getMaxStackSize() {
        return 64;
    }

    @Override
    public AbstractContainerMenu createMenu(int id, Inventory inventory) {
        return ChestMenu.threeRows(id, inventory);
    }

    @Override
    public Component getDisplayName() {
        return Component.literal("Панели");
    }

    @Override
    protected NonNullList<ItemStack> getItems() {
        return this.stacks;
    }

    @Override
    protected void setItems(NonNullList<ItemStack> stacks) {
        this.stacks = stacks;
    }

    @Override
    public boolean canPlaceItem(int index, ItemStack stack) {
        return true;
    }

    @Override
    public int[] getSlotsForFace(Direction side) {
        return IntStream.range(0, this.getContainerSize()).toArray();
    }

    @Override
    public boolean canPlaceItemThroughFace(int index, ItemStack stack, @Nullable Direction direction) {
        return this.canPlaceItem(index, stack);
    }

    @Override
    public boolean canTakeItemThroughFace(int index, ItemStack stack, Direction direction) {
        return true;
    }

    @Override
    public <T> LazyOptional<T> getCapability(Capability<T> capability, @Nullable Direction facing) {
        if (!this.remove && facing != null && capability == ForgeCapabilities.ITEM_HANDLER)
            return handlers[facing.ordinal()].cast();
        return super.getCapability(capability, facing);
    }

    @Override
    public void setRemoved() {
        super.setRemoved();
        for (LazyOptional<? extends IItemHandler> handler : handlers)
            handler.invalidate();
    }

    // --- КЭШ И ОПТИМИЗАЦИЯ OBB ---
    private List<OBB> cachedOBBs = null;
    private AABB broadBox = null;

    public AABB getBroadBox() {
        if (broadBox == null) {
            // Расширяем бокс, так как модель довольно большая (почти 4 блока в стороны)
            broadBox = new AABB(this.worldPosition).inflate(4.2);
        }
        return broadBox;
    }
    
    @Override
    public AABB getRenderBoundingBox() {
        // Заставляем движок рендера использовать твою гигантскую коробку
        return this.getBroadBox();
    }

    @Override
    public List<OBB> getOBBs() {
        if (cachedOBBs != null) return cachedOBBs;

        List<OBB> zones = new ArrayList<>();
        double bx = this.worldPosition.getX();
        double by = this.worldPosition.getY();
        double bz = this.worldPosition.getZ();

        // Добавляем новые зоны с учетом мировых координат
        zones.add(new OBB(new Vector3d(bx + 0.1563, by + 1.0049, bz + 1.4059), new Vector3d(0.4688, 0.0313, 0.1563), new Quaterniond(-0.0632, 0, 0, 0.998), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 0.1563, by + 1.0049, bz + 1.4059), new Vector3d(0.4688, 0.0313, 0.1563), new Quaterniond(-0.0632, 0, 0, 0.998), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.5, by + 1.0313, bz + 1.4375), new Vector3d(0.0625, 0.0313, 0.125), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.5, by + 1.0313, bz + 1.4375), new Vector3d(0.0625, 0.0313, 0.125), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.0313, bz + 2), new Vector3d(0.25, 0.0313, 0.25), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.0938, bz + 2), new Vector3d(0.125, 0.0313, 0.125), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.1563, bz + 1.9688), new Vector3d(0.375, 0.0313, 0.3438), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.5, bz + 2.2813), new Vector3d(0.375, 0.3125, 0.2188), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 0.5625, by + 1.4063, bz + 2.0625), new Vector3d(0.1875, 0.4063, 0.4375), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.5313, bz + 1.9063), new Vector3d(0.4375, 0.3438, 0.1563), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.2188, bz + 1.6875), new Vector3d(0.4375, 0.0313, 0.0625), new Quaterniond(0, 0, 0, 1), "PC4"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.5, bz + 1.6875), new Vector3d(0.375, 0.25, 0.0313), new Quaterniond(0, 0, 0, 1), "Monitor_PC"));
        zones.add(new OBB(new Vector3d(bx - 0.125, by + 1.8125, bz + 1.6875), new Vector3d(0.4375, 0.0625, 0.0625), new Quaterniond(0, 0, 0, 1), "PC1"));
        zones.add(new OBB(new Vector3d(bx - 0.5313, by + 1.5, bz + 1.6875), new Vector3d(0.0313, 0.25, 0.0625), new Quaterniond(0, 0, 0, 1), "PC2"));
        zones.add(new OBB(new Vector3d(bx + 0.2813, by + 1.5, bz + 1.6875), new Vector3d(0.0313, 0.25, 0.0625), new Quaterniond(0, 0, 0, 1), "PC3"));
        zones.add(new OBB(new Vector3d(bx + 0, by + 2.375, bz + 2.5625), new Vector3d(2.8125, 0.125, 0.125), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2, by + 1.4688, bz + 2.5625), new Vector3d(0.8125, 0.4688, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 0, by + 0.6563, bz + 2.5625), new Vector3d(2.8125, 0.1563, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2, by + 2.0938, bz + 2.5625), new Vector3d(0.8125, 0.1563, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 1.875, by + 0.25, bz + 2.5625), new Vector3d(0.9375, 0.25, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 1.125, by + 2.0938, bz + 2.5625), new Vector3d(0.0625, 0.1563, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 0, by + 0.9063, bz + 1.9063), new Vector3d(2.8125, 0.0938, 0.7813), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2, by + 1.4688, bz + 2.5625), new Vector3d(0.8125, 0.4688, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2, by + 2.0938, bz + 2.5625), new Vector3d(0.8125, 0.1563, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 1.875, by + 0.25, bz + 2.5625), new Vector3d(0.9375, 0.25, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 1.125, by + 2.0938, bz + 2.5625), new Vector3d(0.0625, 0.1563, 0.0625), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.5819, by + 0.2813, bz - 0.8909), new Vector3d(1, 0.2813, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.553, by + 0.7813, bz - 0.8792), new Vector3d(1.0313, 0.2188, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.6063, by + 1.0361, bz - 0.9008), new Vector3d(0.375, 0.0625, 1.4375), new Quaterniond(0.0233, 0.1894, 0.1196, 0.9743), "Panel_download_2"));
        zones.add(new OBB(new Vector3d(bx + 2.0917, by + 0.9654, bz - 0.6929), new Vector3d(0.5313, 0.0625, 1.4375), new Quaterniond(0.005, 0.1907, 0.0257, 0.9813), "Panel_download_1"));
        zones.add(new OBB(new Vector3d(bx + 3.2194, by + 1.0938, bz - 1.1485), new Vector3d(0.3125, 0.0938, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.7993, by + 1.7188, bz - 0.9787), new Vector3d(0.005, 0.4688, 0.75), new Quaterniond(0, 0.1908, 0, 0.9816), "Monitor_Download"));
        zones.add(new OBB(new Vector3d(bx + 2.9296, by + 1.7188, bz - 1.0314), new Vector3d(0.125, 0.6563, 0.9375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.3353, by + 1.5313, bz - 1.1953), new Vector3d(0.125, 0.3438, 0.5625), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.1325, by + 1.625, bz - 1.1134), new Vector3d(0.0938, 0.4375, 0.8125), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.774, by + 1.7813, bz - 2.4178), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.8041, by + 1.7813, bz + 0.132), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.2773, by + 2.4375, bz - 1.1719), new Vector3d(0.25, 0.0625, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.5704, by + 0.2813, bz + 1.0397), new Vector3d(1, 0.2813, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.5415, by + 0.7813, bz + 1.028), new Vector3d(1.0313, 0.2188, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "Panel_Listening_1"));
        zones.add(new OBB(new Vector3d(bx + 2.5948, by + 1.0361, bz + 1.0496), new Vector3d(0.375, 0.0625, 1.4375), new Quaterniond(-0.0233, -0.1894, 0.1196, 0.9743), "Panel_Listening_2"));
        zones.add(new OBB(new Vector3d(bx + 2.0802, by + 0.9654, bz + 0.8417), new Vector3d(0.5313, 0.0625, 1.4375), new Quaterniond(-0.005, -0.1907, 0.0257, 0.9813), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.2079, by + 1.0938, bz + 1.2973), new Vector3d(0.3125, 0.0938, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.7877, by + 1.7188, bz + 1.1275), new Vector3d(0.005, 0.4688, 0.75), new Quaterniond(0, -0.1908, 0, 0.9816), "Monitor_Listening"));
        zones.add(new OBB(new Vector3d(bx + 2.9181, by + 1.7188, bz + 1.1802), new Vector3d(0.125, 0.6563, 0.9375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.3238, by + 1.5313, bz + 1.3441), new Vector3d(0.125, 0.3438, 0.5625), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.121, by + 1.625, bz + 1.2622), new Vector3d(0.0938, 0.4375, 0.8125), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.7926, by + 1.7813, bz + 0.0168), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.7624, by + 1.7813, bz + 2.5666), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 3.2658, by + 2.4375, bz + 1.3207), new Vector3d(0.25, 0.0625, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx + 2.0625, by + 0.4375, bz - 2.3125), new Vector3d(0.875, 0.4375, 0.4375), new Quaterniond(0, 0, 0, 1), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.5819, by + 0.2813, bz - 0.8909), new Vector3d(1, 0.2813, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.553, by + 0.7813, bz - 0.8792), new Vector3d(1.0313, 0.2188, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.6063, by + 1.0361, bz - 0.9008), new Vector3d(0.375, 0.0625, 1.4375), new Quaterniond(0.0233, -0.1894, -0.1196, 0.9743), "Panel_Upgrade_2"));
        zones.add(new OBB(new Vector3d(bx - 2.0917, by + 0.9654, bz - 0.6929), new Vector3d(0.5313, 0.0625, 1.4375), new Quaterniond(0.005, -0.1907, -0.0257, 0.9813), "Panel_Upgrade_1"));
        zones.add(new OBB(new Vector3d(bx - 3.2194, by + 1.0938, bz - 1.1485), new Vector3d(0.3125, 0.0938, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.7993, by + 1.7188, bz - 0.9787), new Vector3d(0.005, 0.4688, 0.75), new Quaterniond(0, -0.1908, 0, 0.9816), "Monitor_Upgrade"));
        zones.add(new OBB(new Vector3d(bx - 2.9296, by + 1.7188, bz - 1.0314), new Vector3d(0.125, 0.6563, 0.9375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.3353, by + 1.5313, bz - 1.1953), new Vector3d(0.125, 0.3438, 0.5625), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.1325, by + 1.625, bz - 1.1134), new Vector3d(0.0938, 0.4375, 0.8125), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.774, by + 1.7813, bz - 2.4178), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.8041, by + 1.7813, bz + 0.132), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.2773, by + 2.4375, bz - 1.1719), new Vector3d(0.25, 0.0625, 1.4375), new Quaterniond(0, -0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.5704, by + 0.2813, bz + 1.0397), new Vector3d(1, 0.2813, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.5415, by + 0.7813, bz + 1.028), new Vector3d(1.0313, 0.2188, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.5948, by + 1.0361, bz + 1.0496), new Vector3d(0.375, 0.0625, 1.4375), new Quaterniond(-0.0233, 0.1894, -0.1196, 0.9743), "Panel_Search_2"));
        zones.add(new OBB(new Vector3d(bx - 2.0802, by + 0.9654, bz + 0.8417), new Vector3d(0.5313, 0.0625, 1.4375), new Quaterniond(-0.005, 0.1907, -0.0257, 0.9813), "Panel_Search_1"));
        zones.add(new OBB(new Vector3d(bx - 3.2079, by + 1.0938, bz + 1.2973), new Vector3d(0.3125, 0.0938, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.7877, by + 1.7188, bz + 1.1275), new Vector3d(0.005, 0.4688, 0.75), new Quaterniond(0, 0.1908, 0, 0.9816), "Monitor_Search"));
        zones.add(new OBB(new Vector3d(bx - 2.9181, by + 1.7188, bz + 1.1802), new Vector3d(0.125, 0.6563, 0.9375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.3238, by + 1.5313, bz + 1.3441), new Vector3d(0.125, 0.3438, 0.5625), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.121, by + 1.625, bz + 1.2622), new Vector3d(0.0938, 0.4375, 0.8125), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.7926, by + 1.7813, bz + 0.0168), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.7624, by + 1.7813, bz + 2.5666), new Vector3d(0.125, 0.5938, 0.0938), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 3.2658, by + 2.4375, bz + 1.3207), new Vector3d(0.25, 0.0625, 1.4375), new Quaterniond(0, 0.1908, 0, 0.9816), "CUBE"));
        zones.add(new OBB(new Vector3d(bx - 2.0625, by + 0.4375, bz - 2.3125), new Vector3d(0.875, 0.4375, 0.4375), new Quaterniond(0, 0, 0, 1), "CUBE"));

        cachedOBBs = zones;
        return cachedOBBs;
    }
}