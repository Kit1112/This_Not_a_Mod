package com.example.signalmanager.ui;

import com.example.signalmanager.services.SignalIO;
import com.example.signalmanager.services.SignalLocalization;
import com.example.signalmanager.services.Validation;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import net.mcreator.element.parts.Sound;
import net.mcreator.ui.MCreator;
import net.mcreator.ui.dialogs.TypedTextureSelectorDialog;
import net.mcreator.ui.init.L10N;
import net.mcreator.ui.minecraft.SoundSelector;
import net.mcreator.ui.minecraft.TextureSelectionButton;
import net.mcreator.ui.workspace.resources.TextureType;

import javax.swing.*;
import java.awt.*;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;

public final class CreateFormDialog extends JDialog {

    // Basic
    private final JLabel idValue = new JLabel("-");
    private final JTextField nameField = new JTextField();
    private final JSpinner sizeField = new JSpinner(new SpinnerNumberModel(1.0, 0.1, 10.0, 0.1));
    private final JComboBox<String> typeCombo = new JComboBox<>(new String[] {"regular","trigger_event","story"});

    // Object name (локализуемо)
    private final JTextField objectNameField = new JTextField(); // если пусто — выберем случайный дефолтный локализуемый ключ

    // Flags
    private final JCheckBox specialResponseCheck = new JCheckBox("special_response");
    private final JCheckBox specialPriceCheck    = new JCheckBox("special_price");

    // Texture pickers
    private final TextureSelectionButton objectImageBtn, imageRawBtn, imageLowBtn, imageNoisyBtn, imageHighBtn;

    // Sound pickers
    private final SoundSelector soundRawSel, soundLowSel, soundNoisySel, soundHighSel;

    // Prices
    private final JPanel pricesPanel = new JPanel(new GridLayout(2,4,6,6));
    private final JTextField priceRawField = new JTextField("0");
    private final JTextField priceLowField = new JTextField("0");
    private final JTextField priceNoisyField = new JTextField("0");
    private final JTextField priceHighField = new JTextField("0");

    // Texts
    private final JTextField textRawField = new JTextField("Нет текста");
    private final JTextField textLowField = new JTextField("Нет текста");
    private final JTextField textNoisyField = new JTextField("Нет текста");
    private final JTextField textHighField = new JTextField("Нет текста");

    // Special responses
    private final JPanel srPanel = new JPanel(new GridLayout(2,4,6,6));
    private final JTextField srRawField = new JTextField();
    private final JTextField srLowField = new JTextField();
    private final JTextField srNoisyField = new JTextField();
    private final JTextField srHighField = new JTextField();

    private final MCreator mc;
    private Integer editingId = null;

    // Фолбэки «старых» значений ресурсов — если пикер не подгрузил визуально,
    // мы всё равно НЕ потеряем их при сохранении
    private String keyObjectImageOld = "";
    private String keyImageRawOld = "", keyImageLowOld = "", keyImageNoisyOld = "", keyImageHighOld = "";
    private String keySoundRawOld = "", keySoundLowOld = "", keySoundNoisyOld = "", keySoundHighOld = "";
    private String existingObjectNameKey = null;

    // Безопасно получаем тип текстуры для папки "screens"/"gui"
    private static TextureType screenTextureType() {
        try { return TextureType.valueOf("SCREEN"); } catch (Throwable ignored) {}
        try { return TextureType.valueOf("GUI"); }    catch (Throwable ignored) {}
        return TextureType.ITEM; // на всякий случай
    }

    private CreateFormDialog(MCreator mc) {
        super(mc, "Create Signal", false);
        this.mc = mc;

        // каждый пикер со своим диалогом
        objectImageBtn = new TextureSelectionButton(new TypedTextureSelectorDialog(mc, TextureType.ITEM));
        TextureType screenTT = screenTextureType();
        imageRawBtn   = new TextureSelectionButton(new TypedTextureSelectorDialog(mc, screenTT));
        imageLowBtn   = new TextureSelectionButton(new TypedTextureSelectorDialog(mc, screenTT));
        imageNoisyBtn = new TextureSelectionButton(new TypedTextureSelectorDialog(mc, screenTT));
        imageHighBtn  = new TextureSelectionButton(new TypedTextureSelectorDialog(mc, screenTT));

        soundRawSel    = new SoundSelector(mc);
        soundLowSel    = new SoundSelector(mc);
        soundNoisySel  = new SoundSelector(mc);
        soundHighSel   = new SoundSelector(mc);

        buildUI();
        pack();
        setSize(1100, 860);
        setLocationRelativeTo(mc);
    }

