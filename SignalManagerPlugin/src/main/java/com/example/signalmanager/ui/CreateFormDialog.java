package com.example.signalmanager.ui;

import com.example.signalmanager.services.SignalIO;
import com.example.signalmanager.services.Validation;
import com.example.signalmanager.services.SignalLocalization;
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
import java.util.Locale;

public final class CreateFormDialog extends JDialog {

    // Basic
    private final JLabel idValue = new JLabel("-");
    private final JTextField nameField = new JTextField();
    private final JSpinner sizeField = new JSpinner(new SpinnerNumberModel(1.0, 0.1, 10.0, 0.1));
    private final JComboBox<String> typeCombo = new JComboBox<>(new String[] {"regular","trigger_event","story"});

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

    // Texts (UI shows human text; JSON stores keys)
    private final JTextField textRawField = new JTextField("Нет текста");
    private final JTextField textLowField = new JTextField("Нет текста");
    private final JTextField textNoisyField = new JTextField("Нет текста");
    private final JTextField textHighField = new JTextField("Нет текста");

    // If editing: remember original keys (to update instead of creating new)
    private String oldKeyTextRaw, oldKeyTextLow, oldKeyTextNoisy, oldKeyTextHigh;

    // Special responses
    private final JPanel srPanel = new JPanel(new GridLayout(2,4,6,6));
    private final JTextField srRawField = new JTextField();
    private final JTextField srLowField = new JTextField();
    private final JTextField srNoisyField = new JTextField();
    private final JTextField srHighField = new JTextField();

    // If editing: remember original SR keys
    private String oldKeySrRaw, oldKeySrLow, oldKeySrNoisy, oldKeySrHigh;

    private final MCreator mc;
    private Integer editingId = null;

    // Безопасно получаем тип текстуры для папки "screens" (или "gui"), с фолбэком на ITEM
    private static TextureType screenTextureType() {
        try { return TextureType.valueOf("SCREEN"); } catch (Throwable ignored) {}
        try { return TextureType.valueOf("GUI"); }    catch (Throwable ignored) {}
        return TextureType.ITEM; // на всякий случай
    }

    private CreateFormDialog(MCreator mc) {
        super(mc, "Create Signal", false);
        this.mc = mc;

        // свой диалог на каждую кнопку
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
        setSize(1100, 800);
        setLocationRelativeTo(mc);
    }

