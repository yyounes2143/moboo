package Wwwwwwwwwwwwwwwwwwwwwwwwwww;

import android.annotation.SuppressLint;
import android.database.sqlite.SQLiteTransactionListener;
import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SupportSQLiteDatabase supportSQLiteDatabase) {
        return false;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str, @SuppressLint({"ArrayReturn"}) @Nullable Object[] objArr) {
        throw new UnsupportedOperationException();
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SupportSQLiteDatabase supportSQLiteDatabase, @NotNull SQLiteTransactionListener sQLiteTransactionListener) {
        supportSQLiteDatabase.beginTransactionWithListener(sQLiteTransactionListener);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.beginTransaction();
    }
}