    private void buildUI() {
        // компактные размеры
        nameField.setColumns(22);
        Dimension tfSmall = new Dimension(320, nameField.getPreferredSize().height);
        nameField.setPreferredSize(tfSmall);
        nameField.setMaximumSize(tfSmall);

        try {
            if (sizeField.getEditor() instanceof JSpinner.DefaultEditor de) {
                de.getTextField().setColumns(4);
                Dimension spd = new Dimension(60, de.getPreferredSize().height);
                de.getTextField().setPreferredSize(spd);
                de.getTextField().setMaximumSize(spd);
            }
        } catch (Throwable ignored) {}

        typeCombo.setPrototypeDisplayValue("trigger_event");
        Dimension cbd = new Dimension(200, typeCombo.getPreferredSize().height);
        typeCombo.setPreferredSize(cbd);
        typeCombo.setMaximumSize(cbd);

        JPanel root = new JPanel();
        root.setLayout(new BoxLayout(root, BoxLayout.Y_AXIS));
        root.setBorder(BorderFactory.createEmptyBorder(10,10,10,10));

        // ---------- ОСНОВНОЕ ----------
        JPanel main = new JPanel(new GridBagLayout());
        main.setBorder(BorderFactory.createTitledBorder("Основное"));
        GridBagConstraints gc = new GridBagConstraints();
        gc.insets = new Insets(4,4,4,4);

        JPanel formGrid = new JPanel(new GridBagLayout());
        GridBagConstraints lf = new GridBagConstraints();
        lf.insets = new Insets(4,4,4,4);
        lf.fill = GridBagConstraints.NONE;
        lf.anchor = GridBagConstraints.WEST;

        int row = 0;
        lf.gridx = 0; lf.gridy = row; formGrid.add(new JLabel("id:"), lf);
        lf.gridx = 1; lf.gridy = row; formGrid.add(idValue, lf); row++;

        lf.gridx = 0; lf.gridy = row; formGrid.add(new JLabel("name:"), lf);
        lf.gridx = 1; lf.gridy = row; formGrid.add(nameField, lf); row++;

        lf.gridx = 0; lf.gridy = row; formGrid.add(new JLabel("size:"), lf);
        JPanel sizeLine = new JPanel(new GridBagLayout());
        GridBagConstraints sgc = new GridBagConstraints();
        sgc.insets = new Insets(0,0,0,6);
        sgc.gridx = 0; sgc.gridy = 0; sgc.fill = GridBagConstraints.NONE; sizeLine.add(sizeField, sgc);
        JButton rnd = new JButton("Random");
        rnd.addActionListener(e -> {
            double rndv = Math.round((0.1 + Math.random()*(10-0.1))*10.0)/10.0;
            sizeField.setValue(rndv);
        });
        sgc.gridx = 1; sgc.gridy = 0; sizeLine.add(rnd, sgc);
        lf.gridx = 1; lf.gridy = row; formGrid.add(sizeLine, lf); row++;

        lf.gridx = 0; lf.gridy = row; formGrid.add(new JLabel("type:"), lf);
        lf.gridx = 1; lf.gridy = row; formGrid.add(typeCombo, lf); row++;

        lf.gridx = 0; lf.gridy = row; formGrid.add(new JLabel("object_name:"), lf);
        lf.gridx = 1; lf.gridy = row; formGrid.add(objectNameField, lf); row++;

        JPanel formWrap = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
        formWrap.add(formGrid);

        JPanel flagsCol = new JPanel();
        flagsCol.setLayout(new BoxLayout(flagsCol, BoxLayout.Y_AXIS));
        flagsCol.setBorder(BorderFactory.createEmptyBorder(0,14,0,0));
        specialResponseCheck.setAlignmentX(Component.LEFT_ALIGNMENT);
        specialPriceCheck.setAlignmentX(Component.LEFT_ALIGNMENT);
        flagsCol.add(specialResponseCheck);
        flagsCol.add(Box.createVerticalStrut(8));
        flagsCol.add(specialPriceCheck);

        specialPriceCheck.addActionListener(e -> pricesPanel.setVisible(specialPriceCheck.isSelected()));
        specialResponseCheck.addActionListener(e -> srPanel.setVisible(specialResponseCheck.isSelected()));

        gc.gridx = 0; gc.gridy = 0; gc.weightx = 1.0; gc.weighty = 0; gc.fill = GridBagConstraints.HORIZONTAL; gc.anchor = GridBagConstraints.WEST;
        main.add(formWrap, gc);
        gc.gridx = 1; gc.gridy = 0; gc.weightx = 0; gc.weighty = 1.0; gc.fill = GridBagConstraints.NONE; gc.anchor = GridBagConstraints.CENTER;
        main.add(flagsCol, gc);

        // ---------- ИЗОБРАЖЕНИЯ ----------
        JPanel images = new JPanel(new GridBagLayout());
        images.setBorder(BorderFactory.createTitledBorder("Изображения"));
        GridBagConstraints ic = new GridBagConstraints();
        ic.insets = new Insets(4,4,4,4);
        ic.fill = GridBagConstraints.NONE;
        ic.anchor = GridBagConstraints.WEST;
        Dimension imgCell = new Dimension(300, 90);

        java.util.function.Function<JComponent, JComponent> leftWrap = comp -> {
            JPanel w = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
            w.add(comp);
            w.setOpaque(false);
            return w;
        };

        ic.gridx = 0; ic.gridy = 0;
        images.add(leftWrap.apply(fixed(labeled("object_image", objectImageBtn), imgCell)), ic);

        ic.gridy = 1; ic.gridx = 0;
        images.add(leftWrap.apply(fixed(labeled("image_raw",  imageRawBtn),  imgCell)), ic);
        ic.gridx = 1;
        images.add(leftWrap.apply(fixed(labeled("image_low",  imageLowBtn),  imgCell)), ic);

        ic.gridy = 2; ic.gridx = 0;
        images.add(leftWrap.apply(fixed(labeled("image_noisy", imageNoisyBtn), imgCell)), ic);
        ic.gridx = 1;
        images.add(leftWrap.apply(fixed(labeled("image_high", imageHighBtn), imgCell)), ic);

        // ---------- ЗВУКИ ----------
        JPanel sounds = new JPanel(new GridLayout(2,4,6,6));
        sounds.setBorder(BorderFactory.createTitledBorder("Звуки"));
        sounds.add(labeled("sound_raw",   soundRawSel));
        sounds.add(labeled("sound_low",   soundLowSel));
        sounds.add(labeled("sound_noisy", soundNoisySel));
        sounds.add(labeled("sound_high",  soundHighSel));

        // ---------- ЦЕНЫ ----------
        pricesPanel.setBorder(BorderFactory.createTitledBorder("Цены"));
        pricesPanel.add(labeled("price_raw",   priceRawField));
        pricesPanel.add(labeled("price_low",   priceLowField));
        pricesPanel.add(labeled("price_noisy", priceNoisyField));
        pricesPanel.add(labeled("price_high",  priceHighField));
        pricesPanel.setVisible(false);

        // ---------- ТЕКСТЫ ----------
        JPanel texts = new JPanel(new GridLayout(2,4,6,6));
        texts.setBorder(BorderFactory.createTitledBorder("Тексты"));
        texts.add(labeled("text_raw",   textRawField));
        texts.add(labeled("text_low",   textLowField));
        texts.add(labeled("text_noisy", textNoisyField));
        texts.add(labeled("text_high",  textHighField));

        // ---------- СПЕЦ-ОТВЕТЫ ----------
        srPanel.setBorder(BorderFactory.createTitledBorder("Спец-ответы"));
        srPanel.add(labeled("special_response_raw",   srRawField));
        srPanel.add(labeled("special_response_low",   srLowField));
        srPanel.add(labeled("special_response_noisy", srNoisyField));
        srPanel.add(labeled("special_response_high",  srHighField));
        srPanel.setVisible(false);

        // кнопки
        JPanel buttons = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        JButton save = new JButton("Save");
        JButton cancel = new JButton("Cancel");
        save.addActionListener(e -> onSave());
        cancel.addActionListener(e -> dispose());
        buttons.add(save); buttons.add(cancel);

        // сборка root
        root.add(main);
        root.add(Box.createVerticalStrut(6));
        root.add(images);
        root.add(sounds);
        root.add(pricesPanel);
        root.add(texts);
        root.add(srPanel);
        root.add(Box.createVerticalStrut(6));
        root.add(buttons);

        setContentPane(new JScrollPane(root));
    }

