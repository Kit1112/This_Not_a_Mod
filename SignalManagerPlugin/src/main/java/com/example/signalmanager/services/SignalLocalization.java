package com.example.signalmanager.services;

import com.google.gson.*;
import net.mcreator.ui.MCreator;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import java.util.stream.Stream;

public final class SignalLocalization {

    private SignalLocalization() {}

    /** Папка lang в проекте мода */
    public static Path langDir(MCreator mc) {
        return SignalIO.workspaceResourcesDir(mc)
                .resolve("assets").resolve(SignalIO.modid(mc)).resolve("lang");
    }

    /** На старте: во ВСЕ существующие lang-файлы добавить наши дефолтные ключи (если их нет) */
    public static void ensureDefaultKeys(MCreator mc) {
        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return;

        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                JsonObject lang = readLang(p);
                boolean changed = false;

                final String KEY_DEF_TEXT = defaultTextKey();
                final String KEY_DEF_SR   = defaultSpecialResponseKey();

                if (!lang.has(KEY_DEF_TEXT)) {
                    String defVal = defaultTextForFile(p.getFileName().toString());
                    lang.addProperty(KEY_DEF_TEXT, defVal); // ru_ru -> "Нет текста", en_us -> "No text"
                    changed = true;
                }
                if (!lang.has(KEY_DEF_SR)) {
                    lang.addProperty(KEY_DEF_SR, " "); // дефолт для special_response — один пробел
                    changed = true;
                }

                // ---- дефолты для object_name ----
                Map<String,String> defaults = defaultObjectNamesForFile(p.getFileName().toString());
                for (Map.Entry<String,String> e : defaults.entrySet()) {
                    String key = e.getKey();
                    String val = e.getValue();
                    if (!lang.has(key)) {
                        lang.addProperty(key, val);
                        changed = true;
                    }
                }

                if (changed) writeLang(p, lang);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /** Возвращает дефолтную фразу "Нет текста"/"No text" в зависимости от файла */
    private static String defaultTextForFile(String filename) {
        String lower = filename.toLowerCase(Locale.ROOT);
        if (lower.startsWith("ru_")) return "Нет текста";
        return "No text";
    }

    /** Дефолтные значения для object_name по файлу локали */
    private static Map<String,String> defaultObjectNamesForFile(String filename) {
        String lower = filename.toLowerCase(Locale.ROOT);
        if (lower.startsWith("ru_")) {
            return Map.of(
                    defObjNamePlanetKey(),   "Планета",
                    defObjNameAsteroidKey(), "Астероид",
                    defObjNameCelestialKey(),"Небесное тело",
                    defObjNameCometKey(),    "Комета"
            );
        } else { // en_us и прочие — английский по умолчанию
            return Map.of(
                    defObjNamePlanetKey(),   "Planet",
                    defObjNameAsteroidKey(), "Asteroid",
                    defObjNameCelestialKey(),"Celestial body",
                    defObjNameCometKey(),    "Comet"
            );
        }
    }

    /** Создать/обновить запись key=value во всех существующих lang-файлах */
    public static void ensureKeyForAllLocales(MCreator mc, String key, String value) {
        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return;

        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                JsonObject lang = readLang(p);
                if (!lang.has(key) || !Objects.equals(asString(lang.get(key)), value)) {
                    lang.addProperty(key, value);
                    writeLang(p, lang);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /** Удалить все локализационные ключи, связанные с данным id (НЕ трогая дефолты) */
    public static void deleteLocalizationForSignal(MCreator mc, int id) {
        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return;

        // набор ключей для удаления
        Set<String> keys = new HashSet<>();
        // text
        keys.add(textKey(id, "raw"));
        keys.add(textKey(id, "low"));
        keys.add(textKey(id, "noisy"));
        keys.add(textKey(id, "high"));
        // special_response
        keys.add(specialResponseKey(id, "raw"));
        keys.add(specialResponseKey(id, "low"));
        keys.add(specialResponseKey(id, "noisy"));
        keys.add(specialResponseKey(id, "high"));
        // object_name
        keys.add(objectNameKey(id));

        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                JsonObject lang = readLang(p);
                boolean changed = false;
                for (String k : keys) {
                    if (lang.has(k)) { lang.remove(k); changed = true; }
                }
                if (changed) writeLang(p, lang);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static String asString(JsonElement el) {
        try { return el.getAsString(); } catch (Exception e) { return String.valueOf(el); }
    }

    private static JsonObject readLang(Path p) throws IOException {
        if (!Files.exists(p)) return new JsonObject();
        try (Reader r = Files.newBufferedReader(p, StandardCharsets.UTF_8)) {
            JsonElement el = JsonParser.parseReader(r);
            return el != null && el.isJsonObject() ? el.getAsJsonObject() : new JsonObject();
        }
    }

    private static void writeLang(Path p, JsonObject obj) throws IOException {
        Files.createDirectories(p.getParent());
        try (Writer w = Files.newBufferedWriter(p, StandardCharsets.UTF_8)) {
            new GsonBuilder().setPrettyPrinting().disableHtmlEscaping().create().toJson(obj, w);
        }
    }

    // ------------ генерация наших ключей ------------
    public static String textKey(int id, String tier) {
        // tiers: raw|low|noisy|high
        return "signalmanager.text." + id + "." + tier;
    }
    public static String specialResponseKey(int id, String tier) {
        // tiers: raw|low|noisy|high
        return "signalmanager.special_response." + id + "." + tier;
    }
    public static String objectNameKey(int id) {
        return "signalmanager.object_name." + id;
    }

    public static String defaultTextKey() {
        return "signalmanager.default_text";
    }
    public static String defaultSpecialResponseKey() {
        return "signalmanager.default_special_response";
    }

    // дефолты object_name
    public static String defObjNamePlanetKey()   { return "signalmanager.defaults.object_name.planet"; }
    public static String defObjNameAsteroidKey() { return "signalmanager.defaults.object_name.asteroid"; }
    public static String defObjNameCelestialKey(){ return "signalmanager.defaults.object_name.celestial"; }
    public static String defObjNameCometKey()    { return "signalmanager.defaults.object_name.comet"; }

    public static String randomDefaultObjectNameKey() {
        String[] keys = {
                defObjNamePlanetKey(), defObjNameAsteroidKey(),
                defObjNameCelestialKey(), defObjNameCometKey()
        };
        return keys[new java.util.Random().nextInt(keys.length)];
    }

    // ------------ определение "дефолтности" значений в UI ------------
    public static boolean isDefaultTextLiteral(String s) {
        if (s == null) return true;
        String t = s.trim();
        return t.isEmpty() || t.equalsIgnoreCase("Нет текста") || t.equalsIgnoreCase("No text");
    }

    public static boolean isDefaultSpecialLiteral(String s) {
        return s == null || s.trim().isEmpty(); // дефолт = пусто/пробелы
    }

    /** Похоже ли значение на наш локализационный ключ */
    public static boolean looksLikeOurKey(String s) {
        return s != null && s.startsWith("signalmanager.");
    }

    /** Разрешить ключ в текст: сначала ru_ru, потом en_us, потом первый попавшийся lang-файл, иначе вернуть исходное */
    public static String resolveKeyToTextPreferRuEn(MCreator mc, String key) {
        if (key == null || key.isBlank()) return key;
        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return key;

        List<String> order = List.of("ru_ru.json", "en_us.json");
        for (String fn : order) {
            Path p = dir.resolve(fn);
            if (Files.exists(p)) {
                try {
                    JsonObject lang = readLang(p);
                    if (lang.has(key)) return lang.get(key).getAsString();
                } catch (IOException ignored) {}
            }
        }
        // если нет ru/en — берём любой
        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                try {
                    JsonObject lang = readLang(p);
                    if (lang.has(key)) return lang.get(key).getAsString();
                } catch (IOException ignored) {}
            }
        } catch (IOException ignored) {}

        return key; // не нашли — вернём ключ как есть
    }
}
