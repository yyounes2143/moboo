package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class MeizuImpl implements IRomOAID {
    private static final String TAG = "SA.MeizuImpl";
    private final Context mContext;

    public MeizuImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        String str = null;
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (query == null || !query.moveToFirst()) {
                return null;
            }
            str = query.getString(query.getColumnIndex("value"));
            SALog.i(TAG, "OAID query success: " + str);
            query.close();
            return str;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return str;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public boolean isSupported() {
        try {
            if (this.mContext.getPackageManager().resolveContentProvider("com.meizu.flyme.openidsdk", 0) == null) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return false;
        }
    }
}