    private JComponent fixed(JComponent comp, Dimension d) {
        comp.setPreferredSize(d);
        comp.setMinimumSize(d);
        return comp;
    }
    private JPanel labeled(String l, JComponent c) {
        JPanel pan = new JPanel(new BorderLayout(4,4));
        pan.add(new JLabel(l), BorderLayout.NORTH);
        pan.add(c, BorderLayout.CENTER);
        return pan;
    }

    private static String orZero(String s) { return (s==null||s.isBlank()) ? "0" : s.replaceAll("\\D",""); }

    /* ---------- helpers: texture/sound ---------- */

    private String textureKey(TextureSelectionButton b, String fallback) {
        try {
            // прямые геттеры у кнопки
            for (String m : new String[]{"getUnmappedTextureName", "getTextureName", "getSelectedTextureName"}) {
                try {
                    Object v = b.getClass().getMethod(m).invoke(b);
                    if (v instanceof String s && !s.isBlank())
                        return SignalIO.modid(mc) + ":" + s;
                } catch (Throwable ignored) {}
            }
            // поле-холдер у кнопки
            for (String fName : new String[]{"selected_texture","selectedTexture","selected"}) {
                try {
                    Field f = b.getClass().getDeclaredField(fName);
                    f.setAccessible(true);
                    Object holder = f.get(b);
                    if (holder != null) {
                        for (String hm : new String[]{"getUnmappedTextureName","getTextureName"}) {
                            try {
                                Object v = holder.getClass().getMethod(hm).invoke(holder);
                                if (v instanceof String s && !s.isBlank())
                                    return SignalIO.modid(mc) + ":" + s;
                            } catch (Throwable ignored) {}
                        }
                        try {
                            Object tex = holder.getClass().getMethod("getTexture").invoke(holder);
                            if (tex != null) {
                                Object n = tex.getClass().getMethod("getName").invoke(tex);
                                if (n instanceof String s && !s.isBlank())
                                    return SignalIO.modid(mc) + ":" + s;
                            }
                        } catch (Throwable ignored) {}
                    }
                } catch (Throwable ignored) {}
            }
        } catch (Throwable ignored) {}
        // если ничего не нашли — вернём то, что было сохранено раньше
        return (fallback == null) ? "" : fallback;
    }

