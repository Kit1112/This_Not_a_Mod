package net.code.thisnotamod.client;

import com.google.gson.*;
import net.minecraft.client.Minecraft;
import net.minecraft.resources.ResourceLocation;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.*;

/**
 * Единая точка выбора сигнала:
 * - грузит /data/thisnotamod/signals.json из мод-JAR (или из assets как fallback),
 * - выбирает случайный объект с type=="regular",
 * - генерирует случайные параметры для тюнера.
 */
public final class SignalPicker {

    public static final class PickedSignal {
        public final String           objectNameKey;   // ключ перевода (или просто строка)
        public final ResourceLocation objectImageTex;  // ns:textures/item/<path>.png
        public final String           quality;         // "low" | "middle" | "high"
        public final String           frequency;       // "low" | "middle" | "high"
        public final int              targetPolarityDir; // 0..2
        public final double           targetPolarityDeg; // 0..360
        public final double           targetFrequency;   // 0..1000

        public PickedSignal(String objectNameKey,
                            ResourceLocation objectImageTex,
                            String quality,
                            String frequency,
                            int targetPolarityDir,
                            double targetPolarityDeg,
                            double targetFrequency) {
            this.objectNameKey     = objectNameKey;
            this.objectImageTex    = objectImageTex;
            this.quality           = quality;
            this.frequency         = frequency;
            this.targetPolarityDir = targetPolarityDir;
            this.targetPolarityDeg = targetPolarityDeg;
            this.targetFrequency   = targetFrequency;
        }
    }

    private static final String MODID = "thisnotamod";
    private static final Random RNG   = new Random();

    /** Главный метод выбора. Возвращает готовый набор данных для тюнера. */
    public static PickedSignal pickRandomRegular() {
        JsonArray arr = loadSignalsArray();
        if (arr == null || arr.size() == 0) {
            return fallback(); // безопасный дефолт
        }

        // соберём пул только из type=="regular"
        List<JsonObject> regular = new ArrayList<>();
        for (JsonElement e : arr) {
            if (!e.isJsonObject()) continue;
            JsonObject o = e.getAsJsonObject();
            if ("regular".equalsIgnoreCase(getString(o, "type", ""))) {
                regular.add(o);
            }
        }
        if (regular.isEmpty()) return fallback();

        JsonObject picked = regular.get(RNG.nextInt(regular.size()));

        String objectNameKey = getString(picked, "object_name", "signalmanager.object_name.unknown");
        String imageId       = getString(picked, "object_image", MODID + ":missing");

        ResourceLocation imageRL = toItemTexture(imageId);

        String[] levels  = {"low", "middle", "high"};
        String quality   = levels[RNG.nextInt(levels.length)];
        String frequency = levels[RNG.nextInt(levels.length)];

        int    dir = clamp(RNG.nextInt(3), 0, 2);
        double deg = wrap360(RNG.nextDouble() * 360.0);
        double frq = clampD(RNG.nextDouble() * 1000.0, 0.0, 1000.0);

        return new PickedSignal(objectNameKey, imageRL, quality, frequency, dir, deg, frq);
    }

    // ------------------------- Загрузка JSON -------------------------

    /**
     * Надёжная загрузка массива из signals.json:
     * 1) server-data ResourceManager (singleplayer);
     * 2) client ResourceManager (если положите копию в assets);
     * 3) прямое чтение из мод-JAR через ClassLoader ("/data/thisnotamod/signals.json").
     */
    private static JsonArray loadSignalsArray() {
        Minecraft mc = Minecraft.getInstance();
        ResourceLocation rl = new ResourceLocation(MODID, "signals.json");

        // (1) server-data (одиночная игра)
        try {
            var srv = mc.getSingleplayerServer();
            if (srv != null) {
                var opt = srv.getResourceManager().getResource(rl);
                if (opt.isPresent()) {
                    try (var in = opt.get().open();
                         var rd = new InputStreamReader(in, StandardCharsets.UTF_8)) {
                        JsonElement root = JsonParser.parseReader(rd);
                        if (root != null && root.isJsonArray()) return root.getAsJsonArray();
                    }
                }
            }
        } catch (Throwable ignore) { }

        // (2) client RM (на случай копии в assets/<modid>/signals.json)
        try {
            var opt = mc.getResourceManager().getResource(rl);
            if (opt.isPresent()) {
                try (var in = opt.get().open();
                     var rd = new InputStreamReader(in, StandardCharsets.UTF_8)) {
                    JsonElement root = JsonParser.parseReader(rd);
                    if (root != null && root.isJsonArray()) return root.getAsJsonArray();
                }
            }
        } catch (Throwable ignore) { }

        // (3) Прямое чтение из JAR: /data/thisnotamod/signals.json (основной способ для вашего кейса)
        JsonArray fromJar = tryReadFromClasspath("data/" + MODID + "/signals.json");
        if (fromJar != null) return fromJar;

        // бонус: если захотите сложить копию рядом в assets, это тоже прочитается
        JsonArray fromAssets = tryReadFromClasspath("assets/" + MODID + "/signals.json");
        return fromAssets;
    }

    private static JsonArray tryReadFromClasspath(String path) {
        try (InputStream is = SignalPicker.class.getClassLoader().getResourceAsStream(path)) {
            if (is == null) return null;
            try (var rd = new InputStreamReader(is, StandardCharsets.UTF_8)) {
                JsonElement root = JsonParser.parseReader(rd);
                return (root != null && root.isJsonArray()) ? root.getAsJsonArray() : null;
            }
        } catch (Throwable ignore) { }
        return null;
    }

    // ------------------------- Вспомогательные -------------------------

    /** Принимаем flexible форматы: "ns:id" | "ns:textures/...png" | "ns:item/id" | "ns:id.png". */
    private static ResourceLocation toItemTexture(String namespacedId) {
        ResourceLocation base = new ResourceLocation(namespacedId);
        String ns   = base.getNamespace();
        String path = base.getPath();

        // Уже абсолютный путь к текстуре
        if (path.startsWith("textures/")) {
            if (!path.endsWith(".png")) path += ".png";
            return new ResourceLocation(ns, path);
        }

        // Если передали "item/foo" — отбросить префикс
        if (path.startsWith("item/")) {
            path = path.substring("item/".length());
        }

        // Если уже с .png — просто подставить префикс
        if (path.endsWith(".png")) {
            return new ResourceLocation(ns, "textures/item/" + path);
        }

        // Обычный случай: "foo" -> "textures/item/foo.png"
        return new ResourceLocation(ns, "textures/item/" + path + ".png");
    }

    private static String getString(JsonObject o, String k, String def) {
        JsonElement e = o.get(k);
        return (e != null && e.isJsonPrimitive()) ? e.getAsString() : def;
    }

    private static int clamp(int v, int a, int b){ return Math.max(a, Math.min(b, v)); }
    private static double clampD(double v, double a, double b){ return Math.max(a, Math.min(b, v)); }
    private static double wrap360(double d){ double x = d % 360.0; return x < 0 ? x + 360.0 : x; }

    private static PickedSignal fallback() {
        return new PickedSignal(
                "signalmanager.object_name.unknown",
                new ResourceLocation(MODID, "textures/item/unknown.png"),
                "middle", "middle",
                1, 25.0, 75.0
        );
    }

    private SignalPicker() {}
}
