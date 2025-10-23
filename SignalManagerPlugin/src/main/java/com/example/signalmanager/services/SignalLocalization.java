package com.example.signalmanager.services;

import net.mcreator.ui.MCreator;
import java.util.*;

/**
 * SignalLocalization — регистрация локализаций плагина БЕЗ временных файлов.
 * Работает внутри среды MCreator (плагин). Не зависит от Minecraft-классов.
 *
 * Правила:
 *  • База EN — через workspace.setLocalization(key, enValue).
 *  • Другие локали — пишем в нужную карту из workspace.getLanguageMap().
 *  • UI-ключи экрана тюнера добавляются лениво при первом ensureKeyForAllLocales(...).
 */
public final class SignalLocalization {

    /**
     * Восстановление (реапплай) локализаций при старте/открытии воркспейса.
     * На текущем этапе задача — гарантированно «подсунуть» UI-ключи,
     * чтобы они попали в lang при первой же операции.
     * Остальные типы ключей восстанавливаются там, где вы уже их добавляете.
     */
    public static void reapplyPersistedKeys(MCreator mc) {
		ensureSignalTunerUIScreenKeys(mc);
		ensureSignalScannerUIScreenKeys(mc); // ← добавили вызов сканера
		uiKeysEnsured = true;
	}



    private SignalLocalization() {}

    // ---- одноразовая защёлка для UI ключей ----
    private static boolean uiKeysEnsured = false;

    // ---------- дефолтные ключи контента ----------
    public static String defaultTextKey() { return "signalmanager.default_text"; }
    public static String defaultSpecialResponseKey() { return "signalmanager.default_special_response"; }

    public static String defObjNamePlanetKey()   { return "signalmanager.defaults.object_name.planet"; }
    public static String defObjNameAsteroidKey() { return "signalmanager.defaults.object_name.asteroid"; }
    public static String defObjNameCelestialKey(){ return "signalmanager.defaults.object_name.celestial"; }
    public static String defObjNameCometKey()    { return "signalmanager.defaults.object_name.comet"; }

    public static String randomDefaultObjectNameKey() {
        String[] keys = { defObjNamePlanetKey(), defObjNameAsteroidKey(), defObjNameCelestialKey(), defObjNameCometKey() };
        return keys[new java.util.Random().nextInt(keys.length)];
    }

    private static String defaultTextEN() { return "No text"; }
    private static Map<String,String> defaultObjectNamesEN() {
        Map<String, String> m = new LinkedHashMap<>();
        m.put(defObjNamePlanetKey(),   "Planet");
        m.put(defObjNameAsteroidKey(), "Asteroid");
        m.put(defObjNameCelestialKey(),"Celestial body");
        m.put(defObjNameCometKey(),    "Comet");
        return m;
    }

    // ---------- генераторы ключей контента ----------
    public static String textKey(int id, String tier) { return "signalmanager.text." + id + "." + tier; }
    public static String specialResponseKey(int id, String tier) { return "signalmanager.special_response." + id + "." + tier; }
    public static String objectNameKey(int id) { return "signalmanager.object_name." + id; }

    // ---------- утилиты для UI ----------
    public static boolean isDefaultTextLiteral(String s) {
        if (s == null) return true;
        String t = s.trim();
        return t.isEmpty() || t.equalsIgnoreCase("Нет текста") || t.equalsIgnoreCase("No text");
    }
    public static boolean isDefaultSpecialLiteral(String s) {
        return s == null || s.trim().isEmpty();
    }
    public static boolean looksLikeOurKey(String s) {
        return s != null && s.startsWith("signalmanager.");
    }

