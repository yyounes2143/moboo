package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.u0;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d extends a<JumpLoaderResult> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f8955a = "d";
    private static d b;

    private d(f fVar) {
        super(fVar);
    }

    public static synchronized d a(f fVar) {
        d dVar;
        synchronized (d.class) {
            try {
                if (b == null) {
                    b = new d(fVar);
                }
                dVar = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
        if (r12 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
        if (r12 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0066, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.mbridge.msdk.click.entity.JumpLoaderResult b(java.lang.String r12, java.lang.String r13) {
        /*
            r11 = this;
            monitor-enter(r11)
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r11.getReadableDatabase()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            java.lang.String r3 = "campaignclick"
            java.lang.String r5 = "id=? AND unitid=?"
            java.lang.String[] r6 = new java.lang.String[]{r12, r13}     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r9 = 0
            r10 = 0
            r4 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r12 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            if (r12 == 0) goto L4a
            int r13 = r12.getCount()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            if (r13 <= 0) goto L4a
            boolean r13 = r12.moveToFirst()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            if (r13 == 0) goto L4a
            java.lang.String r13 = "result"
            int r13 = r12.getColumnIndex(r13)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            java.lang.String r13 = r12.getString(r13)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            boolean r0 = android.text.TextUtils.isEmpty(r13)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            if (r0 != 0) goto L4a
            java.lang.Object r13 = com.mbridge.msdk.foundation.tools.u0.a(r13)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            com.mbridge.msdk.click.entity.JumpLoaderResult r13 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r13     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L47
            r12.close()     // Catch: java.lang.Throwable -> L40
            monitor-exit(r11)
            return r13
        L40:
            r0 = move-exception
            r12 = r0
            goto L6d
        L43:
            r0 = move-exception
            r13 = r0
            r1 = r12
            goto L67
        L47:
            r0 = move-exception
            r13 = r0
            goto L53
        L4a:
            if (r12 == 0) goto L65
            goto L62
        L4d:
            r0 = move-exception
            r13 = r0
            goto L67
        L50:
            r0 = move-exception
            r13 = r0
            r12 = r1
        L53:
            boolean r0 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L60
            java.lang.String r0 = com.mbridge.msdk.foundation.db.d.f8955a     // Catch: java.lang.Throwable -> L43
            java.lang.String r13 = r13.getMessage()     // Catch: java.lang.Throwable -> L43
            com.mbridge.msdk.foundation.tools.o0.b(r0, r13)     // Catch: java.lang.Throwable -> L43
        L60:
            if (r12 == 0) goto L65
        L62:
            r12.close()     // Catch: java.lang.Throwable -> L40
        L65:
            monitor-exit(r11)
            return r1
        L67:
            if (r1 == 0) goto L6c
            r1.close()     // Catch: java.lang.Throwable -> L40
        L6c:
            throw r13     // Catch: java.lang.Throwable -> L40
        L6d:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L40
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.d.b(java.lang.String, java.lang.String):com.mbridge.msdk.click.entity.JumpLoaderResult");
    }

    public synchronized boolean c(String str, String str2) {
        try {
            Cursor rawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id= ? AND unitid= ? AND cti + ts > " + System.currentTimeMillis(), new String[]{str, str2});
            if (rawQuery != null && rawQuery.getCount() > 0) {
                rawQuery.close();
                return true;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return false;
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b(f8955a, e.getMessage());
            }
            return false;
        }
    }

    public synchronized void a() {
        try {
            getWritableDatabase().delete("campaignclick", " ( " + System.currentTimeMillis() + " - " + CampaignEx.JSON_KEY_ST_TS + ") > cti", null);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b(f8955a, e.getMessage());
            }
        }
    }

    public synchronized long a(CampaignEx campaignEx, String str) {
        if (campaignEx == null) {
            return 0L;
        }
        try {
            try {
                String a2 = u0.a(campaignEx.getJumpResult());
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", campaignEx.getId());
                contentValues.put("unitid", str);
                contentValues.put("result", a2);
                contentValues.put("cti", Integer.valueOf(campaignEx.getClickInterval() * 1000));
                contentValues.put(CampaignEx.JSON_KEY_PACKAGE_NAME, campaignEx.getPackageName());
                com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                contentValues.put(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(System.currentTimeMillis()));
                if (d != null && d.X() > 0) {
                    contentValues.put("cpei", Integer.valueOf(d.X() * 1000));
                }
                if (d != null && d.Y() > 0) {
                    contentValues.put("cpoci", Integer.valueOf(d.Y() * 1000));
                }
                if (a(campaignEx.getId(), str)) {
                    if (getWritableDatabase() == null) {
                        return -1L;
                    }
                    return getWritableDatabase().update("campaignclick", contentValues, "id = ? AND unitid = ? ", new String[]{campaignEx.getId(), str});
                }
                return getWritableDatabase().insert("campaignclick", null, contentValues);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(f8955a, e.getMessage());
                }
                return -1L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean a(String str, String str2) {
        Cursor rawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id= ? AND unitid= ?", new String[]{str, str2});
        if (rawQuery != null && rawQuery.getCount() > 0) {
            rawQuery.close();
            return true;
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
        return false;
    }
}
