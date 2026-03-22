package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class k extends a {

    /* renamed from: a  reason: collision with root package name */
    private static String f8963a = "ReplaceTempDao";
    private static k b;

    private k(f fVar) {
        super(fVar);
    }

    public static k a(f fVar) {
        if (b == null) {
            synchronized (e.class) {
                try {
                    if (b == null) {
                        b = new k(fVar);
                    }
                } finally {
                }
            }
        }
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        if (r4 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
        if (r4 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
        r4.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject b(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.lang.String[] r4 = new java.lang.String[]{r4}
            android.database.sqlite.SQLiteDatabase r0 = r3.getReadableDatabase()
            java.lang.String r2 = "SELECT * FROM c_replace_temp WHERE d_key = ? "
            android.database.Cursor r4 = r0.rawQuery(r2, r4)
            if (r4 == 0) goto L3d
            int r0 = r4.getCount()     // Catch: java.lang.Throwable -> L3b
            if (r0 <= 0) goto L3d
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L3b
            r0.<init>()     // Catch: java.lang.Throwable -> L3b
            r1 = r0
        L24:
            boolean r0 = r4.moveToNext()     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L56
            java.lang.String r0 = "d_value"
            int r0 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3b
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.Throwable -> L3b
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L3b
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L3b
            r1 = r2
            goto L24
        L3b:
            r0 = move-exception
            goto L43
        L3d:
            if (r4 == 0) goto L56
            r4.close()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L56
            goto L56
        L43:
            java.lang.String r2 = com.mbridge.msdk.foundation.db.k.f8963a     // Catch: java.lang.Throwable -> L4f
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L4f
            com.mbridge.msdk.foundation.tools.o0.b(r2, r0)     // Catch: java.lang.Throwable -> L4f
            if (r4 == 0) goto L5b
            goto L58
        L4f:
            r0 = move-exception
            if (r4 == 0) goto L55
            r4.close()     // Catch: java.lang.Exception -> L55
        L55:
            throw r0
        L56:
            if (r4 == 0) goto L5b
        L58:
            r4.close()     // Catch: java.lang.Exception -> L5b
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.k.b(java.lang.String):org.json.JSONObject");
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("d_key", str);
            contentValues.put("d_value", jSONObject.toString());
            contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
            if (!a(str)) {
                getWritableDatabase().insert("c_replace_temp", null, contentValues);
                return;
            }
            getWritableDatabase().update("c_replace_temp", contentValues, "d_key = ? ", new String[]{str});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean a(String str) {
        Cursor rawQuery = getReadableDatabase().rawQuery("SELECT d_value FROM c_replace_temp WHERE d_key= ? ", new String[]{str});
        if (rawQuery != null && rawQuery.getCount() > 0) {
            try {
                rawQuery.close();
                return true;
            } catch (Exception unused) {
                return true;
            }
        } else if (rawQuery != null) {
            try {
                rawQuery.close();
                return false;
            } catch (Exception unused2) {
                return false;
            }
        } else {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
        if (r0 == null) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0068 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject a() {
        /*
            r6 = this;
            r0 = 7
            r6.a(r0)
            android.database.sqlite.SQLiteDatabase r0 = r6.getReadableDatabase()
            java.lang.String r1 = "SELECT * FROM c_replace_temp"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            if (r0 == 0) goto L45
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L43
            if (r1 <= 0) goto L45
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L43
            r1.<init>()     // Catch: java.lang.Throwable -> L43
        L1c:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L3f
            if (r2 == 0) goto L41
            java.lang.String r2 = "d_key"
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = "d_value"
            int r3 = r0.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r0.getString(r3)     // Catch: java.lang.Throwable -> L3f
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L3f
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L3f
            r1.put(r2, r4)     // Catch: java.lang.Throwable -> L3f
            goto L1c
        L3f:
            r2 = move-exception
            goto L4e
        L41:
            r2 = r1
            goto L61
        L43:
            r1 = move-exception
            goto L4b
        L45:
            if (r0 == 0) goto L61
            r0.close()     // Catch: java.lang.Throwable -> L43
            goto L61
        L4b:
            r5 = r2
            r2 = r1
            r1 = r5
        L4e:
            java.lang.String r3 = com.mbridge.msdk.foundation.db.k.f8963a     // Catch: java.lang.Throwable -> L5a
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L5a
            com.mbridge.msdk.foundation.tools.o0.b(r3, r2)     // Catch: java.lang.Throwable -> L5a
            if (r0 == 0) goto L67
            goto L64
        L5a:
            r1 = move-exception
            if (r0 == 0) goto L60
            r0.close()     // Catch: java.lang.Exception -> L60
        L60:
            throw r1
        L61:
            if (r0 == 0) goto L68
            r1 = r2
        L64:
            r0.close()     // Catch: java.lang.Exception -> L67
        L67:
            return r1
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.k.a():org.json.JSONObject");
    }

    public void a(int i) {
        long currentTimeMillis = System.currentTimeMillis() - (i * 86400000);
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            getWritableDatabase().delete("c_replace_temp", "time<?", new String[]{String.valueOf(currentTimeMillis)});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
