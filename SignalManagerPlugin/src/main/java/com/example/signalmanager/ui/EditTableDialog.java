package com.example.signalmanager.ui;

import com.example.signalmanager.services.SignalIO;
import com.example.signalmanager.services.SignalLocalization;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import net.mcreator.ui.MCreator;

import javax.swing.*;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableColumn;
import java.awt.*;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class EditTableDialog extends JDialog {

    private static final int COL_ID = 0;
    private static final int COL_NAME = 1;
    private static final int COL_TYPE = 2;
    private static final int COL_SIZE = 3;
    private static final int COL_SPECIAL = 4;
    private static final int COL_EDIT = 5;
    private static final int COL_DELETE = 6;

    private final MCreator mc;
    private final JTextField search = new JTextField();
    private final JComboBox<String> type = new JComboBox<>(new String[]{"All","regular","trigger_event","story"});
    private final JTable table = new JTable();
    private final Model model = new Model();

    private EditTableDialog(MCreator mc) {
        super(mc, "Edit Signal Datatable", false);
        this.mc = mc;

        table.setModel(model);
        buildUI();
        setSize(1000,700);
        setLocationRelativeTo(mc);
        reload();
    }

    private void buildUI() {
        // Верхняя панель
        JPanel top = new JPanel(new BorderLayout(6,6));
        JPanel left = new JPanel(new GridLayout(1,2,6,6));
        left.add(new Labeled("Search", search));
        left.add(new Labeled("Type", type));
        top.add(left, BorderLayout.CENTER);

        JButton bCreate = new JButton("Create New Signal");
        bCreate.addActionListener(e -> CreateFormDialog.open(mc, null));
        JButton bExport = new JButton("Export");
        bExport.addActionListener(e -> onExport());
        JButton bImport = new JButton("Import");
        bImport.addActionListener(e -> onImport());
        JPanel right = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        right.add(bCreate); right.add(bExport); right.add(bImport);
        top.add(right, BorderLayout.EAST);

        search.getDocument().addDocumentListener(SimpleDocListener.onChange(this::applyFilter));
        type.addActionListener(e -> applyFilter());

        // Таблица
        table.setRowHeight(26);
        table.setFillsViewportHeight(true);
        table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        // Колонки-иконки: ✎ и ✖
        installActionColumns();

        JScrollPane scroll = new JScrollPane(table);

        getContentPane().setLayout(new BorderLayout(6,6));
        getContentPane().add(top, BorderLayout.NORTH);
        getContentPane().add(scroll, BorderLayout.CENTER);
    }

    /** Навешиваем на столбцы Edit/Delete иконки-кнопки и обработчики */
    private void installActionColumns() {
        TableColumn editCol = table.getColumnModel().getColumn(COL_EDIT);
        editCol.setMinWidth(60);
        editCol.setMaxWidth(60);
        editCol.setPreferredWidth(60);
        editCol.setCellRenderer(new IconButtonRenderer("✎"));
        editCol.setCellEditor(new IconButtonEditor("✎", row -> {
            int modelRow = table.convertRowIndexToModel(row);
            JsonObject obj = model.getAtModelRow(modelRow);
            CreateFormDialog.open(mc, obj);
        }));

        TableColumn delCol = table.getColumnModel().getColumn(COL_DELETE);
        delCol.setMinWidth(60);
        delCol.setMaxWidth(60);
        delCol.setPreferredWidth(60);
        delCol.setCellRenderer(new IconButtonRenderer("✖"));
        delCol.setCellEditor(new IconButtonEditor("✖", row -> {
            int modelRow = table.convertRowIndexToModel(row);
            JsonObject obj = model.getAtModelRow(modelRow);
            int res = JOptionPane.showConfirmDialog(
                    EditTableDialog.this, "Delete?", "Confirm", JOptionPane.YES_NO_OPTION);
            if (res == JOptionPane.YES_OPTION) {
                try {
                    JsonArray arr = SignalIO.loadSignals(mc);
                    int id = obj.get("id").getAsInt();
                    for (int i = 0; i < arr.size(); i++) {
                        if (arr.get(i).getAsJsonObject().get("id").getAsInt() == id) {
                            arr.remove(i);
                            break;
                        }
                    }
                    SignalIO.saveSignals(mc, arr);

                    // ВАЖНО: вычистим связанные локализационные ключи (кроме дефолтов)
                    SignalLocalization.deleteLocalizationForSignal(mc, obj.get("id").getAsInt());

                    reload();
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(EditTableDialog.this, ex.getMessage(),
                            "SignalManager", JOptionPane.ERROR_MESSAGE);
                }
            }
        }));
    }

    private void reload() {
        // На всякий случай — подлить недостающие локализации из зеркала перед показом
        SignalLocalization.reapplyPersistedKeys(mc);

        JsonArray arr = SignalIO.loadSignals(mc);
        model.set(arr);
        applyFilter();
        installActionColumns();
    }

    private void applyFilter() {
        String q = search.getText()==null? "": search.getText().toLowerCase(Locale.ROOT);
        String t = (String) type.getSelectedItem();
        model.setFilter(q,t);
    }

    private void onExport() {
        try {
            var arr = SignalIO.loadSignals(mc);
            var fc = new JFileChooser();
            if (fc.showSaveDialog(this)==JFileChooser.APPROVE_OPTION) {
                try (FileWriter w = new FileWriter(fc.getSelectedFile())) {
                    new com.google.gson.GsonBuilder().setPrettyPrinting().create().toJson(arr,w);
                }
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, ex.getMessage(), "SignalManager", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void onImport() {
        try {
            var fc = new JFileChooser();
            if (fc.showOpenDialog(this)==JFileChooser.APPROVE_OPTION) {
                try (FileReader r = new FileReader(fc.getSelectedFile())) {
                    var el = com.google.gson.JsonParser.parseReader(r);
                    if (!el.isJsonArray()) throw new IllegalStateException("Invalid JSON");
                    SignalIO.saveSignals(mc, el.getAsJsonArray());
                    reload();
                }
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, ex.getMessage(), "SignalManager", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void open(MCreator mc) {
        try { SignalIO.ensureWorkspaceScaffold(mc); } catch (Exception ignored) {}
        new EditTableDialog(mc).setVisible(true);
    }

    // ----------------- helpers -----------------

    private static final class Labeled extends JPanel {
        Labeled(String l, JComponent c){
            super(new BorderLayout(4,4));
            add(new JLabel(l),BorderLayout.NORTH);
            add(c,BorderLayout.CENTER);
        }
    }

    private static final class SimpleDocListener implements javax.swing.event.DocumentListener {
        private final Runnable onChange;
        private SimpleDocListener(Runnable r){this.onChange=r;}
        public static SimpleDocListener onChange(Runnable r){return new SimpleDocListener(r);}
        public void insertUpdate(javax.swing.event.DocumentEvent e){onChange.run();}
        public void removeUpdate(javax.swing.event.DocumentEvent e){onChange.run();}
        public void changedUpdate(javax.swing.event.DocumentEvent e){onChange.run();}
    }

    /** Модель данных таблицы */
    private final class Model extends AbstractTableModel {
        private final String[] cols = {"ID","Name","Type","Size","Special","Edit","Delete"};
        private List<JsonObject> all = new ArrayList<>();
        private List<JsonObject> view = new ArrayList<>();

        void set(JsonArray arr){
            all.clear();
            for (var el:arr) all.add(el.getAsJsonObject());
            view = new ArrayList<>(all);
            fireTableDataChanged();
        }
        void setFilter(String q, String t){
            view = new ArrayList<>();
            for (var o:all){
                boolean okType = "All".equals(t) || o.get("type").getAsString().equals(t);
                if (!okType) continue;
                if (q.isBlank() ||
                        String.valueOf(o.get("id").getAsInt()).contains(q) ||
                        o.get("name").getAsString().toLowerCase(Locale.ROOT).contains(q) ||
                        o.get("type").getAsString().toLowerCase(Locale.ROOT).contains(q)){
                    view.add(o);
                }
            }
            fireTableDataChanged();
        }

        public int getRowCount(){ return view.size(); }
        public int getColumnCount(){ return cols.length; }
        public String getColumnName(int c){ return cols[c]; }
        public boolean isCellEditable(int r,int c){ return c==COL_EDIT || c==COL_DELETE; }

        public Object getValueAt(int r,int c){
            var o = view.get(r);
            return switch (c){
                case COL_ID -> o.get("id").getAsInt();
                case COL_NAME -> o.get("name").getAsString();
                case COL_TYPE -> o.get("type").getAsString();
                case COL_SIZE -> String.format(Locale.US,"%.4f", o.get("size").getAsDouble());
                case COL_SPECIAL -> (o.get("special_response").getAsBoolean()? "R":"") +
                                    (o.get("special_price").getAsBoolean()? "P": "");
                case COL_EDIT -> "✎";
                case COL_DELETE -> "✖";
                default -> "";
            };
        }

        /** Доступ к объекту по *модельной* строке (после convertRowIndexToModel) */
        JsonObject getAtModelRow(int modelRow) {
            return view.get(modelRow);
        }
    }

    // ---- Кнопка-иконка: рендерер
    private static class IconButtonRenderer extends JButton implements javax.swing.table.TableCellRenderer {
        public IconButtonRenderer(String text) {
            super(text);
            setBorderPainted(false);
            setFocusPainted(false);
            setContentAreaFilled(false);
            setOpaque(false);
            setHorizontalAlignment(SwingConstants.CENTER);
            setToolTipText("✎".equals(text) ? "Edit" : "Delete");
        }
        @Override
        public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected,
                                                       boolean hasFocus, int row, int column) {
            return this;
        }
    }

    // ---- Кнопка-иконка: редактор (обрабатывает клик)
    private static class IconButtonEditor extends AbstractCellEditor
            implements javax.swing.table.TableCellEditor, java.awt.event.ActionListener {

        private final JButton button = new JButton();
        private final java.util.function.IntConsumer onClick;
        private JTable table;

        public IconButtonEditor(String text, java.util.function.IntConsumer onClick) {
            this.onClick = onClick;
            button.setText(text);
            button.setBorderPainted(false);
            button.setFocusPainted(false);
            button.setContentAreaFilled(false);
            button.setOpaque(false);
            button.setHorizontalAlignment(SwingConstants.CENTER);
            button.setToolTipText("✎".equals(text) ? "Edit" : "Delete");
            button.addActionListener(this);
        }

        @Override
        public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
            this.table = table;
            return button;
        }

        @Override public Object getCellEditorValue() { return null; }

        @Override
        public void actionPerformed(java.awt.event.ActionEvent e) {
            if (table != null) {
                int viewRow = table.getEditingRow();
                if (viewRow >= 0) onClick.accept(viewRow);
            }
            fireEditingStopped();
        }
    }
}
