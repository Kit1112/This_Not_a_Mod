package net.code.thisnotamod.client;

import com.google.gson.*;
import net.code.thisnotamod.network.ThisnotamodModVariables;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.player.Player;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.*;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.server.MinecraftServer;
import javax.annotation.Nullable;


//добавить сигнал в очередь 
//SignalPicker.queuePush(player, 5);           // вбросить один id
// или
//SignalPicker.queuePushMany(player, List.of(7, 11, 42));
// или
//SignalPicker.queueClear(player);



/**
 * Единая точка выбора сигнала.
 *
 * Возможности:
 *  - грузит /data/thisnotamod/signals.json из мод-JAR (или из assets как fallback);
 *  - поддерживает три типа сигналов: "story", "regular", "trigger_event" (на нe-regular пока заглушка);
 *  - выбор по ВЕСАМ (поле "weight": double >= 0), пропорциональные вероятности;
 *  - ИСКЛЮЧАЕТ уже пойманные игроком сигналы; если пойманы ВСЕ — полностью сбрасывает прогресс и выбирает заново;
 *  - поддерживает ПРИОРИТЕТНУЮ ОЧЕРЕДЬ сигналов per-player (переменная игрока), из которой берёт первый id и удаляет его.
 *
 * Важно:
 *  - Этот класс ЧИТАЕТ/ПИШЕТ Player persistent переменные, поэтому его методы нужно вызывать на СЕРВЕРЕ.
 *    Если сейчас выбираете сигнал в GUI/Screen (клиентская сторона), отправляйте пакет/вызов на сервер (через Menu/Procedure)
 *    и уже там вызывайте SignalPicker.pickNext(player).
 */
public final class SignalPicker {

    // ======== РЕЗУЛЬТАТ ВЫБОРА ========

    public static final class PickedSignal {
        public final int              id;                 // стабильный id из JSON
        public final String           type;               // "regular" | "story" | "trigger_event"
        public final String           objectNameKey;      // ключ перевода
        public final ResourceLocation objectImageTex;     // ns:textures/item/<path>.png
        public final String           quality;            // "low" | "middle" | "high"
        public final String           frequency;          // "low" | "middle" | "high"
        public final int              targetPolarityDir;  // 0..2
        public final double           targetPolarityDeg;  // 0..360
        public final double           targetFrequency;    // 0..1000

        public PickedSignal(int id,
                            String type,
                            String objectNameKey,
                            ResourceLocation objectImageTex,
                            String quality,
                            String frequency,
                            int targetPolarityDir,
                            double targetPolarityDeg,
                            double targetFrequency) {
            this.id                  = id;
            this.type                = type;
            this.objectNameKey       = objectNameKey;
            this.objectImageTex      = objectImageTex;
            this.quality             = quality;
            this.frequency           = frequency;
            this.targetPolarityDir   = targetPolarityDir;
            this.targetPolarityDeg   = targetPolarityDeg;
            this.targetFrequency     = targetFrequency;
        }
    }

    // ======== ПАРАМЕТРЫ И RNG ========

    private static final String MODID = "thisnotamod";
    private static final Random RNG   = new Random();

    // ======== ПУБЛИЧНЫЙ API ========

