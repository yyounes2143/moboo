package com.sensorsdata.analytics.android.sdk.data;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataContentProvider extends ContentProvider {
    private static final UriMatcher uriMatcher = new UriMatcher(-1);
    private SAProviderHelper mProviderHelper;

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        try {
            return this.mProviderHelper.bulkInsert(uri, contentValuesArr);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        try {
            int match = uriMatcher.match(uri);
            if (1 == match) {
                return this.mProviderHelper.deleteEvents(str, strArr);
            }
            if (match == 15) {
                return this.mProviderHelper.removeSP(uri.getQueryParameter(DbParams.REMOVE_SP_KEY));
            }
            return 0;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues != null && contentValues.size() != 0) {
            try {
                int match = uriMatcher.match(uri);
                if (match == 1) {
                    return this.mProviderHelper.insertEvent(uri, contentValues);
                }
                if (match == 8) {
                    return this.mProviderHelper.insertChannelPersistent(uri, contentValues);
                }
                this.mProviderHelper.insertPersistent(match, uri, contentValues);
                return uri;
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        return uri;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        String str;
        try {
            Context context = getContext();
            if (context != null) {
                try {
                    str = context.getApplicationContext().getPackageName();
                } catch (UnsupportedOperationException unused) {
                    str = "com.sensorsdata.analytics.android.sdk.test";
                }
                SAProviderHelper sAProviderHelper = SAProviderHelper.getInstance(context);
                this.mProviderHelper = sAProviderHelper;
                UriMatcher uriMatcher2 = uriMatcher;
                sAProviderHelper.appendUri(uriMatcher2, str + ".SensorsDataContentProvider");
                return true;
            }
            return true;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return true;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            int match = uriMatcher.match(uri);
            if (match == 1) {
                return this.mProviderHelper.queryByTable(DbParams.TABLE_EVENTS, strArr, str, strArr2, str2);
            }
            if (match == 8) {
                return this.mProviderHelper.queryByTable(DbParams.TABLE_CHANNEL_PERSISTENT, strArr, str, strArr2, str2);
            }
            return this.mProviderHelper.queryPersistent(match, uri);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
