package androidx.room.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.ColumnInfo;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0002\u001a\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a$\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0002\u001a \u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0002\u001a\"\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H\u0002\u001a\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H\u0000\u001a\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010 \u001a\u00020\u0003H\u0000\u001a\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0003H\u0000\"\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u001dX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001e¨\u0006$"}, d2 = {"findAffinity", "", "type", "", "readTableInfo", "Landroidx/room/util/TableInfo;", "connection", "Landroidx/sqlite/SQLiteConnection;", "tableName", "readForeignKeys", "", "Landroidx/room/util/TableInfo$ForeignKey;", "readForeignKeyFieldMappings", "", "Landroidx/room/util/ForeignKeyWithSequence;", "stmt", "Landroidx/sqlite/SQLiteStatement;", "readColumns", "", "Landroidx/room/util/TableInfo$Column;", "readIndices", "Landroidx/room/util/TableInfo$Index;", "readIndex", "name", "unique", "", "readFtsColumns", "readFtsOptions", "FTS_OPTIONS", "", "[Ljava/lang/String;", "parseFtsOptions", "createStatement", "readViewInfo", "Landroidx/room/util/ViewInfo;", "viewName", "room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSchemaInfoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,378:1\n774#2:379\n865#2,2:380\n1863#2,2:382\n1053#2:384\n1557#2:385\n1628#2,3:386\n1053#2:389\n1557#2:390\n1628#2,3:391\n774#2:420\n865#2:421\n866#2:424\n1188#3,2:394\n1190#3:419\n108#4:396\n80#4,22:397\n12567#5,2:422\n*S KotlinDebug\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n*L\n94#1:379\n94#1:380,2\n95#1:382,2\n256#1:384\n256#1:385\n256#1:386,3\n257#1:389\n257#1:390\n257#1:391,3\n360#1:420\n360#1:421\n360#1:424\n328#1:394,2\n328#1:419\n348#1:396\n348#1:397,22\n360#1:422,2\n*E\n"})
/* loaded from: classes3.dex */
public final class SchemaInfoUtilKt {
    @NotNull
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    @ColumnInfo.SQLiteTypeAffinity
    public static final int findAffinity(@Nullable String str) {
        if (str == null) {
            return 5;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        if (StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "INT", false, 2, (Object) null)) {
            return 3;
        }
        if (StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "CHAR", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "CLOB", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "TEXT", false, 2, (Object) null)) {
            return 2;
        }
        if (StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "BLOB", false, 2, (Object) null)) {
            return 5;
        }
        if (!StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "REAL", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "FLOA", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "DOUB", false, 2, (Object) null)) {
            return 1;
        }
        return 4;
    }

    @NotNull
    public static final Set<String> parseFtsOptions(@NotNull String str) {
        int i;
        boolean z;
        Character ch;
        if (str.length() == 0) {
            return SetsKt.emptySet();
        }
        String substring = str.substring(StringsKt.indexOf$default((CharSequence) str, '(', 0, false, 6, (Object) null) + 1, StringsKt.lastIndexOf$default((CharSequence) str, ')', 0, false, 6, (Object) null));
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < substring.length()) {
            char charAt = substring.charAt(i3);
            int i5 = i4 + 1;
            if (charAt != '\"' && charAt != '\'') {
                if (charAt != ',') {
                    if (charAt != '[') {
                        if (charAt != ']') {
                            if (charAt != '`') {
                            }
                        } else if (!arrayDeque.isEmpty() && (ch = (Character) arrayDeque.firstOrNull()) != null && ch.charValue() == '[') {
                            CollectionsKt.removeLast(arrayDeque);
                        }
                    } else if (arrayDeque.isEmpty()) {
                        arrayDeque.addFirst(Character.valueOf(charAt));
                    }
                } else if (arrayDeque.isEmpty()) {
                    String substring2 = substring.substring(i2 + 1, i4);
                    int length = substring2.length() - 1;
                    int i6 = 0;
                    boolean z2 = false;
                    while (i6 <= length) {
                        if (!z2) {
                            i = i6;
                        } else {
                            i = length;
                        }
                        if (Intrinsics.compare((int) substring2.charAt(i), 32) <= 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z2) {
                            if (!z) {
                                z2 = true;
                            } else {
                                i6++;
                            }
                        } else if (!z) {
                            break;
                        } else {
                            length--;
                        }
                    }
                    arrayList.add(substring2.subSequence(i6, length + 1).toString());
                    i2 = i4;
                }
                i3++;
                i4 = i5;
            }
            if (arrayDeque.isEmpty()) {
                arrayDeque.addFirst(Character.valueOf(charAt));
            } else {
                Character ch2 = (Character) arrayDeque.firstOrNull();
                if (ch2 != null && ch2.charValue() == charAt) {
                    CollectionsKt.removeLast(arrayDeque);
                }
            }
            i3++;
            i4 = i5;
        }
        arrayList.add(StringsKt.trim((CharSequence) substring.substring(i2 + 1)).toString());
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i7 = 0;
        while (i7 < size) {
            Object obj = arrayList.get(i7);
            i7++;
            String str2 = (String) obj;
            String[] strArr = FTS_OPTIONS;
            int length2 = strArr.length;
            int i8 = 0;
            while (true) {
                if (i8 >= length2) {
                    break;
                } else if (StringsKt.startsWith$default(str2, strArr[i8], false, 2, (Object) null)) {
                    arrayList2.add(obj);
                    break;
                } else {
                    i8++;
                }
            }
        }
        return CollectionsKt.toSet(arrayList2);
    }

    private static final Map<String, TableInfo.Column> readColumns(SQLiteConnection sQLiteConnection, String str) {
        boolean z;
        String text;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA table_info(`" + str + "`)");
        try {
            if (!prepare.step()) {
                Map<String, TableInfo.Column> emptyMap = MapsKt.emptyMap();
                AutoCloseableKt.closeFinally(prepare, null);
                return emptyMap;
            }
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "type");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "notnull");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, "pk");
            int columnIndexOf5 = SQLiteStatementUtil.columnIndexOf(prepare, "dflt_value");
            Map createMapBuilder = MapsKt.createMapBuilder();
            do {
                String text2 = prepare.getText(columnIndexOf);
                String text3 = prepare.getText(columnIndexOf2);
                if (prepare.getLong(columnIndexOf3) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z2 = z;
                int i = (int) prepare.getLong(columnIndexOf4);
                if (prepare.isNull(columnIndexOf5)) {
                    text = null;
                } else {
                    text = prepare.getText(columnIndexOf5);
                }
                createMapBuilder.put(text2, new TableInfo.Column(text2, text3, z2, i, text, 2));
            } while (prepare.step());
            Map<String, TableInfo.Column> build = MapsKt.build(createMapBuilder);
            AutoCloseableKt.closeFinally(prepare, null);
            return build;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(prepare, th);
                throw th2;
            }
        }
    }

    private static final List<ForeignKeyWithSequence> readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int columnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "id");
        int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "seq");
        int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "from");
        int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, TypedValues.TransitionType.S_TO);
        List createListBuilder = CollectionsKt.createListBuilder();
        while (sQLiteStatement.step()) {
            createListBuilder.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(columnIndexOf), (int) sQLiteStatement.getLong(columnIndexOf2), sQLiteStatement.getText(columnIndexOf3), sQLiteStatement.getText(columnIndexOf4)));
        }
        return CollectionsKt.sorted(CollectionsKt.build(createListBuilder));
    }

    private static final Set<TableInfo.ForeignKey> readForeignKeys(SQLiteConnection sQLiteConnection, String str) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "id");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "seq");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "table");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, "on_delete");
            int columnIndexOf5 = SQLiteStatementUtil.columnIndexOf(prepare, "on_update");
            List<ForeignKeyWithSequence> readForeignKeyFieldMappings = readForeignKeyFieldMappings(prepare);
            prepare.reset();
            Set createSetBuilder = SetsKt.createSetBuilder();
            while (prepare.step()) {
                if (prepare.getLong(columnIndexOf2) == 0) {
                    int i = (int) prepare.getLong(columnIndexOf);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : readForeignKeyFieldMappings) {
                        if (((ForeignKeyWithSequence) obj).getId() == i) {
                            arrayList3.add(obj);
                        }
                    }
                    int size = arrayList3.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj2 = arrayList3.get(i2);
                        i2++;
                        ForeignKeyWithSequence foreignKeyWithSequence = (ForeignKeyWithSequence) obj2;
                        arrayList.add(foreignKeyWithSequence.getFrom());
                        arrayList2.add(foreignKeyWithSequence.getTo());
                    }
                    createSetBuilder.add(new TableInfo.ForeignKey(prepare.getText(columnIndexOf3), prepare.getText(columnIndexOf4), prepare.getText(columnIndexOf5), arrayList, arrayList2));
                }
            }
            Set<TableInfo.ForeignKey> build = SetsKt.build(createSetBuilder);
            AutoCloseableKt.closeFinally(prepare, null);
            return build;
        } finally {
        }
    }

    @NotNull
    public static final Set<String> readFtsColumns(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        Set createSetBuilder = SetsKt.createSetBuilder();
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA table_info(`" + str + "`)");
        try {
            if (prepare.step()) {
                int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
                do {
                    createSetBuilder.add(prepare.getText(columnIndexOf));
                } while (prepare.step());
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(prepare, null);
            return SetsKt.build(createSetBuilder);
        } finally {
        }
    }

    @NotNull
    public static final Set<String> readFtsOptions(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        String str2;
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM sqlite_master WHERE `name` = '" + str + '\'');
        try {
            if (prepare.step()) {
                str2 = prepare.getText(SQLiteStatementUtil.columnIndexOf(prepare, "sql"));
            } else {
                str2 = "";
            }
            AutoCloseableKt.closeFinally(prepare, null);
            return parseFtsOptions(str2);
        } finally {
        }
    }

    private static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z) {
        String str2;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "seqno");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "cid");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, CampaignEx.JSON_KEY_DESC);
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1 && columnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (prepare.step()) {
                    if (((int) prepare.getLong(columnIndexOf2)) >= 0) {
                        int i = (int) prepare.getLong(columnIndexOf);
                        String text = prepare.getText(columnIndexOf3);
                        if (prepare.getLong(columnIndexOf4) > 0) {
                            str2 = "DESC";
                        } else {
                            str2 = "ASC";
                        }
                        linkedHashMap.put(Integer.valueOf(i), text);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List<Map.Entry> sortedWith = CollectionsKt.sortedWith(linkedHashMap.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Map.Entry) t).getKey(), (Integer) ((Map.Entry) t2).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(sortedWith, 10));
                for (Map.Entry entry : sortedWith) {
                    arrayList.add((String) entry.getValue());
                }
                List list = CollectionsKt.toList(arrayList);
                List<Map.Entry> sortedWith2 = CollectionsKt.sortedWith(linkedHashMap2.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues((Integer) ((Map.Entry) t).getKey(), (Integer) ((Map.Entry) t2).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(sortedWith2, 10));
                for (Map.Entry entry2 : sortedWith2) {
                    arrayList2.add((String) entry2.getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, list, CollectionsKt.toList(arrayList2));
                AutoCloseableKt.closeFinally(prepare, null);
                return index;
            }
            AutoCloseableKt.closeFinally(prepare, null);
            return null;
        } finally {
        }
    }

    private static final Set<TableInfo.Index> readIndices(SQLiteConnection sQLiteConnection, String str) {
        boolean z;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "origin");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "unique");
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1) {
                Set createSetBuilder = SetsKt.createSetBuilder();
                while (prepare.step()) {
                    if (Intrinsics.areEqual("c", prepare.getText(columnIndexOf2))) {
                        String text = prepare.getText(columnIndexOf);
                        if (prepare.getLong(columnIndexOf3) == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        TableInfo.Index readIndex = readIndex(sQLiteConnection, text, z);
                        if (readIndex == null) {
                            AutoCloseableKt.closeFinally(prepare, null);
                            return null;
                        }
                        createSetBuilder.add(readIndex);
                    }
                }
                Set<TableInfo.Index> build = SetsKt.build(createSetBuilder);
                AutoCloseableKt.closeFinally(prepare, null);
                return build;
            }
            AutoCloseableKt.closeFinally(prepare, null);
            return null;
        } finally {
        }
    }

    @NotNull
    public static final TableInfo readTableInfo(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        return new TableInfo(str, readColumns(sQLiteConnection, str), readForeignKeys(sQLiteConnection, str), readIndices(sQLiteConnection, str));
    }

    @NotNull
    public static final ViewInfo readViewInfo(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        ViewInfo viewInfo;
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + str + '\'');
        try {
            if (prepare.step()) {
                viewInfo = new ViewInfo(prepare.getText(0), prepare.getText(1));
            } else {
                viewInfo = new ViewInfo(str, null);
            }
            AutoCloseableKt.closeFinally(prepare, null);
            return viewInfo;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(prepare, th);
                throw th2;
            }
        }
    }
}