    private void setTextureFromKey(TextureSelectionButton b, String key) {
        if (key == null || key.isBlank()) return;
        String name = key.contains(":") ? key.substring(key.indexOf(':') + 1) : key;
        // попробуем вызвать любые «устанавливающие» методы
        for (String m : new String[]{"setSelectedTextureName","setTextureName","setTexture"}) {
            try {
                Method mm = b.getClass().getMethod(m, String.class);
                mm.invoke(b, name);
                return;
            } catch (Throwable ignored) {}
        }
        // если методов нет — хотя бы поставим tooltip, чтобы было видно старое значение
        try {
            b.setToolTipText(name);
        } catch (Throwable ignored) {}
    }

    private String soundKey(SoundSelector s, String fallback) {
        try {
            Sound snd = s.getSound();
            if (snd == null) return fallback == null ? "" : fallback;
            try {
                Object v = snd.getClass().getMethod("getUnmappedValue").invoke(snd);
                if (v instanceof String str && !str.isBlank()) return str;
            } catch (Throwable ignored){}
            return snd.toString();
        } catch (Throwable t) { return fallback == null ? "" : fallback; }
    }

    private void setSoundFromKey(SoundSelector s, String key) {
        if (key == null || key.isBlank()) return;
        try {
            Method m = s.getClass().getMethod("setSoundByName", String.class);
            m.invoke(s, key);
        } catch (Throwable ignored) {
            // не получилось — оставим фолбэк через soundKey(...)
        }
    }