    /**
     * Главный метод выбора сигнала для КОНКРЕТНОГО игрока.
     *
     * Порядок:
     *   1) Если в очереди игрока есть id — забираем ПЕРВЫЙ (force pick), удаляем из очереди и возвращаем его.
     *      (Проверку "уже ловил?" для очереди специально ПРОПУСКАЕМ — очередь считается принудительной.)
     *   2) Иначе выбираем по весам среди НЕ ПОЙМАННЫХ сигналов.
     *      - Если все уже пойманы — полностью сбрасываем прогресс игрока и снова выбираем по весам среди всех.
     *
     * ВАЖНО: вызывать на СЕРВЕРЕ (чтобы иметь право модифицировать queue/progress).
     */
    public static PickedSignal pickNext(Player player) {
        JsonArray arr = loadSignalsArray(player);
        if (arr == null || arr.size() == 0) {
            return fallback();
        }

        // Индекс по id для быстрого доступа + кэш списка
        Map<Integer, JsonObject> byId = new HashMap<>();
        List<JsonObject> all = new ArrayList<>(arr.size());
        for (JsonElement e : arr) {
            if (!e.isJsonObject()) continue;
            JsonObject o = e.getAsJsonObject();
            int id = getInt(o, "id", -1);
            if (id < 0) continue;
            byId.put(id, o);
            all.add(o);
        }
        if (all.isEmpty()) return fallback();

        // 1) Очередь с принудительными id
        Integer queued = popQueueFront(player);
        if (queued != null) {
            JsonObject o = byId.get(queued);
            if (o != null) {
                return buildPicked(o);
            }
            // если в очереди был мусорный id — игнор и продолжаем обычный выбор
        }

        // 2) Выбор среди не пойманных
        BitSet caught = readCaught(player);
        List<JsonObject> eligible = new ArrayList<>();
        for (JsonObject o : all) {
            int id = getInt(o, "id", -1);
            if (id < 0) continue;
            double w = Math.max(0.0, getDouble(o, "weight", 1.0));
            if (w <= 0.0) continue;
            if (!caught.get(id)) eligible.add(o);
        }

        // Если всё поймано — сбрасываем прогресс и даём полный пул
        if (eligible.isEmpty()) {
            if (player != null && !player.level().isClientSide) {
                // hard reset прогресса
                writeCaught(player, new BitSet());
                caught = new BitSet();
            }
            // построим заново eligible "из всех с w>0"
            for (JsonObject o : all) {
                double w = Math.max(0.0, getDouble(o, "weight", 1.0));
                if (w > 0.0) eligible.add(o);
            }
            if (eligible.isEmpty()) {
                // все веса нулевые — вернём безопасный дефолт
                return fallback();
            }
        }

        JsonObject picked = weightedPick(eligible);
        if (picked == null) return fallback();

        // Заглушка на будущее: если type != regular — извне запустите нужную последовательность.
        // Здесь просто отдадим PickedSignal с type, чтобы вызывающий код мог сделать switch по типу.
        return buildPicked(picked);
    }

    /** Отметить сигнал пойманным (зови на СЕРВЕРЕ после успешной ловли в тюнере). */
public static void markCaught(ServerPlayer player, int id) {
    if (player == null || id < 0) return;
    BitSet bs = readCaught(player);
    bs.set(id);
    writeCaught(player, bs);
}

/** Проверка: ловил ли игрок конкретный сигнал. Можно вызывать и на клиенте для UI. */
public static boolean isCaught(Player player, int id) {
    if (player == null || id < 0) return false;
    BitSet bs = readCaught(player);
    return bs.get(id);
}


    /**
     * Добавить в очередь игрока один сигнал (будет выбран ПЕРВЫМ при следующем вызове pickNext).
     * ВАЖНО: вызывать на СЕРВЕРЕ.
     */
    public static void queuePush(Player player, int id) {
        if (player == null || id < 0 || player.level().isClientSide) return;
        List<Integer> q = readQueue(player);
        q.add(id);
        writeQueue(player, q);
    }

    /**
     * Добавить несколько сигналов в очередь (порядок сохраняется). Сервер.
     */
    public static void queuePushMany(Player player, Collection<Integer> ids) {
        if (player == null || ids == null || player.level().isClientSide) return;
        List<Integer> q = readQueue(player);
        for (int id : ids) if (id >= 0) q.add(id);
        writeQueue(player, q);
    }

    /**
     * Полностью очистить очередь игрока. Сервер.
     */
    public static void queueClear(Player player) {
        if (player == null || player.level().isClientSide) return;
        writeQueue(player, new ArrayList<>());
    }

    // ======== ВНУТРЕННЕЕ: построение результата из JSON ========

