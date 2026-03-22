package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteBlobTooBigException;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.instantevent.InstantEventUtils;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class EventDataOperation extends DataOperation {
    public EventDataOperation(Context context) {
        super(context);
        this.TAG = "EventDataOperation";
    }

    private String[] handleBigException(Uri uri, boolean z) {
        String str;
        try {
            return queryDataInner(uri, z, 1);
        } catch (SQLiteBlobTooBigException e) {
            if (z) {
                str = "1";
            } else {
                str = "0";
            }
            deleteData(uri, getFirstRowId(uri, str));
            SALog.printStackTrace(e);
            return null;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] queryDataInner(android.net.Uri r12, boolean r13, int r14) {
        /*
            r11 = this;
            java.lang.String r1 = "1"
            org.json.JSONArray r2 = new org.json.JSONArray
            r2.<init>()
            r3 = 0
            java.lang.String r0 = "0"
            if (r13 == 0) goto Ld
            r0 = r1
        Ld:
            android.content.ContentResolver r4 = r11.contentResolver     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r7 = "is_instant_event=?"
            java.lang.String[] r8 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> Lb2
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2
            r13.<init>()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r0 = "created_at ASC LIMIT "
            r13.append(r0)     // Catch: java.lang.Throwable -> Lb2
            r13.append(r14)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r9 = r13.toString()     // Catch: java.lang.Throwable -> Lb2
            r6 = 0
            r5 = r12
            android.database.Cursor r12 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> Lb2
            if (r12 == 0) goto Laa
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L49
            r13.<init>()     // Catch: java.lang.Throwable -> L49
            java.lang.String r14 = ","
            java.lang.String r0 = "["
            r13.append(r0)     // Catch: java.lang.Throwable -> L49
        L3a:
            boolean r0 = r12.moveToNext()     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L93
            boolean r0 = r12.isLast()     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L4e
            java.lang.String r14 = "]"
            goto L4e
        L49:
            r0 = move-exception
            r13 = r0
            r14 = r3
            goto Lb6
        L4e:
            java.lang.String r0 = "_id"
            int r0 = r12.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = r12.getString(r0)     // Catch: java.lang.Throwable -> L49
            r2.put(r0)     // Catch: java.lang.Throwable -> L49
            java.lang.String r0 = "data"
            int r0 = r12.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            java.lang.String r0 = r12.getString(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            java.lang.String r0 = r11.parseData(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            if (r4 != 0) goto L3a
            int r4 = r0.length()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            int r4 = r4 + (-1)
            r5 = 0
            r13.append(r0, r5, r4)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            java.lang.String r0 = ",\"_flush_time\":"
            r13.append(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            r13.append(r4)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            java.lang.String r0 = "}"
            r13.append(r0)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            r13.append(r14)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L8e
            goto L3a
        L8e:
            r0 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)     // Catch: java.lang.Throwable -> L49
            goto L3a
        L93:
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Throwable -> L49
            int r14 = r2.length()     // Catch: java.lang.Throwable -> La2
            if (r14 <= 0) goto La8
            java.lang.String r14 = r2.toString()     // Catch: java.lang.Throwable -> La2
            goto Lac
        La2:
            r0 = move-exception
            r14 = r0
            r10 = r14
            r14 = r13
            r13 = r10
            goto Lb6
        La8:
            r14 = r3
            goto Lac
        Laa:
            r13 = r3
            r14 = r13
        Lac:
            if (r12 == 0) goto Lc6
            r12.close()
            goto Lc6
        Lb2:
            r0 = move-exception
            r13 = r0
            r12 = r3
            r14 = r12
        Lb6:
            java.lang.String r0 = r11.TAG     // Catch: java.lang.Throwable -> Lce
            java.lang.String r13 = r13.getMessage()     // Catch: java.lang.Throwable -> Lce
            com.sensorsdata.analytics.android.sdk.SALog.i(r0, r13)     // Catch: java.lang.Throwable -> Lce
            if (r12 == 0) goto Lc4
            r12.close()
        Lc4:
            r13 = r14
            r14 = r3
        Lc6:
            if (r14 == 0) goto Lcd
            java.lang.String[] r12 = new java.lang.String[]{r14, r13, r1}
            return r12
        Lcd:
            return r3
        Lce:
            r0 = move-exception
            r13 = r0
            if (r12 == 0) goto Ld5
            r12.close()
        Ld5:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.data.adapter.EventDataOperation.queryDataInner(android.net.Uri, boolean, int):java.lang.String[]");
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public void deleteData(Uri uri, String str) {
        super.deleteData(uri, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, JSONObject jSONObject) {
        try {
            if (deleteDataLowMemory(uri) != 0) {
                return -2;
            }
            int isInstantEvent = InstantEventUtils.isInstantEvent(jSONObject);
            ContentValues contentValues = new ContentValues();
            String jSONObject2 = jSONObject.toString();
            contentValues.put("data", jSONObject2 + "\t" + jSONObject2.hashCode());
            contentValues.put(DbParams.KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
            contentValues.put(DbParams.KEY_IS_INSTANT_EVENT, Integer.valueOf(isInstantEvent));
            this.contentResolver.insert(uri, contentValues);
            return 0;
        } catch (Throwable th) {
            SALog.i(this.TAG, th.getMessage());
            return 0;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, int i) {
        return queryData(uri, false, i);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, boolean z, int i) {
        try {
            return queryDataInner(uri, z, i);
        } catch (SQLiteBlobTooBigException e) {
            SALog.i(this.TAG, "Could not pull records for SensorsData out of database events. SQLiteBlobTooBigException ", e);
            return handleBigException(uri, z);
        } catch (SQLiteException e2) {
            SALog.i(this.TAG, "Could not pull records for SensorsData out of database events. Waiting to send.", e2);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, ContentValues contentValues) {
        try {
            if (deleteDataLowMemory(uri) != 0) {
                return -2;
            }
            this.contentResolver.insert(uri, contentValues);
            return 0;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return 0;
        }
    }
}
