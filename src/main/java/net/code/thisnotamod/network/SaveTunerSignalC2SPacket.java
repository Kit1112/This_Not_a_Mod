package net.code.thisnotamod.network;

import com.mojang.logging.LogUtils;
import net.code.thisnotamod.block.entity.TestPlaybackBlockEntity;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraftforge.network.NetworkEvent;
import org.slf4j.Logger;

import java.util.function.Supplier;

public class SaveTunerSignalC2SPacket {
    private static final Logger LOGGER = LogUtils.getLogger();

    private final BlockPos panelPos;
    private final String objectKey; // может быть пустой
    private final int level;        // 0..3 (для тюнера придёт 0 или любое — но мы форсим 0)

    // ---- ctor (send from client)
    public SaveTunerSignalC2SPacket(BlockPos panelPos, String objectKey, int level) {
        this.panelPos = panelPos;
        this.objectKey = (objectKey == null) ? "" : objectKey;
        this.level = Math.max(0, Math.min(3, level));
    }

    // ---- ctor (decode)
    public SaveTunerSignalC2SPacket(FriendlyByteBuf buf) {
        this.panelPos = buf.readBlockPos();
        this.objectKey = buf.readUtf(256);
        this.level = buf.readVarInt();
    }

    // ---- encode
    public void toBytes(FriendlyByteBuf buf) {
        buf.writeBlockPos(panelPos);
        buf.writeUtf(objectKey, 256);
        buf.writeVarInt(level);
    }

    /** СЕРВЕР: принять сохранённый из тюнера сигнал и добавить в импорт-лист панели. */
    public static void handle(SaveTunerSignalC2SPacket msg, Supplier<NetworkEvent.Context> ctx) {
        ctx.get().enqueueWork(() -> {
            ServerPlayer sender = ctx.get().getSender();
            if (sender == null) return;

            ServerLevel levelSrv = sender.serverLevel();
            BlockPos pos = msg.panelPos;
            String objectKey = msg.objectKey == null ? "" : msg.objectKey.trim();
            final int lvlIncoming = msg.level;

            LOGGER.info("[SaveTunerSignalC2S] recv from {}: pos={}, key='{}', lvlIncoming={}",
                    sender.getGameProfile().getName(), pos, objectKey, lvlIncoming);

            // ТЮНЕР ВСЕГДА НУЛЕВОГО УРОВНЯ
            final int lvlForSave = 0;

            // Ищем сам плейбек либо у соседних позиций (если прислали координаты тюнера)
            TestPlaybackBlockEntity panel = null;
            BlockEntity be = levelSrv.getBlockEntity(pos);
            if (be instanceof TestPlaybackBlockEntity tp) {
                panel = tp;
            } else {
                BlockPos[] around = { pos.west(), pos.east(), pos.north(), pos.south(), pos.above(), pos.below() };
                for (BlockPos p : around) {
                    BlockEntity be2 = levelSrv.getBlockEntity(p);
                    if (be2 instanceof TestPlaybackBlockEntity tp2) { panel = tp2; break; }
                }
            }
            if (panel == null) {
                LOGGER.warn("[SaveTunerSignalC2S] no TestPlaybackBlockEntity around {}", pos);
                return;
            }
            LOGGER.info("[SaveTunerSignalC2S] resolved playback panel at {}", panel.getBlockPos());

            // Достаём id из objectKey вида "...<dot>123"
            int entryId = extractIdFromKey(objectKey);
            if (entryId < 0) {
                LOGGER.warn("[SaveTunerSignalC2S] cannot parse id from objectKey='{}' — skip", objectKey);
                return;
            }

            // Имя/size серверу не критичны — UI сам возьмёт из MASTER по id.
            String diskName = "";
            String size = "";

            panel.addImportedSignal(entryId, lvlForSave, diskName, size);
            LOGGER.info("[SaveTunerSignalC2S] added id={} with level={} to panel@{}",
                    entryId, lvlForSave, panel.getBlockPos());

            panel.setChanged();
            levelSrv.sendBlockUpdated(panel.getBlockPos(), panel.getBlockState(), panel.getBlockState(), 3);
        });
        ctx.get().setPacketHandled(true);
    }

    // ------ helpers ------

    /** Парсит последний числовой суффикс после точки: "aaa.bbb.42" -> 42, иначе -1. */
    private static int extractIdFromKey(String key) {
        if (key == null || key.isBlank()) return -1;
        int dot = key.lastIndexOf('.');
        String tail = (dot >= 0) ? key.substring(dot + 1) : key;
        try {
            return Integer.parseInt(tail.trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }
}
