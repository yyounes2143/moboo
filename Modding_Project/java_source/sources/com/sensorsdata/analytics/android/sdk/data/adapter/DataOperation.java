package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class DataOperation {
    String TAG = "EventDataOperation";
    ContentResolver contentResolver;
    private final Context mContext;
    private File mDatabaseFile;

    public DataOperation(Context context) {
        this.mContext = context;
        this.contentResolver = context.getContentResolver();
    }

    private boolean belowMemThreshold() {
        if (this.mDatabaseFile == null) {
            this.mDatabaseFile = this.mContext.getDatabasePath(DbParams.DATABASE_NAME);
        }
        if (!this.mDatabaseFile.exists() || this.mDatabaseFile.length() < getMaxCacheSize(this.mContext)) {
            return false;
        }
        return true;
    }

    private String buildIds(JSONArray jSONArray) throws JSONException {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                sb.append(jSONArray.get(i));
                sb.append(",");
            }
            sb.replace(sb.length() - 1, sb.length(), "");
        }
        sb.append(")");
        return sb.toString();
    }

    private long getMaxCacheSize(Context context) {
        try {
            return SensorsDataAPI.sharedInstance(context).getMaxCacheSize();
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return 33554432L;
        }
    }

    public void deleteData(Uri uri, String str) {
        try {
            if ("DB_DELETE_ALL".equals(str)) {
                SALog.i(this.TAG, "deleteData DB_DELETE_ALL");
                this.contentResolver.delete(uri, null, null);
                return;
            }
            this.contentResolver.delete(uri, "_id <= ?", new String[]{str});
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public int deleteDataLowMemory(Uri uri) {
        if (belowMemThreshold()) {
            SALog.i(this.TAG, "There is not enough space left on the device to store events, so will delete 100 oldest events");
            String[] queryData = queryData(uri, 100);
            if (queryData == null) {
                return -2;
            }
            deleteData(uri, queryData[0]);
            if (queryDataCount(uri, 2) <= 0) {
                return -2;
            }
        }
        return 0;
    }

    public String getFirstRowId(Uri uri, String str) {
        Cursor cursor = null;
        try {
            try {
                cursor = this.contentResolver.query(uri, new String[]{"_id"}, "is_instant_event=?", new String[]{str}, "created_at ASC LIMIT 1");
            } catch (Exception e) {
                SALog.printStackTrace(e);
                if (cursor == null) {
                    return "";
                }
            }
            if (cursor != null) {
                String string = cursor.getString(cursor.getColumnIndexOrThrow("_id"));
                cursor.close();
                return string;
            }
            if (cursor == null) {
                return "";
            }
            cursor.close();
            return "";
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public abstract int insertData(Uri uri, ContentValues contentValues);

    public abstract int insertData(Uri uri, JSONObject jSONObject);

    public String parseData(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            int lastIndexOf = str.lastIndexOf("\t");
            if (lastIndexOf > -1) {
                String replaceFirst = str.substring(lastIndexOf).replaceFirst("\t", "");
                str = str.substring(0, lastIndexOf);
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(replaceFirst)) {
                    if (replaceFirst.equals(String.valueOf(str.hashCode()))) {
                        return str;
                    }
                }
                return "";
            }
            return str;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return str;
        }
    }

    public abstract String[] queryData(Uri uri, int i);

    public abstract String[] queryData(Uri uri, boolean z, int i);

    public int queryDataCount(Uri uri, int i) {
        String[] strArr = i != 0 ? i != 1 ? null : new String[]{"1"} : new String[]{"0"};
        if (strArr != null) {
            return queryDataCount(uri, new String[]{"_id"}, "is_instant_event=?", strArr, null);
        }
        return queryDataCount(uri, new String[]{"_id"}, null, null, null);
    }

    public void deleteData(Uri uri, JSONArray jSONArray) {
        try {
            String str = this.TAG;
            SALog.i(str, "deleteData ids = " + jSONArray);
            ContentResolver contentResolver = this.mContext.getContentResolver();
            contentResolver.delete(uri, "_id in " + buildIds(jSONArray), null);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public int queryDataCount(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = this.contentResolver.query(uri, strArr, str, strArr2, str2);
            } catch (Exception e) {
                SALog.printStackTrace(e);
                if (cursor == null) {
                    return 0;
                }
            }
            if (cursor != null) {
                int count = cursor.getCount();
                cursor.close();
                return count;
            }
            if (cursor == null) {
                return 0;
            }
            cursor.close();
            return 0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
