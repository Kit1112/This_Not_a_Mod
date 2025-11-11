package net.code.thisnotamod;


import com.google.gson.*;
import net.minecraft.resources.ResourceLocation;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.*;

/** Мини-каталог signals.json, доступный и на клиенте, и на сервере. */
public final class SignalCatalog {
    public static final class Entry {
        public final int id, level;
        public final String objectNameKey, name, size;
        Entry(int id, int level, String objectNameKey, String name, String size) {
            this.id = id; this.level = level; this.objectNameKey = objectNameKey; this.name = name; this.size = size;
        }
    }

    private static volatile boolean loaded = false;
    private static final List<Entry> ALL = new ArrayList<>();

    private SignalCatalog() {}

    private static void ensureLoaded() {
        if (loaded) return;
        synchronized (SignalCatalog.class) {
            if (loaded) return;
            try (InputStream in = SignalCatalog.class.getResourceAsStream("/data/thisnotamod/signals.json")) {
                if (in != null) {
                    JsonArray arr = JsonParser.parseReader(new InputStreamReader(in, StandardCharsets.UTF_8)).getAsJsonArray();
                    for (JsonElement el : arr) {
                        if (!el.isJsonObject()) continue;
                        JsonObject o = el.getAsJsonObject();
                        int id    = o.has("id") ? o.get("id").getAsInt() : -1;
                        int level = o.has("level") ? o.get("level").getAsInt() : (o.has("lvl") ? o.get("lvl").getAsInt() : 0);
                        String obj = o.has("object_name") ? o.get("object_name").getAsString() : "";
                        String nm  = o.has("name") ? o.get("name").getAsString() : "unknown";
                        String sz  = o.has("size") ? o.get("size").getAsString() : "1.0";
                        if (id >= 0 && !obj.isBlank()) ALL.add(new Entry(id, level, obj, nm, sz));
                    }
                }
            } catch (Exception ignored) { }
            loaded = true;
        }
    }

    /** Ищет id по object_name и желаемому level; если точного совпадения нет — берёт с ближайшим уровнем. */
    public static Optional<Entry> findByObjectKeyAndLevel(String objectKey, int wantLevel) {
        ensureLoaded();
        if (objectKey == null) return Optional.empty();
        String key = objectKey.trim();
        int colon = key.indexOf(':');
        if (colon >= 0) key = key.substring(colon + 1); // в signals.json object_name обычно без namespace

        Entry best = null;
        int bestScore = Integer.MIN_VALUE;
        for (Entry e : ALL) {
            if (!Objects.equals(e.objectNameKey, key)) continue;
            int score = -(Math.abs(e.level - wantLevel)); // чем ближе уровень — тем лучше
            if (best == null || score > bestScore) { best = e; bestScore = score; }
            if (e.level == wantLevel) return Optional.of(e);
        }
        return Optional.ofNullable(best);
    }
}
