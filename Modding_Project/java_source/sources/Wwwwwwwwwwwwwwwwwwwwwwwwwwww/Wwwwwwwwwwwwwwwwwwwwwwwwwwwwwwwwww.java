package Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

import androidx.annotation.IntRange;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 0) int i) {
        return (int) sQLiteStatement.getLong(i);
    }

    public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 0) int i) {
        return (float) sQLiteStatement.getDouble(i);
    }

    @NotNull
    public static List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement) {
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(sQLiteStatement.getColumnName(i));
        }
        return arrayList;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 0) int i) {
        if (sQLiteStatement.getLong(i) != 0) {
            return true;
        }
        return false;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 1) int i, int i2) {
        sQLiteStatement.mo46bindLong(i, i2);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 1) int i, float f) {
        sQLiteStatement.mo45bindDouble(i, f);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteStatement sQLiteStatement, @IntRange(from = 1) int i, boolean z) {
        long j;
        if (z) {
            j = 1;
        } else {
            j = 0;
        }
        sQLiteStatement.mo46bindLong(i, j);
    }
}
