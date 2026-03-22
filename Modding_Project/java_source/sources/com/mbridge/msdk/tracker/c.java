package com.mbridge.msdk.tracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f9657a;
    private final String b;
    private final Object c = new Object();

    public c(b bVar, String str) {
        this.f9657a = bVar;
        this.b = str;
    }

    private static boolean c(SQLiteDatabase sQLiteDatabase) {
        return sQLiteDatabase == null || !sQLiteDatabase.isOpen() || sQLiteDatabase.isReadOnly();
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        if (!y.b(sQLiteDatabase)) {
            try {
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception unused) {
                boolean z = a.f9655a;
            }
        }
    }

    public long a(i iVar) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            long j = -1;
            if (y.b(this.f9657a)) {
                return -1L;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return -1L;
            }
            try {
                a(sQLiteDatabase);
                ContentValues contentValues = new ContentValues(16);
                e a2 = iVar.a();
                contentValues.put("name", a2.b());
                contentValues.put("type", Integer.valueOf(a2.h()));
                contentValues.put("time_stamp", Long.valueOf(a2.g()));
                contentValues.put(SAPropertyFilter.PROPERTIES, a2.d().toString());
                contentValues.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, Integer.valueOf(a2.c()));
                contentValues.put("state", Integer.valueOf(iVar.e()));
                contentValues.put("report_count", Integer.valueOf(iVar.c()));
                contentValues.put("uuid", a2.i());
                contentValues.put("ignore_max_timeout", Integer.valueOf(!a2.k()));
                contentValues.put("ignore_max_retry_times", Integer.valueOf(!a2.j()));
                contentValues.put("invalid_time", Long.valueOf(iVar.b()));
                j = sQLiteDatabase.insert(this.b, null, contentValues);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
            return j;
        }
    }

    public int b() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            int i = 0;
            if (y.b(this.f9657a)) {
                return 0;
            }
            Cursor cursor = null;
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return 0;
            }
            try {
                a(sQLiteDatabase);
                cursor = sQLiteDatabase.query(this.b, null, "state = ? OR state = ?", new String[]{String.valueOf(3), String.valueOf(0)}, null, null, null, null);
                if (cursor != null && cursor.moveToNext()) {
                    i = Math.max(cursor.getCount(), 0);
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                y.a(cursor);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
                y.a(cursor);
            }
            return i;
        }
    }

    public void c(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            if (y.b(this.f9657a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 2);
                    sQLiteDatabase.update(this.b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
        }
    }

    public void c() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            if (y.b(this.f9657a)) {
                return;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                ContentValues contentValues = new ContentValues();
                contentValues.put("state", (Integer) 3);
                contentValues.put("report_error_message", "update from reporting");
                sQLiteDatabase.update(this.b, contentValues, "state = ?", new String[]{String.valueOf(1)});
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
        }
    }

    public void b(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            if (y.b(this.f9657a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 1);
                    sQLiteDatabase.update(this.b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
        }
    }

    public List<i> a(int i) {
        SQLiteDatabase sQLiteDatabase;
        List<i> list;
        Cursor query;
        synchronized (this.c) {
            Cursor cursor = null;
            List<i> list2 = null;
            Cursor cursor2 = null;
            if (y.b(this.f9657a)) {
                return null;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            try {
                if (c(sQLiteDatabase)) {
                    return null;
                }
                try {
                    a(sQLiteDatabase);
                    query = sQLiteDatabase.query(this.b, null, "state = ? OR state = ?", new String[]{String.valueOf(0), String.valueOf(3)}, null, null, "priority DESC", String.valueOf(i));
                } catch (Exception e2) {
                    e = e2;
                    list = null;
                }
                try {
                    list2 = y.b(query);
                    d(sQLiteDatabase);
                    b(sQLiteDatabase);
                    y.a(query);
                } catch (Exception e3) {
                    e = e3;
                    List<i> list3 = list2;
                    cursor2 = query;
                    list = list3;
                    if (a.f9655a) {
                        e.getMessage();
                    }
                    b(sQLiteDatabase);
                    y.a(cursor2);
                    list2 = list;
                    return list2;
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    b(sQLiteDatabase);
                    y.a(cursor);
                    throw th;
                }
                return list2;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase) || !sQLiteDatabase.inTransaction()) {
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused) {
            boolean z = a.f9655a;
        }
    }

    public void a(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            if (y.b(this.f9657a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", Integer.valueOf(iVar.e()));
                    contentValues.put("report_count", Integer.valueOf(iVar.c()));
                    String d = iVar.d();
                    if (!TextUtils.isEmpty(d)) {
                        contentValues.put("report_error_message", d);
                    }
                    sQLiteDatabase.update(this.b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
        }
    }

    public int a() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.c) {
            int i = -1;
            if (y.b(this.f9657a)) {
                return -1;
            }
            try {
                sQLiteDatabase = this.f9657a.getWritableDatabase();
            } catch (Exception e) {
                if (a.f9655a) {
                    e.getMessage();
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return -1;
            }
            try {
                a(sQLiteDatabase);
                i = sQLiteDatabase.delete(this.b, "state = ? OR state = ?", new String[]{String.valueOf(-1), String.valueOf(2)});
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e2) {
                if (a.f9655a) {
                    e2.getMessage();
                }
                b(sQLiteDatabase);
            }
            return i;
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.beginTransaction();
        } catch (Exception unused) {
            boolean z = a.f9655a;
        }
    }
}