    // ---------- регистрация дефолтов + (опционально) UI ключей ----------
    public static void ensureDefaultKeys(MCreator mc) {
        var ws = mc.getWorkspace();
        if (ws == null) return;

        // база EN для дефолтов
        ws.setLocalization(defaultTextKey(), defaultTextEN());
        ws.setLocalization(defaultSpecialResponseKey(), " ");
        for (Map.Entry<String,String> def : defaultObjectNamesEN().entrySet()) {
            ws.setLocalization(def.getKey(), def.getValue());
        }

        // однократно регистрируем UI ключи
        ensureSignalTunerUIScreenKeys(mc);
		ensureSignalScannerUIScreenKeys(mc);
    }

    /**
     * Зарегистрировать ключи UI экрана тюнера + переводы EN/RU.
     * Идемпотентно: можно звать сколько угодно раз.
     */
    public static void ensureSignalTunerUIScreenKeys(MCreator mc) {
        var ws = mc.getWorkspace();
        if (ws == null) return;

        // ----- EN (база) -----
        Map<String, String> en = new LinkedHashMap<>();
        en.put("signalmanager.ui.tuner.label.detector_status",   "Detector status:");
        en.put("signalmanager.ui.tuner.label.object",            "Object:");
        en.put("signalmanager.ui.tuner.label.signal_quality",    "Signal quality:");
        en.put("signalmanager.ui.tuner.label.signal_frequency",  "Signal frequency:");
        en.put("signalmanager.ui.tuner.label.downloaded",        "Downloaded:");
        en.put("signalmanager.ui.tuner.label.polarity_filter",   "Polarity filter:");
        en.put("signalmanager.ui.tuner.label.filter_offset",     "Filter offset:");
        en.put("signalmanager.ui.tuner.label.offset_speed",      "Offset speed:");
        en.put("signalmanager.ui.tuner.label.output_data",       "Output data:");
        en.put("signalmanager.ui.tuner.label.frequency_filter",  "Frequency filter:");

        en.put("signalmanager.ui.tuner.value.none",   "none");
        en.put("signalmanager.ui.tuner.value.low",    "low");
        en.put("signalmanager.ui.tuner.value.middle", "middle");

        en.put("signalmanager.ui.tuner.unit.deg_per_s", "deg/s");
        en.put("signalmanager.ui.tuner.unit.hz_per_s",  "Hz/s");

        // Применяем EN в качестве базы
        for (Map.Entry<String,String> e : en.entrySet()) {
            ws.setLocalization(e.getKey(), e.getValue());
        }

        // ----- RU -----
        Map<String, String> ru = new LinkedHashMap<>();
        ru.put("signalmanager.ui.tuner.label.detector_status",   "Статус детектора:");
        ru.put("signalmanager.ui.tuner.label.object",            "Объект:");
        ru.put("signalmanager.ui.tuner.label.signal_quality",    "Качество сигнала:");
        ru.put("signalmanager.ui.tuner.label.signal_frequency",  "Частота сигнала:");
        ru.put("signalmanager.ui.tuner.label.downloaded",        "Загружено:");
        ru.put("signalmanager.ui.tuner.label.polarity_filter",   "Поляризационный фильтр:");
        ru.put("signalmanager.ui.tuner.label.filter_offset",     "Смещение фильтра:");
        ru.put("signalmanager.ui.tuner.label.offset_speed",      "Скорость смещения:");
        ru.put("signalmanager.ui.tuner.label.output_data",       "Выходные данные:");
        ru.put("signalmanager.ui.tuner.label.frequency_filter",  "Частотный фильтр:");

        ru.put("signalmanager.ui.tuner.value.none",   "нет");
        ru.put("signalmanager.ui.tuner.value.low",    "низкое");
        ru.put("signalmanager.ui.tuner.value.middle", "среднее");

        ru.put("signalmanager.ui.tuner.unit.deg_per_s", "°/с");
        ru.put("signalmanager.ui.tuner.unit.hz_per_s",  "Гц/с");

        // Вписываем RU в карту конкретной локали
        Map<String, ? extends Map<String, String>> lmap = ws.getLanguageMap();
        Map<String, String> ruMap = getLocaleMapIgnoreCase(lmap, "ru_ru");
        if (ruMap == null) ruMap = getLocaleMapIgnoreCase(lmap, "ru_RU");
        if (ruMap != null) {
            ruMap.putAll(ru);
        }
    }
		
