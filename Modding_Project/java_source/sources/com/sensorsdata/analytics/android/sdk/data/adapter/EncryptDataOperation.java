package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.instantevent.InstantEventUtils;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class EncryptDataOperation extends DataOperation {
    protected boolean mDbEncrypt;

    public EncryptDataOperation(Context context) {
        super(context);
        this.mDbEncrypt = true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public void deleteData(Uri uri, String str) {
        super.deleteData(uri, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, JSONObject jSONObject) {
        try {
        } catch (Throwable th) {
            SALog.i(this.TAG, th.getMessage());
        }
        if (deleteDataLowMemory(uri) != 0) {
            return -2;
        }
        int isInstantEvent = InstantEventUtils.isInstantEvent(jSONObject);
        JSONObject jSONObject2 = (JSONObject) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_ENCRYPT_EVENT_DATA, jSONObject);
        if (jSONObject2 != null) {
            jSONObject = jSONObject2;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", jSONObject.toString() + "\t" + jSONObject.toString().hashCode());
        contentValues.put(DbParams.KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
        contentValues.put(DbParams.KEY_IS_INSTANT_EVENT, Integer.valueOf(isInstantEvent));
        this.contentResolver.insert(uri, contentValues);
        return 0;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, int i) {
        return queryData(uri, false, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b4 A[Catch: all -> 0x009e, Exception -> 0x00a2, TryCatch #7 {Exception -> 0x00a2, blocks: (B:24:0x0090, B:35:0x00ae, B:37:0x00b4, B:39:0x00d4, B:41:0x00f1, B:40:0x00e2, B:42:0x00f5), top: B:96:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f5 A[Catch: all -> 0x009e, Exception -> 0x00a2, TRY_LEAVE, TryCatch #7 {Exception -> 0x00a2, blocks: (B:24:0x0090, B:35:0x00ae, B:37:0x00b4, B:39:0x00d4, B:41:0x00f1, B:40:0x00e2, B:42:0x00f5), top: B:96:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ce A[RETURN] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[] queryData(android.net.Uri r21, boolean r22, int r23) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.data.adapter.EncryptDataOperation.queryData(android.net.Uri, boolean, int):java.lang.String[]");
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
