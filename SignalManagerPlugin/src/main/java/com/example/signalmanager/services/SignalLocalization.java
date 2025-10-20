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
                    lang.addProperty(KEY_DEF_TEXT, defVal);       // ru_ru -> "Нет текста", en_us -> "No text", иначе "No text"
                    changed = true;
                }
                if (!lang.has(KEY_DEF_SR)) {
                    lang.addProperty(KEY_DEF_SR, " ");            // дефолт для special_response — один пробел
                    changed = true;
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

    /** Удалить набор ключей изо всех локалей (дефолтные ключи никогда не трогаем) */
    public static void deleteKeysForAllLocales(MCreator mc, Collection<String> keys) {
        if (keys == null || keys.isEmpty()) return;
        Set<String> protect = Set.of(defaultTextKey(), defaultSpecialResponseKey());

        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return;

        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                JsonObject lang = readLang(p);
                boolean changed = false;
                for (String k : keys) {
                    if (protect.contains(k)) continue; // никогда не удаляем дефолтные
                    if (lang.has(k)) {
                        lang.remove(k);
                        changed = true;
                    }
                }
                if (changed) writeLang(p, lang);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /** Удалить все локализационные ключи, связанные с конкретным сигналом (id). */
    public static void deleteKeysForSignal(MCreator mc, int id) {
        List<String> keys = new ArrayList<>();
        // text.*
        keys.add(textKey(id, "raw"));
        keys.add(textKey(id, "low"));
        keys.add(textKey(id, "noisy"));
        keys.add(textKey(id, "high"));
        // special_response.*
        keys.add(specialResponseKey(id, "raw"));
        keys.add(specialResponseKey(id, "low"));
        keys.add(specialResponseKey(id, "noisy"));
        keys.add(specialResponseKey(id, "high"));

        deleteKeysForAllLocales(mc, keys);
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

    public static String defaultTextKey() {
        return "signalmanager.default_text";
    }

    public static String defaultSpecialResponseKey() {
        return "signalmanager.default_special_response";
    }

    public static String specialResponseKey(int id, String tier) {
        // tiers: raw|low|noisy|high
        return "signalmanager.special_response." + id + "." + tier;
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

    // ------------ утилиты для UI ------------
    /** Похоже ли значение на ключ локализации (наши неймспейсы). */
    public static boolean looksLikeKey(String s) {
        if (s == null) return false;
        return s.startsWith("signalmanager.text.") ||
               s.startsWith("signalmanager.special_response.") ||
               s.equals(defaultTextKey()) ||
               s.equals(defaultSpecialResponseKey());
    }

    /** Резолвит ключ в любой доступной локали; если ключа нет — вернёт fallback. */
    public static String resolveKeyAnyLocale(MCreator mc, String key, String fallback) {
        // пробуем все lang-файлы по очереди — первое найденное значение возвращаем
        Path dir = langDir(mc);
        if (!Files.isDirectory(dir)) return fallback;
        try (Stream<Path> s = Files.list(dir)) {
            for (Path p : (Iterable<Path>) s.filter(f -> f.getFileName().toString().endsWith(".json"))::iterator) {
                JsonObject lang = readLang(p);
                if (lang.has(key)) {
                    try { return lang.get(key).getAsString(); } catch (Exception ignored) {}
                }
            }
        } catch (IOException ignored) {}
        return fallback;
    }
}
