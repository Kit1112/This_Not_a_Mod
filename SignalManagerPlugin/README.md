# SignalManager (MCreator plugin)

## EN

### Overview
SignalManager is an **MCreator 2024.2 Java plugin** that adds a top‑level **“Signals”** menu to the MCreator UI and a complete workflow for managing a JSON-backed table of *signals*. It also generates a small runtime helper (**`SignalRegistry`**) for your Forge **47.3.x** / Minecraft **1.20.1** mod to load signals at game startup.

**What you get**
- **Signals menu** (added right after “Help”):
  - **Create New Signal** — full-featured Swing dialog to create or edit one signal.
  - **Edit Signal Datatable** — table view with search, filter, inline edit and delete.
- **Workspace scaffold**:
  - `src/main/resources/data/<modid>/signals.json` — the source JSON in your workspace.
  - `<mod package>.signals.SignalRegistry` — generated at build time from a template.
  - At runtime, config‑side file `config/<modid>/signals.json` is created (if absent) and loaded.
- **Localization utilities** that register plugin UI keys directly in the workspace language maps (no temp files, no extra resource files that could be overwritten by MCreator).

### Requirements
- **MCreator 2024.2** (plugin.json `supportedversions`: `2024002`).
- **Java 17** (matching MCreator).
- **Forge 47.3.x / MC 1.20.1** for the generated runtime helper.
- Local copy of **MCreator sources** for compilation (set `mcreator_path` in `gradle.properties`).

### Using the UI
- **Signals → Create New Signal**: opens the create/edit dialog. When editing, existing textures/sounds/keys are pre-filled. New signals get the next available numeric `id`.
- **Signals → Edit Signal Datatable**: opens a table with columns *ID, Name, Type, Size, Special, Edit, Delete*, a text filter and a type filter. Edit invokes the same form; Delete asks for confirmation.

### Build
1. Clone MCreator sources locally and set the absolute path in `gradle.properties`:
   ```properties
   mcreator_path=D:/dev/MCreator
   ```
2. Build the plugin:
   ```bash
   ./gradlew clean jar
   ```
   The ZIP appears at `build/libs/SignalManager-<version>.zip`.

### Install
- In MCreator: **File → Manage Plugins… → Open plugins folder**, copy the ZIP, restart MCreator.

### Compatibility
- Designed for **MCreator 2024.2** (`supportedversions` = `2024002`).
- Runtime helper targets **Forge 47.3.x / Minecraft 1.20.1**.
- If MCreator core layout changes, update `mcreator_path` and re‑build.

---

## RU

### Обзор
SignalManager — это **плагин для MCreator 2024.2 (Java)**, который добавляет верхнее меню **«Сигналы»** и полный цикл работы с JSON‑таблицей *сигналов*. Плагин также генерирует рантайм‑класс (**`SignalRegistry`**) для вашего Forge **47.3.x** / Minecraft **1.20.1** мода, чтобы загружать сигналы при старте игры.

**Что включает**
- **Меню «Сигналы»** (вставляется сразу после «Справка»):
  - **Создать сигнал** — полноценная форма (Swing) для создания/редактирования сигнала.
  - **Редактировать таблицу сигналов** — таблица с поиском, фильтром, правкой и удалением.
- **Подготовку файлов в воркспейсе**:
  - `src/main/resources/data/<modid>/signals.json` — исходный JSON в проекте.
  - `<mod package>.signals.SignalRegistry` — генерируется при сборке из шаблона.
  - В рантайме создаётся и используется `config/<modid>/signals.json` (если отсутствует).
- **Инструменты локализации**, которые регистрируют UI‑ключи прямо в картах локалей воркспейса (без временных файлов и без риска перезаписи MCreator’ом).

### Требования
- **MCreator 2024.2** (в `plugin.json` `supportedversions`: `2024002`).
- **Java 17**.
- **Forge 47.3.x / MC 1.20.1** для сгенерированного рантайм‑класса.
- Локальная копия **исходников MCreator** для компиляции (пропишите `mcreator_path` в `gradle.properties`).

### Работа через UI
- **Сигналы → Создать сигнал**: открывает форму. При редактировании существующие текстуры/звуки/ключи подставляются. Новый сигнал получает следующий доступный `id`.
- **Сигналы → Редактировать таблицу сигналов**: таблица с колонками *ID, Название, Тип, Размер, Спец‑ответ, Редактировать, Удалить*, строкой фильтра и фильтром по типу. Редактирование открывает ту же форму; удаление требует подтверждения.

### Сборка
1. Склонируйте исходники MCreator и пропишите абсолютный путь в `gradle.properties`:
   ```properties
   mcreator_path=D:/dev/MCreator
   ```
2. Соберите плагин:
   ```bash
   ./gradlew clean jar
   ```
   Готовый ZIP будет в `build/libs/SignalManager-<version>.zip`.

### Установка
- В MCreator: **Файл → Управление плагинами… → Открыть папку плагинов**, скопируйте ZIP и перезапустите MCreator.

### Совместимость
- Ориентирован на **MCreator 2024.2** (`supportedversions` = `2024002`).
- Рантайм‑помощник рассчитан на **Forge 47.3.x / Minecraft 1.20.1**.
- Если структура MCreator изменится, обновите `mcreator_path` и пересоберите.