    private void buildUI() {
        // компактные размеры полей
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

        // ---------- Основное ----------
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

        // ---------- Изображения ----------
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

        // ---------- Звуки ----------
        JPanel sounds = new JPanel(new GridLayout(2,4,6,6));
        sounds.setBorder(BorderFactory.createTitledBorder("Звуки"));
        sounds.add(labeled("sound_raw",   soundRawSel));
        sounds.add(labeled("sound_low",   soundLowSel));
        sounds.add(labeled("sound_noisy", soundNoisySel));
        sounds.add(labeled("sound_high",  soundHighSel));

        // ---------- Цены ----------
        pricesPanel.setBorder(BorderFactory.createTitledBorder("Цены"));
        pricesPanel.add(labeled("price_raw",   priceRawField));
        pricesPanel.add(labeled("price_low",   priceLowField));
        pricesPanel.add(labeled("price_noisy", priceNoisyField));
        pricesPanel.add(labeled("price_high",  priceHighField));
        pricesPanel.setVisible(false);

        // ---------- Тексты ----------
        JPanel texts = new JPanel(new GridLayout(2,4,6,6));
        texts.setBorder(BorderFactory.createTitledBorder("Тексты"));
        texts.add(labeled("text_raw",   textRawField));
        texts.add(labeled("text_low",   textLowField));
        texts.add(labeled("text_noisy", textNoisyField));
        texts.add(labeled("text_high",  textHighField));

        // ---------- Спец-ответы ----------
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
    private static String emptyDefault(String s){ return (s==null||s.isBlank()) ? "Нет текста" : s; }

    private String textureKey(TextureSelectionButton b) {
        try {
            for (String m : new String[]{"getUnmappedTextureName", "getTextureName", "getSelectedTextureName"}) {
                try {
                    Object v = b.getClass().getMethod(m).invoke(b);
                    if (v instanceof String s && !s.isBlank())
                        return SignalIO.modid(mc) + ":" + s;
                } catch (Throwable ignored) {}
            }
            for (String fName : new String[]{"selected_texture","selectedTexture","selected"}) {
                try {
                    var f = b.getClass().getDeclaredField(fName);
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
        } catch (Throwable t) {
            // ignore
        }
        return "";
    }

    private String soundKey(SoundSelector s) {
        try {
            Sound snd = s.getSound();
            if (snd == null) return "";
            try {
                Object v = snd.getClass().getMethod("getUnmappedValue").invoke(snd);
                if (v instanceof String str && !str.isBlank()) return str;
            } catch (Throwable ignored){}
            return snd.toString();
        } catch (Throwable t) { return ""; }
    }

    private void onSave() {
        try {
            // На всякий: убедимся, что дефолтные ключи присутствуют в lang-файлах
            SignalLocalization.ensureDefaultKeys(mc);

            JsonArray arr = SignalIO.loadSignals(mc);
            int id = (editingId != null) ? editingId : nextId(arr);

            JsonObject o = new JsonObject();
            o.addProperty("id", id);
            o.addProperty("name", nameField.getText());
            o.addProperty("size", ((Number) sizeField.getValue()).floatValue());
            o.addProperty("object_image", textureKey(objectImageBtn));
            o.addProperty("type", (String) typeCombo.getSelectedItem());

            boolean sr = specialResponseCheck.isSelected();
            boolean sp = specialPriceCheck.isSelected();
            o.addProperty("special_response", sr);
            o.addProperty("special_price", sp);

            o.addProperty("image_raw",   textureKey(imageRawBtn));
            o.addProperty("image_low",   textureKey(imageLowBtn));
            o.addProperty("image_noisy", textureKey(imageNoisyBtn));
            o.addProperty("image_high",  textureKey(imageHighBtn));

            o.addProperty("sound_raw",   soundKey(soundRawSel));
            o.addProperty("sound_low",   soundKey(soundLowSel));
            o.addProperty("sound_noisy", soundKey(soundNoisySel));
            o.addProperty("sound_high",  soundKey(soundHighSel));

            if (sp) {
                o.addProperty("price_raw",  orZero(priceRawField.getText()));
                o.addProperty("price_low",  orZero(priceLowField.getText()));
                o.addProperty("price_noisy",orZero(priceNoisyField.getText()));
                o.addProperty("price_high", orZero(priceHighField.getText()));
            } else {
                o.addProperty("price_raw","0"); o.addProperty("price_low","0");
                o.addProperty("price_noisy","0"); o.addProperty("price_high","0");
            }

            // ---------- ТЕКСТЫ -> ключи ----------
            String tr = textRawField.getText();
            String tl = textLowField.getText();
            String tn = textNoisyField.getText();
            String th = textHighField.getText();

            String keyTR, keyTL, keyTN, keyTH;

            // raw
            if (SignalLocalization.isDefaultTextLiteral(tr)) {
                keyTR = SignalLocalization.defaultTextKey();
            } else if (oldKeyTextRaw != null) {
                keyTR = oldKeyTextRaw;
                SignalLocalization.ensureKeyForAllLocales(mc, keyTR, tr);
            } else {
                keyTR = SignalLocalization.textKey(id, "raw");
                SignalLocalization.ensureKeyForAllLocales(mc, keyTR, tr);
            }

            // low
            if (SignalLocalization.isDefaultTextLiteral(tl)) {
                keyTL = SignalLocalization.defaultTextKey();
            } else if (oldKeyTextLow != null) {
                keyTL = oldKeyTextLow;
                SignalLocalization.ensureKeyForAllLocales(mc, keyTL, tl);
            } else {
                keyTL = SignalLocalization.textKey(id, "low");
                SignalLocalization.ensureKeyForAllLocales(mc, keyTL, tl);
            }

            // noisy
            if (SignalLocalization.isDefaultTextLiteral(tn)) {
                keyTN = SignalLocalization.defaultTextKey();
            } else if (oldKeyTextNoisy != null) {
                keyTN = oldKeyTextNoisy;
                SignalLocalization.ensureKeyForAllLocales(mc, keyTN, tn);
            } else {
                keyTN = SignalLocalization.textKey(id, "noisy");
                SignalLocalization.ensureKeyForAllLocales(mc, keyTN, tn);
            }

            // high
            if (SignalLocalization.isDefaultTextLiteral(th)) {
                keyTH = SignalLocalization.defaultTextKey();
            } else if (oldKeyTextHigh != null) {
                keyTH = oldKeyTextHigh;
                SignalLocalization.ensureKeyForAllLocales(mc, keyTH, th);
            } else {
                keyTH = SignalLocalization.textKey(id, "high");
                SignalLocalization.ensureKeyForAllLocales(mc, keyTH, th);
            }

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

                String keySRR, keySRL, keySRN, keySRH;

                if (SignalLocalization.isDefaultSpecialLiteral(srr)) {
                    keySRR = SignalLocalization.defaultSpecialResponseKey();
                } else if (oldKeySrRaw != null) {
                    keySRR = oldKeySrRaw;
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRR, srr);
                } else {
                    keySRR = SignalLocalization.specialResponseKey(id, "raw");
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRR, srr);
                }

                if (SignalLocalization.isDefaultSpecialLiteral(srl)) {
                    keySRL = SignalLocalization.defaultSpecialResponseKey();
                } else if (oldKeySrLow != null) {
                    keySRL = oldKeySrLow;
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRL, srl);
                } else {
                    keySRL = SignalLocalization.specialResponseKey(id, "low");
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRL, srl);
                }

                if (SignalLocalization.isDefaultSpecialLiteral(srn)) {
                    keySRN = SignalLocalization.defaultSpecialResponseKey();
                } else if (oldKeySrNoisy != null) {
                    keySRN = oldKeySrNoisy;
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRN, srn);
                } else {
                    keySRN = SignalLocalization.specialResponseKey(id, "noisy");
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRN, srn);
                }

                if (SignalLocalization.isDefaultSpecialLiteral(srh)) {
                    keySRH = SignalLocalization.defaultSpecialResponseKey();
                } else if (oldKeySrHigh != null) {
                    keySRH = oldKeySrHigh;
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRH, srh);
                } else {
                    keySRH = SignalLocalization.specialResponseKey(id, "high");
                    SignalLocalization.ensureKeyForAllLocales(mc, keySRH, srh);
                }

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
            SignalIO.ensureWorkspaceScaffold(mc);
            SignalLocalization.ensureDefaultKeys(mc);
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

            // ---- TEXTS: show localized strings; remember original keys if any
            String defText = SignalLocalization.resolveKeyAnyLocale(mc, SignalLocalization.defaultTextKey(), "Нет текста");

            String vTR = existingOrNull.get("text_raw").getAsString();
            if (SignalLocalization.looksLikeKey(vTR)) { d.oldKeyTextRaw = vTR; d.textRawField.setText(SignalLocalization.resolveKeyAnyLocale(mc, vTR, defText)); }
            else d.textRawField.setText(vTR);

            String vTL = existingOrNull.get("text_low").getAsString();
            if (SignalLocalization.looksLikeKey(vTL)) { d.oldKeyTextLow = vTL; d.textLowField.setText(SignalLocalization.resolveKeyAnyLocale(mc, vTL, defText)); }
            else d.textLowField.setText(vTL);

            String vTN = existingOrNull.get("text_noisy").getAsString();
            if (SignalLocalization.looksLikeKey(vTN)) { d.oldKeyTextNoisy = vTN; d.textNoisyField.setText(SignalLocalization.resolveKeyAnyLocale(mc, vTN, defText)); }
            else d.textNoisyField.setText(vTN);

            String vTH = existingOrNull.get("text_high").getAsString();
            if (SignalLocalization.looksLikeKey(vTH)) { d.oldKeyTextHigh = vTH; d.textHighField.setText(SignalLocalization.resolveKeyAnyLocale(mc, vTH, defText)); }
            else d.textHighField.setText(vTH);

            // ---- SR: same idea
            String defSR = SignalLocalization.resolveKeyAnyLocale(mc, SignalLocalization.defaultSpecialResponseKey(), " ");
            String srr = existingOrNull.get("special_response_raw").getAsString();
            if (SignalLocalization.looksLikeKey(srr)) { d.oldKeySrRaw = srr; d.srRawField.setText(SignalLocalization.resolveKeyAnyLocale(mc, srr, defSR)); }
            else d.srRawField.setText(srr);

            String srl = existingOrNull.get("special_response_low").getAsString();
            if (SignalLocalization.looksLikeKey(srl)) { d.oldKeySrLow = srl; d.srLowField.setText(SignalLocalization.resolveKeyAnyLocale(mc, srl, defSR)); }
            else d.srLowField.setText(srl);

            String srn = existingOrNull.get("special_response_noisy").getAsString();
            if (SignalLocalization.looksLikeKey(srn)) { d.oldKeySrNoisy = srn; d.srNoisyField.setText(SignalLocalization.resolveKeyAnyLocale(mc, srn, defSR)); }
            else d.srNoisyField.setText(srn);

            String srh = existingOrNull.get("special_response_high").getAsString();
            if (SignalLocalization.looksLikeKey(srh)) { d.oldKeySrHigh = srh; d.srHighField.setText(SignalLocalization.resolveKeyAnyLocale(mc, srh, defSR)); }
            else d.srHighField.setText(srh);

        } else {
            JsonArray all = SignalIO.loadSignals(mc);
            d.idValue.setText(String.valueOf(d.nextId(all)));
        }
        d.setVisible(true);
    }
}
