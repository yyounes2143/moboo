package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class PersistentDataOperation extends DataOperation {
    public PersistentDataOperation(Context context) {
        super(context);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int handleInsertUri(Uri uri, JSONObject jSONObject) {
        int i;
        char c;
        char c2;
        if (uri == null) {
            return -1;
        }
        try {
            ContentValues contentValues = new ContentValues();
            String path = uri.getPath();
            if (!TextUtils.isEmpty(path)) {
                String substring = path.substring(1);
                i = 0;
                try {
                    switch (substring.hashCode()) {
                        case -1437430111:
                            if (substring.equals(DbParams.TABLE_ACTIVITY_START_COUNT)) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1436067305:
                            if (substring.equals(DbParams.PersistentName.LOGIN_ID)) {
                                c2 = 4;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1173524450:
                            if (substring.equals(DbParams.TABLE_SESSION_INTERVAL_TIME)) {
                                c2 = 3;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1109940413:
                            if (substring.equals(DbParams.TABLE_FIRST_PROCESS_START)) {
                                c2 = 6;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -456824111:
                            if (substring.equals(DbParams.PersistentName.PERSISTENT_LOGIN_ID_KEY)) {
                                c2 = '\t';
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -266152892:
                            if (substring.equals(DbParams.PersistentName.PERSISTENT_USER_ID)) {
                                c2 = '\b';
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 791585128:
                            if (substring.equals(DbParams.TABLE_APP_START_TIME)) {
                                c2 = 2;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 923005325:
                            if (substring.equals(DbParams.APP_EXIT_DATA)) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 947194773:
                            if (substring.equals(DbParams.PersistentName.REMOTE_CONFIG)) {
                                c2 = 7;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1776312250:
                            if (substring.equals(DbParams.PUSH_ID_KEY)) {
                                c2 = '\n';
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1964784692:
                            if (substring.equals(DbParams.PersistentName.SUB_PROCESS_FLUSH_DATA)) {
                                c2 = 5;
                                c = c2;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        case 0:
                            contentValues.put(DbParams.TABLE_ACTIVITY_START_COUNT, Integer.valueOf(jSONObject.optInt("value")));
                            break;
                        case 1:
                            contentValues.put(DbParams.APP_EXIT_DATA, jSONObject.optString("value"));
                            break;
                        case 2:
                            contentValues.put(DbParams.TABLE_APP_START_TIME, Long.valueOf(jSONObject.optLong("value")));
                            break;
                        case 3:
                            contentValues.put(DbParams.TABLE_SESSION_INTERVAL_TIME, Long.valueOf(jSONObject.optLong("value")));
                            break;
                        case 4:
                            contentValues.put(DbParams.PersistentName.LOGIN_ID, jSONObject.optString("value"));
                            break;
                        case 5:
                            contentValues.put(DbParams.PersistentName.SUB_PROCESS_FLUSH_DATA, Boolean.valueOf(jSONObject.optBoolean("value")));
                            break;
                        case 6:
                            contentValues.put(DbParams.TABLE_FIRST_PROCESS_START, Boolean.valueOf(jSONObject.optBoolean("value")));
                            break;
                        case 7:
                            contentValues.put(DbParams.PersistentName.REMOTE_CONFIG, jSONObject.optString("value"));
                            break;
                        case '\b':
                            contentValues.put(DbParams.PersistentName.PERSISTENT_USER_ID, jSONObject.optString("value"));
                            break;
                        case '\t':
                            contentValues.put(DbParams.PersistentName.PERSISTENT_LOGIN_ID_KEY, jSONObject.optString("value"));
                            break;
                        case '\n':
                            contentValues.put(DbParams.PUSH_ID_KEY, jSONObject.optString(DbParams.PUSH_ID_KEY));
                            contentValues.put(DbParams.PUSH_ID_VALUE, jSONObject.optString(DbParams.PUSH_ID_VALUE));
                            break;
                        default:
                            return -1;
                    }
                } catch (Exception e) {
                    e = e;
                }
                try {
                    this.contentResolver.insert(uri, contentValues);
                    return 0;
                } catch (Exception e2) {
                    e = e2;
                    SALog.printStackTrace(e);
                    return i;
                }
            }
            return 0;
        } catch (Exception e3) {
            e = e3;
            i = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e0, code lost:
        if (r10 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e2, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ed, code lost:
        if (r10 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00f0, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f3  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] handleQueryUri(android.net.Uri r10) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.data.adapter.PersistentDataOperation.handleQueryUri(android.net.Uri):java.lang.String[]");
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public void deleteData(Uri uri, String str) {
        this.contentResolver.delete(uri.buildUpon().appendQueryParameter(DbParams.REMOVE_SP_KEY, str).build(), null, null);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, JSONObject jSONObject) {
        return handleInsertUri(uri, jSONObject);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, int i) {
        return handleQueryUri(uri);
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public int insertData(Uri uri, ContentValues contentValues) {
        this.contentResolver.insert(uri, contentValues);
        return 0;
    }

    @Override // com.sensorsdata.analytics.android.sdk.data.adapter.DataOperation
    public String[] queryData(Uri uri, boolean z, int i) {
        return handleQueryUri(uri);
    }
}
