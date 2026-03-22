package com.tekartik.sqflite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.tekartik.sqflite.operation.BatchOperation;
import com.tekartik.sqflite.operation.MethodCallOperation;
import com.tekartik.sqflite.operation.Operation;
import com.tekartik.sqflite.operation.QueuedOperation;
import com.tekartik.sqflite.operation.SqlErrorInfo;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import j$.util.Objects;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Database {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Boolean f10053Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Integer f10055Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SQLiteDatabase f10058Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DatabaseWorkerPool f10059Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f10062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f10064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f10066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<QueuedOperation> f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Integer, SqfliteCursor> f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10057Wwwwwwwwwwwwwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10056Wwwwwwwwwwwwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f10054Wwwwwwwwwwwwwwwwwwwwww = 0;

    public Database(Context context, String str, int i, boolean z, int i2) {
        this.f10062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f10064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
    }

    public static ApplicationInfo Wwwwwwwwww(Context context, String str, int i) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getApplicationInfo(str, i);
    }

    public static boolean Wwwwwwwwwww(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwww(String str) {
        SQLiteDatabase.deleteDatabase(new File(str));
    }

    @VisibleForTesting
    @NotNull
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwww(context, "com.tekartik.sqflite.wal_enabled", false);
    }

    @VisibleForTesting
    @NotNull
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, boolean z) {
        ApplicationInfo Wwwwwwwwww2;
        PackageManager.ApplicationInfoFlags of;
        try {
            String packageName = context.getPackageName();
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = context.getPackageManager();
                of = PackageManager.ApplicationInfoFlags.of(128L);
                Wwwwwwwwww2 = packageManager.getApplicationInfo(packageName, of);
            } else {
                Wwwwwwwwww2 = Wwwwwwwwww(context, packageName, 128);
            }
            if (Wwwwwwwwww2.metaData.getBoolean(str, z)) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ Cursor Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(SqlCommand sqlCommand, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        sqlCommand.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sQLiteQuery);
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Database database, Operation operation) {
        boolean z;
        database.getClass();
        Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Boolean.TRUE.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            int i = database.f10056Wwwwwwwwwwwwwwwwwwwwwwww + 1;
            database.f10056Wwwwwwwwwwwwwwwwwwwwwwww = i;
            database.f10055Wwwwwwwwwwwwwwwwwwwwwww = Integer.valueOf(i);
        }
        if (!database.Wwwwwwwwwwww(operation)) {
            if (z) {
                database.f10055Wwwwwwwwwwwwwwwwwwwwwww = null;
            }
        } else if (z) {
            HashMap hashMap = new HashMap();
            hashMap.put("transactionId", database.f10055Wwwwwwwwwwwwwwwwwwwwwww);
            operation.success(hashMap);
        } else {
            if (Boolean.FALSE.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                database.f10055Wwwwwwwwwwwwwwwwwwwwwww = null;
            }
            operation.success(null);
        }
    }

    public final void Kkkkkkkkkkkkkkkkkkkk(@NonNull Operation operation, Runnable runnable) {
        Integer transactionId = operation.getTransactionId();
        Integer num = this.f10055Wwwwwwwwwwwwwwwwwwwwwww;
        if (num == null) {
            runnable.run();
        } else if (transactionId != null && (transactionId.equals(num) || transactionId.intValue() == -1)) {
            runnable.run();
            if (this.f10055Wwwwwwwwwwwwwwwwwwwwwww == null && !this.f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                this.f10059Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        Database.this.Kkkkkkkkkkkkkkkkkkkkkk();
                    }
                });
            }
        } else {
            this.f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new QueuedOperation(operation, runnable));
        }
    }

    public void Kkkkkkkkkkkkkkkkkkkkk(@NonNull final Operation operation) {
        Kkkkkkkkkkkkkkkkkkkk(operation, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.Wwwwwwwwwwwwwww(operation);
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk() {
        while (!this.f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && this.f10055Wwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f10061Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(0);
        }
    }

    public void Kkkkkkkkkkkkkkkkkkkkkkk(@NonNull final Operation operation) {
        Kkkkkkkkkkkkkkkkkkkk(operation, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.Wwwwwwwwwwwwwwww(operation);
            }
        });
    }

    public void Kkkkkkkkkkkkkkkkkkkkkkkk(@NonNull final Operation operation) {
        Kkkkkkkkkkkkkkkkkkkk(operation, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.Wwwwwwwwwwwwwwwww(operation);
            }
        });
    }

    public void Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        this.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww = SQLiteDatabase.openDatabase(this.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, 1, new DatabaseErrorHandler() { // from class: com.tekartik.sqflite.Database.1
            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
            }
        });
    }

    public void Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        int i;
        if (f10053Wwwwwwwwwwwwwwwwwwwww == null) {
            Boolean valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwww(this.f10062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            f10053Wwwwwwwwwwwwwwwwwwwww = valueOf;
            if (valueOf.booleanValue() && LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                Wwwwwwww();
            }
        }
        if (f10053Wwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            i = 805306368;
        } else {
            i = 268435456;
        }
        this.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww = SQLiteDatabase.openDatabase(this.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, i);
    }

    public synchronized boolean Www() {
        boolean z;
        if (this.f10057Wwwwwwwwwwwwwwwwwwwwwwwww > 0) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public void Wwww(final Operation operation) {
        Kkkkkkkkkkkkkkkkkkkk(operation, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.Wwwwwwwwwwwwwwwwww(operation);
            }
        });
    }

    public void Wwwww(Exception exc, Operation operation) {
        if (exc instanceof SQLiteCantOpenDatabaseException) {
            operation.error("sqlite_error", "open_failed " + this.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
        } else if (exc instanceof SQLException) {
            operation.error("sqlite_error", exc.getMessage(), SqlErrorInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(operation));
        } else {
            operation.error("sqlite_error", exc.getMessage(), SqlErrorInfo.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(operation));
        }
    }

    public SQLiteDatabase Wwwwww() {
        return this.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwww() {
        Thread currentThread = Thread.currentThread();
        return this.f10064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "," + currentThread.getName() + "(" + currentThread.getId() + ")";
    }

    public String Wwwwwwww() {
        return "[" + Wwwwwww() + "] ";
    }

    public SQLiteDatabase Wwwwwwwww() {
        return this.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwww(Operation operation) {
        SqlCommand Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwww();
            Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            Wwwwww().execSQL(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return true;
        } catch (Exception e) {
            Wwwww(e, operation);
            return false;
        }
    }

    public void Wwwwwwwwwwwww(@NonNull final Operation operation) {
        Kkkkkkkkkkkkkkkkkkkk(operation, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Database.this, operation);
            }
        });
    }

    public synchronized void Wwwwwwwwwwwwww(Boolean bool) {
        try {
            if (Boolean.TRUE.equals(bool)) {
                this.f10057Wwwwwwwwwwwwwwwwwwwwwwwww++;
            } else if (Boolean.FALSE.equals(bool)) {
                this.f10057Wwwwwwwwwwwwwwwwwwwwwwwww--;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean Wwwwwwwwwwwwwww(Operation operation) {
        if (!Wwwwwwwwwwww(operation)) {
            return false;
        }
        Cursor cursor = null;
        if (operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            operation.success(null);
            return true;
        }
        try {
            try {
                Cursor rawQuery = Wwwwww().rawQuery("SELECT changes()", null);
                if (rawQuery != null) {
                    try {
                        if (rawQuery.getCount() > 0 && rawQuery.moveToFirst()) {
                            int i = rawQuery.getInt(0);
                            if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                                Wwwwwwww();
                            }
                            operation.success(Integer.valueOf(i));
                            rawQuery.close();
                            return true;
                        }
                    } catch (Exception e) {
                        e = e;
                        cursor = rawQuery;
                        Wwwww(e, operation);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                Wwwwwwww();
                operation.success(null);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return true;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean Wwwwwwwwwwwwwwww(@NonNull Operation operation) {
        boolean z;
        Integer num = (Integer) operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("cursorId");
        int intValue = num.intValue();
        boolean equals = Boolean.TRUE.equals(operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("cancel"));
        if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwww();
        }
        SqfliteCursor sqfliteCursor = null;
        if (equals) {
            Wwwwwwwwwwwwwwwwwwwwwww(intValue);
            operation.success(null);
            return true;
        }
        SqfliteCursor sqfliteCursor2 = this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(num);
        boolean z2 = false;
        try {
            if (sqfliteCursor2 != null) {
                Cursor cursor = sqfliteCursor2.f10089Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Map<String, Object> Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(cursor, Integer.valueOf(sqfliteCursor2.f10090Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                if (!cursor.isLast() && !cursor.isAfterLast()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    try {
                        try {
                            Wwwwwwwwwwwwwwwwwwwww2.put("cursorId", num);
                        } catch (Exception e) {
                            e = e;
                            Wwwww(e, operation);
                            if (sqfliteCursor2 != null) {
                                Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor2);
                            } else {
                                sqfliteCursor = sqfliteCursor2;
                            }
                            if (!z && sqfliteCursor != null) {
                                Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor);
                            }
                            return false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z2 = z;
                        if (!z2 && sqfliteCursor2 != null) {
                            Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor2);
                        }
                        throw th;
                    }
                }
                operation.success(Wwwwwwwwwwwwwwwwwwwww2);
                if (!z) {
                    Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor2);
                }
                return true;
            }
            throw new IllegalStateException("Cursor " + intValue + " not found");
        } catch (Exception e2) {
            e = e2;
            z = false;
        } catch (Throwable th2) {
            th = th2;
            if (!z2) {
                Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor2);
            }
            throw th;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwww(@NonNull Operation operation) {
        Cursor cursor;
        Integer num = (Integer) operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("cursorPageSize");
        final SqlCommand Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwww();
            Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        SqfliteCursor sqfliteCursor = null;
        try {
            cursor = Wwwwwwwww().rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                    return Database.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(SqlCommand.this, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                }
            }, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Constant.f10052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            try {
                try {
                    Map<String, Object> Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(cursor, num);
                    if (num != null && !cursor.isLast() && !cursor.isAfterLast()) {
                        int i = this.f10054Wwwwwwwwwwwwwwwwwwwwww + 1;
                        this.f10054Wwwwwwwwwwwwwwwwwwwwww = i;
                        Wwwwwwwwwwwwwwwwwwwww2.put("cursorId", Integer.valueOf(i));
                        SqfliteCursor sqfliteCursor2 = new SqfliteCursor(i, num.intValue(), cursor);
                        try {
                            this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i), sqfliteCursor2);
                            sqfliteCursor = sqfliteCursor2;
                        } catch (Exception e) {
                            e = e;
                            sqfliteCursor = sqfliteCursor2;
                            Wwwww(e, operation);
                            if (sqfliteCursor != null) {
                                Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor);
                            }
                            if (sqfliteCursor == null && cursor != null) {
                                cursor.close();
                                return false;
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            sqfliteCursor = sqfliteCursor2;
                            if (sqfliteCursor == null && cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    operation.success(Wwwwwwwwwwwwwwwwwwwww2);
                    if (sqfliteCursor == null && cursor != null) {
                        cursor.close();
                    }
                    return true;
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean Wwwwwwwwwwwwwwwwww(com.tekartik.sqflite.operation.Operation r8) {
        /*
            r7 = this;
            boolean r0 = r7.Wwwwwwwwwwww(r8)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            boolean r0 = r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L14
            r8.success(r2)
            return r3
        L14:
            java.lang.String r0 = "SELECT changes(), last_insert_rowid()"
            android.database.sqlite.SQLiteDatabase r4 = r7.Wwwwww()     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            android.database.Cursor r0 = r4.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            if (r0 == 0) goto L67
            int r4 = r0.getCount()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r4 <= 0) goto L67
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r4 == 0) goto L67
            int r4 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r4 != 0) goto L4d
            int r4 = r7.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            boolean r4 = com.tekartik.sqflite.LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r4 == 0) goto L46
            r7.Wwwwwwww()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            r0.getLong(r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            goto L46
        L41:
            r8 = move-exception
            r2 = r0
            goto L82
        L44:
            r2 = move-exception
            goto L79
        L46:
            r8.success(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            r0.close()
            return r3
        L4d:
            long r4 = r0.getLong(r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            int r2 = r7.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            boolean r2 = com.tekartik.sqflite.LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r2 == 0) goto L5c
            r7.Wwwwwwww()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
        L5c:
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            r8.success(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            r0.close()
            return r3
        L67:
            r7.Wwwwwwww()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            r8.success(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L44
            if (r0 == 0) goto L72
            r0.close()
        L72:
            return r3
        L73:
            r8 = move-exception
            goto L82
        L75:
            r0 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
        L79:
            r7.Wwwww(r2, r8)     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L81
            r0.close()
        L81:
            return r1
        L82:
            if (r2 == 0) goto L87
            r2.close()
        L87:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tekartik.sqflite.Database.Wwwwwwwwwwwwwwwwww(com.tekartik.sqflite.operation.Operation):boolean");
    }

    public final boolean Wwwwwwwwwwwwwwwwwww(Operation operation) {
        if (!Wwwwwwwwwwww(operation)) {
            return false;
        }
        operation.success(null);
        return true;
    }

    public final Map<String, Object> Wwwwwwwwwwwwwwwwwwwww(Cursor cursor, @Nullable Integer num) {
        HashMap hashMap = null;
        int i = 0;
        ArrayList arrayList = null;
        while (cursor.moveToNext()) {
            if (hashMap == null) {
                ArrayList arrayList2 = new ArrayList();
                HashMap hashMap2 = new HashMap();
                i = cursor.getColumnCount();
                hashMap2.put("columns", Arrays.asList(cursor.getColumnNames()));
                hashMap2.put("rows", arrayList2);
                arrayList = arrayList2;
                hashMap = hashMap2;
            }
            arrayList.add(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cursor, i));
            if (num != null && arrayList.size() >= num.intValue()) {
                break;
            }
        }
        if (hashMap == null) {
            return new HashMap();
        }
        return hashMap;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NonNull SqfliteCursor sqfliteCursor) {
        try {
            int i = sqfliteCursor.f10091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                Wwwwwwww();
            }
            this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(Integer.valueOf(i));
            sqfliteCursor.f10089Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.close();
        } catch (Exception unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        SqfliteCursor sqfliteCursor = this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(i));
        if (sqfliteCursor != null) {
            Wwwwwwwwwwwwwwwwwwwwww(sqfliteCursor);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwww();
            this.f10060Wwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        }
        this.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        MethodCallOperation methodCallOperation = new MethodCallOperation(methodCall, result);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = methodCallOperation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwww2 = methodCallOperation.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        ArrayList arrayList = new ArrayList();
        for (Map map : (List) methodCallOperation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("operations")) {
            BatchOperation batchOperation = new BatchOperation(map, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = batchOperation.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass();
            char c = 65535;
            switch (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.hashCode()) {
                case -1319569547:
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("execute")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1183792455:
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("insert")) {
                        c = 1;
                        break;
                    }
                    break;
                case -838846263:
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("update")) {
                        c = 2;
                        break;
                    }
                    break;
                case 107944136:
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("query")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (Wwwwwwwwwwwwwwwwwww(batchOperation)) {
                        batchOperation.Wwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        batchOperation.Wwwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else {
                        batchOperation.Wwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                case 1:
                    if (Wwwwwwwwwwwwwwwwww(batchOperation)) {
                        batchOperation.Wwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        batchOperation.Wwwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else {
                        batchOperation.Wwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                case 2:
                    if (Wwwwwwwwwwwwwww(batchOperation)) {
                        batchOperation.Wwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        batchOperation.Wwwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else {
                        batchOperation.Wwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                case 3:
                    if (Wwwwwwwwwwwwwwwww(batchOperation)) {
                        batchOperation.Wwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        batchOperation.Wwwwwwwwwwwwwwwwwww(arrayList);
                        break;
                    } else {
                        batchOperation.Wwwwwwwwwwwwwwwwwwww(result);
                        return;
                    }
                default:
                    result.error("bad_param", "Batch method '" + Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "' not supported", null);
                    return;
            }
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            result.success(null);
        } else {
            result.success(arrayList);
        }
    }
}
