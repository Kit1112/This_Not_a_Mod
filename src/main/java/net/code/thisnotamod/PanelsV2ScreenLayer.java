package net.code.thisnotamod.block.renderer;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.blaze3d.vertex.Tesselator;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphics;
import net.minecraft.client.renderer.MultiBufferSource;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.player.Inventory;
import io.netty.buffer.Unpooled;

import software.bernie.geckolib.renderer.layer.GeoRenderLayer;
import software.bernie.geckolib.renderer.GeoBlockRenderer;
import software.bernie.geckolib.cache.object.BakedGeoModel;

import net.code.thisnotamod.block.entity.PanelsV2TileEntity;
import net.code.thisnotamod.client.gui.SignalTunerScreen;
import net.code.thisnotamod.client.gui.PanelPlaybackScreen;
import net.code.thisnotamod.client.gui.PanelUpgradeScreen;
import net.code.thisnotamod.client.gui.SignalScannerScreen; // Проверь этот импорт
import net.code.thisnotamod.world.inventory.SignalTunerMenu;
import net.code.thisnotamod.world.inventory.PanelPlaybackMenu;
import net.code.thisnotamod.world.inventory.PanelUpgradeMenu;
import net.code.thisnotamod.world.inventory.SignalScannerMenu;
import net.code.thisnotamod.OBB;

import java.util.HashMap;
import java.util.Map;

public class PanelsV2ScreenLayer extends GeoRenderLayer<PanelsV2TileEntity> {

    private final Map<BlockPos, SignalTunerScreen> tunerScreens = new HashMap<>();
    private final Map<BlockPos, PanelPlaybackScreen> playbackScreens = new HashMap<>();
    private final Map<BlockPos, PanelUpgradeScreen> upgradeScreens = new HashMap<>();
    private final Map<BlockPos, SignalScannerScreen> searchScreens = new HashMap<>(); // Тип исправлен

    public PanelsV2ScreenLayer(GeoBlockRenderer<PanelsV2TileEntity> entityRendererIn) {
        super(entityRendererIn);
    }

    @Override
    public void render(PoseStack poseStack, PanelsV2TileEntity animatable, BakedGeoModel bakedModel, net.minecraft.client.renderer.RenderType renderType, MultiBufferSource bufferSource, com.mojang.blaze3d.vertex.VertexConsumer buffer, float partialTick, int packedLight, int packedOverlay) {
        
        BlockPos pos = animatable.getBlockPos();
        Minecraft mc = Minecraft.getInstance();

        for (OBB obb : animatable.getOBBs()) {
            String name = obb.zoneName();
            
            if ("Monitor_Download".equals(name)) {
                SignalTunerScreen screen = tunerScreens.computeIfAbsent(pos, p -> {
                    SignalTunerMenu menu = new SignalTunerMenu(0, mc.player.getInventory(), createBuf(p));
                    SignalTunerScreen s = new SignalTunerScreen(menu, mc.player.getInventory(), Component.empty());
                    s.init(mc, 640, 360);
                    return s;
                });
                renderScreen(poseStack, obb, pos, screen, partialTick, mc, 640, 360, -0.0111f, 0f);

            } else if ("Monitor_Listening".equals(name)) {
                PanelPlaybackScreen screen = playbackScreens.computeIfAbsent(pos, p -> {
                    PanelPlaybackMenu menu = new PanelPlaybackMenu(0, mc.player.getInventory(), createBuf(p));
                    PanelPlaybackScreen s = new PanelPlaybackScreen(menu, mc.player.getInventory(), Component.empty());
                    s.init(mc, 640, 360);
                    return s;
                });
                renderScreen(poseStack, obb, pos, screen, partialTick, mc, 640, 360, -0.0111f, 0f);

            } else if ("Monitor_Upgrade".equals(name)) {
                PanelUpgradeScreen screen = upgradeScreens.computeIfAbsent(pos, p -> {
                    PanelUpgradeMenu menu = new PanelUpgradeMenu(0, mc.player.getInventory(), createBuf(p));
                    PanelUpgradeScreen s = new PanelUpgradeScreen(menu, mc.player.getInventory(), Component.empty());
                    s.init(mc, 640, 360);
                    return s;
                });
                renderScreen(poseStack, obb, pos, screen, partialTick, mc, 640, 360, -0.0111f, 180f);

            } else if ("Monitor_Search".equals(name)) {
                SignalScannerScreen screen = searchScreens.computeIfAbsent(pos, p -> {
                    SignalScannerMenu menu = new SignalScannerMenu(0, mc.player.getInventory(), createBuf(p));
                    SignalScannerScreen s = new SignalScannerScreen(menu, mc.player.getInventory(), Component.empty());
                    s.init(mc, 640, 360);
                    return s;
                });
                renderScreen(poseStack, obb, pos, screen, partialTick, mc, 640, 360, -0.0111f, 180f);
            }
        }
    }

    private FriendlyByteBuf createBuf(BlockPos pos) {
        FriendlyByteBuf buf = new FriendlyByteBuf(Unpooled.buffer());
        buf.writeBlockPos(pos);
        return buf;
    }

    private void renderScreen(PoseStack poseStack, OBB obb, BlockPos pos, net.minecraft.client.gui.screens.Screen screen, float partialTick, Minecraft mc, int width, int height, float offsetZ, float additionalRotation) {
        poseStack.pushPose();

        double relX = obb.center().x - pos.getX();
        double relY = obb.center().y - pos.getY();
        double relZ = obb.center().z - pos.getZ();
        poseStack.translate(relX, relY, relZ);

        poseStack.mulPose(new org.joml.Quaternionf(
                (float) obb.rotation().x,
                (float) obb.rotation().y,
                (float) obb.rotation().z,
                (float) obb.rotation().w
        ));

        poseStack.mulPose(com.mojang.math.Axis.YP.rotationDegrees(90f + additionalRotation));
        poseStack.translate(0, 0, offsetZ);

        float scale = 1.5f / width;
        poseStack.scale(-scale, -scale, scale); 
        poseStack.translate(-width / 2.0f, -height / 2.0f, 0);

        MultiBufferSource.BufferSource immediate = MultiBufferSource.immediate(Tesselator.getInstance().getBuilder());
        GuiGraphics gg = new GuiGraphics(mc, immediate);
        
        gg.pose().last().pose().set(poseStack.last().pose());
        gg.pose().last().normal().set(poseStack.last().normal());

        try {
            screen.render(gg, -1, -1, partialTick);
            immediate.endBatch(); 
        } catch (Exception e) {
            e.printStackTrace();
        }

        poseStack.popPose();
    }
}