package com.thisnotamod.votv_questing.client.sound;

import net.minecraft.client.Minecraft;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.resources.sounds.AbstractTickableSoundInstance;
import net.minecraft.client.resources.sounds.SoundInstance;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.client.event.sound.PlaySoundEvent;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.code.thisnotamod.init.ThisnotamodModSounds;

import java.util.Random;

@Mod.EventBusSubscriber(value = Dist.CLIENT, bus = Mod.EventBusSubscriber.Bus.FORGE)
public final class QuestingAmbientController {

    private static final ResourceLocation QUESTING_DIM =
            new ResourceLocation("thisnotamod:votv_questing");

    private static final int FADE_OUT_TICKS = 100;
    private static final int MIN_DELAY = 12000;
    private static final int MAX_DELAY = 24000;
    private static final long DAY_LENGTH = 24000L;

    private static int ticksUntilNext;
    private static int fadeCounter = -1;
    private static LoopingAmbientSound current;
    private static ResourceLocation lastPlayedId = null;
    private static final Random RNG = new Random();

    private static int debugCounter = 0;

    @SubscribeEvent
    public static void onClientTick(TickEvent.ClientTickEvent e) {
        if (e.phase != TickEvent.Phase.END) return;
        Minecraft mc = Minecraft.getInstance();
        LocalPlayer player = mc.player;
        if (player == null) return;

        long time = player.level().getDayTime() % DAY_LENGTH;
        boolean inQuesting = player.level().dimension().location().equals(QUESTING_DIM);
        ResourceLocation wanted = (time >= 22600 || time < 4000)
                ? ThisnotamodModSounds.AMB_MORNING.getId()
                : (time >= 13700 && time < 22600)
                    ? ThisnotamodModSounds.AMB_NIGHT.getId()
                    : null;

        boolean isWantedPlaying = current != null && current.getSoundId().equals(wanted);

        // if (debugCounter++ >= 200) {
        //     debugCounter = 0;
        //     player.sendSystemMessage(Component.literal("[ambient/debug] Время: " + time + ", inDim: " + inQuesting + ", wanted: " + (wanted != null ? wanted.toString() : "null")
        //             + ", current: " + (current != null ? current.getSoundId() : "none")
        //             + ", fade: " + fadeCounter + ", last: " + (lastPlayedId != null ? lastPlayedId : "none")));
        // }

        if (!inQuesting) {
            stopImmediately(mc);
            return;
        }

        if (wanted == null) {
            if (current != null) startFadeOut();
            ticksUntilNext = 0;
            return;
        }

        if (isWantedPlaying) return;

        if (current == null) {
            playNew(mc, wanted, player);
        } else if (!current.getSoundId().equals(wanted)) {
            startFadeOut();
        }
    }

    private static void startFadeOut() {
        if (current != null && fadeCounter == -1) {
            fadeCounter = FADE_OUT_TICKS;
            LocalPlayer player = Minecraft.getInstance().player;
            if (player != null) {
               // player.sendSystemMessage(Component.literal("[ambient] ⬇ Затухание началось"));
            }
        }
    }

    private static void stopImmediately(Minecraft mc) {
        if (current != null) {
            mc.getSoundManager().stop(current);
            LocalPlayer player = mc.player;
            if (player != null) {
               // player.sendSystemMessage(Component.literal("[ambient] ⏹ Немедленная остановка"));
            }
        }
        current = null;
        fadeCounter = -1;
        ticksUntilNext = 0;
        lastPlayedId = null;
    }

    private static void playNew(Minecraft mc, ResourceLocation id, LocalPlayer player) {
        SoundEvent event = id.equals(ThisnotamodModSounds.AMB_MORNING.getId())
                ? ThisnotamodModSounds.AMB_MORNING.get()
                : ThisnotamodModSounds.AMB_NIGHT.get();

        current = new LoopingAmbientSound(event, id, player);
        mc.getSoundManager().play(current);
        fadeCounter = -1;
        lastPlayedId = id;
        ticksUntilNext = MIN_DELAY + RNG.nextInt(MAX_DELAY - MIN_DELAY + 1);

        //player.sendSystemMessage(Component.literal("[ambient] ▶ Воспроизведение: " + id));
    }

    private static void handleFade(Minecraft mc) {
        if (current == null || fadeCounter < 0) return;
        float v = (float) fadeCounter / FADE_OUT_TICKS;
        current.setVolume(v);
        if (--fadeCounter < 0) {
            mc.getSoundManager().stop(current);
            LocalPlayer player = mc.player;
            if (player != null) {
               // player.sendSystemMessage(Component.literal("[ambient] ⏹ Звук остановлен (fade complete)"));
            }
            current = null;
            ticksUntilNext = 0; // немедленно разрешаем новое воспроизведение
            lastPlayedId = null; // сбрасываем ID, чтобы разрешить повторно тот же ID
        }
    }

    @SubscribeEvent
    public static void onPlaySound(PlaySoundEvent e) {
        if (e.getSound() == null) return;
        if (e.getSound().getSource() != SoundSource.MUSIC) return;

        LocalPlayer player = Minecraft.getInstance().player;
        if (player != null && player.level().dimension().location().equals(QUESTING_DIM)) {
            e.setSound(null);
        }
    }

    private static final class LoopingAmbientSound extends AbstractTickableSoundInstance {
        private final ResourceLocation soundId;

        LoopingAmbientSound(SoundEvent event, ResourceLocation id, LocalPlayer player) {
            super(event, SoundSource.AMBIENT, SoundInstance.createUnseededRandom());
            this.soundId = id;
            looping = true;
            attenuation = Attenuation.NONE;
            volume = 1.0F;
            x = player.getX();
            y = player.getY();
            z = player.getZ();
        }

        @Override
        public void tick() {
            Minecraft mc = Minecraft.getInstance();
            if (mc.isPaused()) return;

            LocalPlayer p = mc.player;
            if (p != null) {
                x = p.getX();
                y = p.getY();
                z = p.getZ();
            }

            handleFade(mc);
        }

        ResourceLocation getSoundId() {
            return soundId;
        }

        @Override
        public ResourceLocation getLocation() {
            return soundId;
        }

        void setVolume(float v) {
            this.volume = v;
        }
    }
}
