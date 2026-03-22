package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class NubiaImpl implements IRomOAID {
    private static final String TAG = "SA.NubiaImpl";
    private final Context mContext;

    public NubiaImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        String str = null;
        if (!isSupported()) {
            SALog.i(TAG, "Only supports Android 10.0 and above for Nubia");
            return null;
        }
        try {
            ContentProviderClient acquireContentProviderClient = this.mContext.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (acquireContentProviderClient == null) {
                return null;
            }
            Bundle call = acquireContentProviderClient.call("getOAID", null, null);
            if (Build.VERSION.SDK_INT >= 24) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(acquireContentProviderClient);
            } else {
                acquireContentProviderClient.release();
            }
            if (call == null) {
                SALog.i(TAG, "OAID query failed: bundle is null");
                return null;
            }
            if (call.getInt("code", -1) == 0) {
                str = call.getString("id");
            }
            SALog.i(TAG, "OAID query success: " + str);
            return str;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public boolean isSupported() {
        if (Build.VERSION.SDK_INT >= 29) {
            return true;
        }
        return false;
    }
}
