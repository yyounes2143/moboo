package androidx.room.migration;

import androidx.room.driver.SupportSQLiteConnection;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AutoMigrationSpec autoMigrationSpec, @NotNull SQLiteConnection sQLiteConnection) {
        if (sQLiteConnection instanceof SupportSQLiteConnection) {
            autoMigrationSpec.onPostMigrate(((SupportSQLiteConnection) sQLiteConnection).getDb());
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AutoMigrationSpec autoMigrationSpec, @NotNull SupportSQLiteDatabase supportSQLiteDatabase) {
    }
}