		/**
	* Зарегистрировать ключи UI экрана сканера + переводы EN/RU.
	* Идемпотентно: можно звать сколько угодно раз.
	*/
	public static void ensureSignalScannerUIScreenKeys(MCreator mc) {
		var ws = mc.getWorkspace();
		if (ws == null) return;
	
		// ----- EN (база) -----
		Map<String, String> en = new LinkedHashMap<>();
	
		// Баннер/хедер
		en.put("signalmanager.ui.scanner.banner", "STOLAS Astronomical\u2122");
	
		// Статусы/подписи со строковыми плейсхолдерами
		en.put("signalmanager.ui.scanner.label.scanner_speed",  "scanner speed: %s px/s");
		en.put("signalmanager.ui.scanner.label.pinger_speed",   "pinger speed: x%s");
		en.put("signalmanager.ui.scanner.label.pinger_cooldown","pinger cooldown: %ss");
	
		en.put("signalmanager.ui.scanner.label.pinger_ready",   "pinger: READY");
		en.put("signalmanager.ui.scanner.label.pinger_seconds", "pinger: %ss");
	
		en.put("signalmanager.ui.scanner.label.azimuth",  "Azimuth: %s");
		en.put("signalmanager.ui.scanner.label.altitude", "Altitude: %s");
	
		// Логи/сообщения
		en.put("signalmanager.ui.scanner.log.cooldown",        "Quick scan is on cooldown");
		en.put("signalmanager.ui.scanner.log.init_quick_scan", "Initializing quick scan...");
		en.put("signalmanager.ui.scanner.log.pinging",         "pinging\u2026");
		en.put("signalmanager.ui.scanner.log.error_ping_failed","Error [2] Ping failed, weak or no signal");
		en.put("signalmanager.ui.scanner.log.sensor_error",    "sensor error");
		en.put("signalmanager.ui.scanner.log.success_ping",    "Successful ping. Initializing satellite rotation...");
	
		// Применяем EN как базу
		for (Map.Entry<String,String> e : en.entrySet()) {
			ws.setLocalization(e.getKey(), e.getValue());
		}
	
		// ----- RU -----
		Map<String, String> ru = new LinkedHashMap<>();
	
		// Баннер
		ru.put("signalmanager.ui.scanner.banner", "STOLAS Astronomical\u2122");
	
		// Статусы/подписи (плейсхолдеры сохраним строковыми)
		ru.put("signalmanager.ui.scanner.label.scanner_speed",   "скорость сканера: %s px/с");
		ru.put("signalmanager.ui.scanner.label.pinger_speed",    "скорость пингера: x%s");
		ru.put("signalmanager.ui.scanner.label.pinger_cooldown", "перезарядка пингера: %sс");
	
		ru.put("signalmanager.ui.scanner.label.pinger_ready",    "пингер: ГОТОВ");
		ru.put("signalmanager.ui.scanner.label.pinger_seconds",  "пингер: %sс");
	
		ru.put("signalmanager.ui.scanner.label.azimuth",  "Азимут: %s");
		ru.put("signalmanager.ui.scanner.label.altitude", "Высота: %s");
	
		// Логи/сообщения
		ru.put("signalmanager.ui.scanner.log.cooldown",         "Быстрое сканирование на перезарядке");
		ru.put("signalmanager.ui.scanner.log.init_quick_scan",  "Инициализация быстрого сканирования...");
		ru.put("signalmanager.ui.scanner.log.pinging",          "пингуем\u2026");
		ru.put("signalmanager.ui.scanner.log.error_ping_failed","Ошибка [2] Не удалось пропинговать: слабый или отсутствующий сигнал");
		ru.put("signalmanager.ui.scanner.log.sensor_error",     "ошибка датчика");
		ru.put("signalmanager.ui.scanner.log.success_ping",     "Пинг успешен. Запуск поворота спутника...");
	
		// Вписываем RU в карту конкретной локали
		Map<String, ? extends Map<String, String>> lmap = ws.getLanguageMap();
		Map<String, String> ruMap = getLocaleMapIgnoreCase(lmap, "ru_ru");
		if (ruMap == null) ruMap = getLocaleMapIgnoreCase(lmap, "ru_RU");
		if (ruMap != null) {
			ruMap.putAll(ru);
		}
	}
	