    private static PickedSignal buildPicked(JsonObject o) {
        int    id           = getInt(o, "id", -1);
        String type         = getString(o, "type", "regular");
        String objectName   = getString(o, "object_name", "signalmanager.object_name.unknown");
        String imageId      = getString(o, "object_image", MODID + ":missing");
        ResourceLocation imageRL = toItemTexture(imageId);

        // случайные уровни и целевые параметры тюнера
        String[] levels  = {"low", "middle", "high"};
        String quality   = levels[RNG.nextInt(levels.length)];
        String frequency = levels[RNG.nextInt(levels.length)];
        int    dir = clamp(RNG.nextInt(3), 0, 2);
        double deg = wrap360(RNG.nextDouble() * 360.0);
        double frq = clampD(RNG.nextDouble() * 1000.0, 0.0, 1000.0);

        return new PickedSignal(id, type, objectName, imageRL, quality, frequency, dir, deg, frq);
    }

    private static JsonObject weightedPick(List<JsonObject> list) {
        // сумма весов (double)
        double total = 0.0;
        for (JsonObject o : list) total += Math.max(0.0, getDouble(o, "weight", 1.0));
        if (total <= 0.0) return list.get(RNG.nextInt(list.size())); // fallback на равновероятный
        double r = RNG.nextDouble() * total; // [0, total)
        double acc = 0.0;
        for (JsonObject o : list) {
            acc += Math.max(0.0, getDouble(o, "weight", 1.0));
            if (r < acc) return o;
        }
        return list.get(list.size() - 1);
    }

    // ======== ЗАГРУЗКА JSON ========

    /**
     * Надёжная загрузка массива из signals.json:
     * 1) server-data ResourceManager (singleplayer);
     * 2) client ResourceManager (если положите копию в assets);
     * 3) прямое чтение из мод-JAR через ClassLoader ("/data/thisnotamod/signals.json").
     */
    private static JsonArray loadSignalsArray(@Nullable Player ctx) {
    final ResourceLocation rl = new ResourceLocation(MODID, "signals.json");

    // (1) если есть сервер (ServerPlayer) — читаем из data packs сервера
    try {
        if (ctx instanceof ServerPlayer sp) {
            MinecraftServer srv = sp.server;
            var opt = srv.getResourceManager().getResource(rl);
            if (opt.isPresent()) {
                try (var in = opt.get().open();
                     var rd = new InputStreamReader(in, StandardCharsets.UTF_8)) {
                    JsonElement root = JsonParser.parseReader(rd);
                    if (root != null && root.isJsonArray())
                        return root.getAsJsonArray();
                }
            }
        }
    } catch (Throwable ignore) {}

    // (2) основной фолбэк: прямо из JAR: /data/<modid>/signals.json
    JsonArray fromJar = tryReadFromClasspath("data/" + MODID + "/signals.json");
    if (fromJar != null) return fromJar;

    // (3) запасной фолбэк: если вдруг положили копию в assets
    return tryReadFromClasspath("assets/" + MODID + "/signals.json");
}


    private static JsonArray tryReadFromClasspath(String path) {
        try (InputStream is = SignalPicker.class.getClassLoader().getResourceAsStream(path)) {
            if (is == null) return null;
            try (var rd = new InputStreamReader(is, StandardCharsets.UTF_8)) {
                JsonElement root = JsonParser.parseReader(rd);
                return (root != null && root.isJsonArray()) ? root.getAsJsonArray() : null;
            }
        } catch (Throwable ignore) {}
        return null;
    }

    // ======== ВСПОМОГАТЕЛЬНЫЕ ========

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

    private static int getInt(JsonObject o, String k, int def) {
        JsonElement e = o.get(k);
        if (e == null) return def;
        try {
            if (e.isJsonPrimitive()) {
                JsonPrimitive p = e.getAsJsonPrimitive();
                if (p.isNumber()) return p.getAsInt();
                if (p.isString()) return Integer.parseInt(p.getAsString());
            }
        } catch (Exception ignored) {}
        return def;
    }

    private static double getDouble(JsonObject o, String k, double def) {
        JsonElement e = o.get(k);
        if (e == null) return def;
        try {
            if (e.isJsonPrimitive()) {
                JsonPrimitive p = e.getAsJsonPrimitive();
                if (p.isNumber()) return p.getAsDouble();
                if (p.isString()) return Double.parseDouble(p.getAsString());
            }
        } catch (Exception ignored) {}
        return def;
    }