    /* ---------- save ---------- */

    private void onSave() {
        try {
            // сначала гарантируем, что дефолты есть и «подливаем» наши ключи из зеркала (если MCreator что-то перезаписал)
            SignalLocalization.ensureDefaultKeys(mc);
            SignalLocalization.reapplyPersistedKeys(mc);

            JsonArray arr = SignalIO.loadSignals(mc);
            int id = (editingId != null) ? editingId : nextId(arr);

            JsonObject o = new JsonObject();
            o.addProperty("id", id);
            o.addProperty("name", nameField.getText());
            o.addProperty("size", ((Number) sizeField.getValue()).floatValue());
            // картинки/звуки — с защитой от потери (если пикер ничего не отдал, берём старое)
            o.addProperty("object_image", textureKey(objectImageBtn, keyObjectImageOld));
            o.addProperty("type", (String) typeCombo.getSelectedItem());

            // ---- object_name (локализуемо) ----
            String objName = objectNameField.getText() == null ? "" : objectNameField.getText().trim();
            String objKey;
            if (objName.isBlank()) {
                // не задано — возьмём случайный дефолтный ключ из набора (переводами заведует ensureDefaultKeys)
                objKey = SignalLocalization.randomDefaultObjectNameKey();
            } else {
                // задано — создаём персональный ключ и прописываем его значение для всех локалей
                objKey = SignalLocalization.objectNameKey(id);
                SignalLocalization.ensureKeyForAllLocales(mc, objKey, objName);
            }
            o.addProperty("object_name", objKey);

            boolean sr = specialResponseCheck.isSelected();
            boolean sp = specialPriceCheck.isSelected();
            o.addProperty("special_response", sr);
            o.addProperty("special_price", sp);

            o.addProperty("image_raw",   textureKey(imageRawBtn,   keyImageRawOld));
            o.addProperty("image_low",   textureKey(imageLowBtn,   keyImageLowOld));
            o.addProperty("image_noisy", textureKey(imageNoisyBtn, keyImageNoisyOld));
            o.addProperty("image_high",  textureKey(imageHighBtn,  keyImageHighOld));

            o.addProperty("sound_raw",   soundKey(soundRawSel,   keySoundRawOld));
            o.addProperty("sound_low",   soundKey(soundLowSel,   keySoundLowOld));
            o.addProperty("sound_noisy", soundKey(soundNoisySel, keySoundNoisyOld));
            o.addProperty("sound_high",  soundKey(soundHighSel,  keySoundHighOld));

            if (sp) {
                o.addProperty("price_raw",  orZero(priceRawField.getText()));
                o.addProperty("price_low",  orZero(priceLowField.getText()));
                o.addProperty("price_noisy",orZero(priceNoisyField.getText()));
                o.addProperty("price_high", orZero(priceHighField.getText()));
            } else {
                o.addProperty("price_raw","0"); o.addProperty("price_low","0");
                o.addProperty("price_noisy","0"); o.addProperty("price_high","0");
            }

            // ---------- ТЕКСТЫ: в JSON сохраняем КЛЮЧИ ----------
            String tr = textRawField.getText();
            String tl = textLowField.getText();
            String tn = textNoisyField.getText();
            String th = textHighField.getText();

            String keyTR = SignalLocalization.isDefaultTextLiteral(tr)
                    ? SignalLocalization.defaultTextKey()
                    : SignalLocalization.textKey(id, "raw");
            String keyTL = SignalLocalization.isDefaultTextLiteral(tl)
                    ? SignalLocalization.defaultTextKey()
                    : SignalLocalization.textKey(id, "low");
            String keyTN = SignalLocalization.isDefaultTextLiteral(tn)
                    ? SignalLocalization.defaultTextKey()
                    : SignalLocalization.textKey(id, "noisy");
            String keyTH = SignalLocalization.isDefaultTextLiteral(th)
                    ? SignalLocalization.defaultTextKey()
                    : SignalLocalization.textKey(id, "high");

            if (!SignalLocalization.isDefaultTextLiteral(tr))
                SignalLocalization.ensureKeyForAllLocales(mc, keyTR, tr);
            if (!SignalLocalization.isDefaultTextLiteral(tl))
                SignalLocalization.ensureKeyForAllLocales(mc, keyTL, tl);
            if (!SignalLocalization.isDefaultTextLiteral(tn))
                SignalLocalization.ensureKeyForAllLocales(mc, keyTN, tn);
            if (!SignalLocalization.isDefaultTextLiteral(th))
                SignalLocalization.ensureKeyForAllLocales(mc, keyTH, th);

            o.addProperty("text_raw",   keyTR);
            o.addProperty("text_low",   keyTL);
            o.addProperty("text_noisy", keyTN);
            o.addProperty("text_high",  keyTH);

            // ---------- СПЕЦ-ОТВЕТЫ ----------
            if (sr) {
                String srr = srRawField.getText();
                String srl = srLowField.getText();
                String srn = srNoisyField.getText();
                String srh = srHighField.getText();

                String keySRR = SignalLocalization.isDefaultSpecialLiteral(srr)
                        ? SignalLocalization.defaultSpecialResponseKey()
                        : SignalLocalization.specialResponseKey(id, "raw");
                String keySRL = SignalLocalization.isDefaultSpecialLiteral(srl)
                        ? SignalLocalization.defaultSpecialResponseKey()
                        : SignalLocalization.specialResponseKey(id, "low");
                String keySRN = SignalLocalization.isDefaultSpecialLiteral(srn)
                        ? SignalLocalization.defaultSpecialResponseKey()
                        : SignalLocalization.specialResponseKey(id, "noisy");
                String keySRH = SignalLocalization.isDefaultSpecialLiteral(srh)
                        ? SignalLocalization.defaultSpecialResponseKey()
                        : SignalLocalization.specialResponseKey(id, "high");

                if (!SignalLocalization.isDefaultSpecialLiteral(srr))
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRR, srr);
                if (!SignalLocalization.isDefaultSpecialLiteral(srl))
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRL, srl);
                if (!SignalLocalization.isDefaultSpecialLiteral(srn))
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRN, srn);
                if (!SignalLocalization.isDefaultSpecialLiteral(srh))
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRH, srh);

                o.addProperty("special_response_raw",   keySRR);
                o.addProperty("special_response_low",   keySRL);
                o.addProperty("special_response_noisy", keySRN);
                o.addProperty("special_response_high",  keySRH);
            } else {
                o.addProperty("special_response_raw","");
                o.addProperty("special_response_low","");
                o.addProperty("special_response_noisy","");
                o.addProperty("special_response_high","");
            }

            // базовая валидация
            String err = (editingId != null) ? null : Validation.validateSignal(o, arr);
            if (err != null) {
                JOptionPane.showMessageDialog(this, err, "SignalManager", JOptionPane.ERROR_MESSAGE);
                return;
            }

            if (editingId != null) {
                for (int i = 0; i < arr.size(); i++)
                    if (arr.get(i).getAsJsonObject().get("id").getAsInt() == editingId) { arr.set(i, o); break; }
            } else {
                arr.add(o);
            }
            SignalIO.saveSignals(mc, arr);

            JOptionPane.showMessageDialog(this, L10N.t("signalmanager.msg.saved","Saved"));
            dispose();
        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, ex.getMessage(), "SignalManager", JOptionPane.ERROR_MESSAGE);
        }
    }

    private int nextId(JsonArray arr){
        int max=-1; for (var el:arr){ try{ int id=el.getAsJsonObject().get("id").getAsInt(); if(id>max) max=id; }catch(Exception ignored){} }
        return max+1;
    }

    // API
    public static void open(MCreator mc, JsonObject existingOrNull) {
        try {
            SignalIO.ensureWorkspaceScaffold(mc); // на всякий
            // дефолты и подливка из зеркала перед показом
            SignalLocalization.ensureDefaultKeys(mc);
            SignalLocalization.reapplyPersistedKeys(mc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        CreateFormDialog d = new CreateFormDialog(mc);

        if (existingOrNull != null) {
            d.editingId = existingOrNull.get("id").getAsInt();
            d.idValue.setText(String.valueOf(d.editingId));
            d.nameField.setText(existingOrNull.get("name").getAsString());
            d.sizeField.setValue(existingOrNull.get("size").getAsDouble());
            d.typeCombo.setSelectedItem(existingOrNull.get("type").getAsString());
            d.specialResponseCheck.setSelected(existingOrNull.get("special_response").getAsBoolean());
            d.specialPriceCheck.setSelected(existingOrNull.get("special_price").getAsBoolean());
            d.pricesPanel.setVisible(d.specialPriceCheck.isSelected());
            d.srPanel.setVisible(d.specialResponseCheck.isSelected());

            // object_name
            String objKey = existingOrNull.has("object_name") ? existingOrNull.get("object_name").getAsString() : "";
            d.existingObjectNameKey = objKey;
            String objText = SignalLocalization.resolveKeyToTextPreferRuEn(mc, objKey);
            d.objectNameField.setText(objText);

            // тексты: если там ключ — показываем текст
            d.textRawField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("text_raw").getAsString()));
            d.textLowField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("text_low").getAsString()));
            d.textNoisyField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("text_noisy").getAsString()));
            d.textHighField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("text_high").getAsString()));

            d.srRawField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("special_response_raw").getAsString()));
            d.srLowField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("special_response_low").getAsString()));
            d.srNoisyField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("special_response_noisy").getAsString()));
            d.srHighField.setText(SignalLocalization.resolveKeyToTextPreferRuEn(mc, existingOrNull.get("special_response_high").getAsString()));

            // фолбэки для ресурсов
            d.keyObjectImageOld = existingOrNull.get("object_image").getAsString();
            d.keyImageRawOld    = existingOrNull.get("image_raw").getAsString();
            d.keyImageLowOld    = existingOrNull.get("image_low").getAsString();
            d.keyImageNoisyOld  = existingOrNull.get("image_noisy").getAsString();
            d.keyImageHighOld   = existingOrNull.get("image_high").getAsString();

            d.keySoundRawOld    = existingOrNull.get("sound_raw").getAsString();
            d.keySoundLowOld    = existingOrNull.get("sound_low").getAsString();
            d.keySoundNoisyOld  = existingOrNull.get("sound_noisy").getAsString();
            d.keySoundHighOld   = existingOrNull.get("sound_high").getAsString();

            // Попробуем отобразить выбор в пикерах (если API не даст — хотя бы tooltip будет)
            d.setTextureFromKey(d.objectImageBtn, d.keyObjectImageOld);
            d.setTextureFromKey(d.imageRawBtn,    d.keyImageRawOld);
            d.setTextureFromKey(d.imageLowBtn,    d.keyImageLowOld);
            d.setTextureFromKey(d.imageNoisyBtn,  d.keyImageNoisyOld);
            d.setTextureFromKey(d.imageHighBtn,   d.keyImageHighOld);

            d.setSoundFromKey(d.soundRawSel,   d.keySoundRawOld);
            d.setSoundFromKey(d.soundLowSel,   d.keySoundLowOld);
            d.setSoundFromKey(d.soundNoisySel, d.keySoundNoisyOld);
            d.setSoundFromKey(d.soundHighSel,  d.keySoundHighOld);

        } else {
            JsonArray all = SignalIO.loadSignals(mc);
            d.idValue.setText(String.valueOf(d.nextId(all)));
        }
        d.setVisible(true);
    }
}