    @SuppressWarnings("unchecked")
    private static Map<String, String> getLocaleMapIgnoreCase(Map<String, ? extends Map<String, String>> lmap, String locale) {
        if (lmap == null) return null;
        for (Map.Entry<String, ? extends Map<String, String>> e : lmap.entrySet()) {
            if (e.getKey() != null && e.getKey().equalsIgnoreCase(locale)) {
                return (Map<String, String>) e.getValue();
            }
        }
        return null;
    }

    // ---------- регистрация/удаление контент-ключей ----------
    public static void ensureKeyForAllLocales(MCreator mc, String key, String value) {
        var ws = mc.getWorkspace();
        if (ws == null) return;

        // ленивое обеспечение UI-ключей — гарантирует, что они попадут в lang
        if (!uiKeysEnsured) {
            ensureSignalTunerUIScreenKeys(mc);
            uiKeysEnsured = true;
        }

        ws.setLocalization(key, value); // база EN
    }

    public static void deleteLocalizationForSignal(MCreator mc, int id) {
        var ws = mc.getWorkspace();
        if (ws == null) return;

        List<String> keys = new ArrayList<>();
        keys.add(textKey(id, "raw"));
        keys.add(textKey(id, "low"));
        keys.add(textKey(id, "noisy"));
        keys.add(textKey(id, "high"));
        keys.add(specialResponseKey(id, "raw"));
        keys.add(specialResponseKey(id, "low"));
        keys.add(specialResponseKey(id, "noisy"));
        keys.add(specialResponseKey(id, "high"));
        keys.add(objectNameKey(id));

        for (String k : keys) {
            ws.removeLocalizationEntryByKey(k);
        }
    }

    // ---------- резолв для UI (чтение) ----------
    public static String resolveKeyToTextPreferRuEn(MCreator mc, String key) {
        if (key == null || key.isBlank()) return key;
        var ws = mc.getWorkspace();
        if (ws == null) return key;
        Map<String, ? extends Map<String, String>> lm = ws.getLanguageMap();
        if (lm == null || lm.isEmpty()) return key;

        for (String pref : List.of("ru_ru", "en_us")) {
            Map<String, String> map = getLocaleMapIgnoreCase(lm, pref);
            if (map != null && map.containsKey(key)) {
                return String.valueOf(map.get(key));
            }
        }
        for (Map.Entry<String, ? extends Map<String, String>> e : lm.entrySet()) {
            String v = e.getValue().get(key);
            if (v != null) return v;
        }
        return key;
    }

    public static String resolveKeyOrReturn(MCreator mc, String keyOrLiteral) {
        if (keyOrLiteral == null || keyOrLiteral.isBlank()) return keyOrLiteral;
        if (!looksLikeOurKey(keyOrLiteral)) return keyOrLiteral;

        var ws = mc.getWorkspace();
        if (ws == null) return keyOrLiteral;
        Map<String, ? extends Map<String, String>> lm = ws.getLanguageMap();

        if (lm != null) {
            for (Map<String, String> map : lm.values()) {
                String v = map.get(keyOrLiteral);
                if (v != null) return v;
            }
        }
        if (keyOrLiteral.equals(defaultTextKey())) return defaultTextEN();
        if (keyOrLiteral.equals(defaultSpecialResponseKey())) return " ";
        return keyOrLiteral;
    }
}