    private static int clamp(int v, int a, int b){ return Math.max(a, Math.min(b, v)); }
    private static double clampD(double v, double a, double b){ return Math.max(a, Math.min(b, v)); }
    private static double wrap360(double d){ double x = d % 360.0; return x < 0 ? x + 360.0 : x; }

    private static PickedSignal fallback() {
        return new PickedSignal(
                -1,
                "regular",
                "signalmanager.object_name.unknown",
                new ResourceLocation(MODID, "textures/item/unknown.png"),
                "middle", "middle",
                1, 25.0, 75.0
        );
    }

    private SignalPicker() {}

    // ======== ПРОГРЕСС (поймано) — ЧТЕНИЕ/ЗАПИСЬ В ПЕРЕМЕННУЮ ИГРОКА ========

    private static BitSet readCaught(Player p) {
        if (p == null) return new BitSet();
        return p.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> fromHex(vars.signalsCaughtHex))
                .orElseGet(BitSet::new);
    }

    private static void writeCaught(Player p, BitSet bs) {
        if (p == null) return;
        p.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(vars -> {
            vars.signalsCaughtHex = toHex(bs);
            vars.syncPlayerVariables(p);
        });
    }

    // ======== ОЧЕРЕДЬ (CSV в переменной игрока) ========

    private static Integer popQueueFront(Player p) {
    if (p == null || p.level().isClientSide) return null;
    List<Integer> q = readQueue(p);
    if (q.isEmpty()) return null;

    // если хочешь уважать "уже поймано" и пропускать такие — раскомментируй блок ниже
    /*
    BitSet caught = readCaught(p);
    while (!q.isEmpty() && q.size() < 10_000) { // защита от бесконечного цикла
        int candidate = q.remove(0);
        if (!caught.get(candidate)) {
            writeQueue(p, q);
            return candidate;
        }
    }
    writeQueue(p, q);
    return null;
    */

    // по умолчанию — принудительный первый id
    int id = q.remove(0);
    writeQueue(p, q);
    return id;
}


    private static List<Integer> readQueue(Player p) {
        if (p == null) return new ArrayList<>();
        return p.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null)
                .map(vars -> parseCsvIntList(vars.signalsQueueCsv))
                .orElseGet(ArrayList::new);
    }

    private static void writeQueue(Player p, List<Integer> list) {
        if (p == null) return;
        p.getCapability(ThisnotamodModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(vars -> {
            vars.signalsQueueCsv = toCsv(list);
            vars.syncPlayerVariables(p);
        });
    }

    private static List<Integer> parseCsvIntList(String s) {
        List<Integer> out = new ArrayList<>();
        if (s == null || s.isEmpty()) return out;
        String[] parts = s.split(",");
        for (String part : parts) {
            try {
                int v = Integer.parseInt(part.trim());
                if (v >= 0) out.add(v);
            } catch (NumberFormatException ignored) {}
        }
        return out;
    }

    private static String toCsv(List<Integer> list) {
        if (list == null || list.isEmpty()) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) sb.append(',');
            sb.append(list.get(i));
        }
        return sb.toString();
    }

    // ======== HEX <-> BitSet для прогресса ========

    private static String toHex(BitSet bs) {
        byte[] b = bs.toByteArray();
        if (b.length == 0) return "";
        StringBuilder sb = new StringBuilder(b.length * 2);
        for (byte x : b) sb.append(String.format("%02x", x));
        return sb.toString();
    }

    private static BitSet fromHex(String s) {
        BitSet bs = new BitSet();
        if (s == null || s.isEmpty()) return bs;
        int len = s.length();
        if ((len & 1) == 1) s = "0" + s; // выравниваем до чётной длины
        int n = s.length() / 2;
        byte[] out = new byte[n];
        for (int i = 0; i < n; i++) {
            int hi = Character.digit(s.charAt(i * 2), 16);
            int lo = Character.digit(s.charAt(i * 2 + 1), 16);
            if (hi < 0 || lo < 0) return new BitSet(); // некорректный ввод
            out[i] = (byte) ((hi << 4) | lo);
        }
        return BitSet.valueOf(out);
    }
}
