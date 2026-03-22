package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
import com.sensorsdata.analytics.android.sdk.advert.oaid.OAIDRom;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class VivoImpl implements IRomOAID {
    private static final String TAG = "SA.VivoImpl";
    private final Context mContext;

    public VivoImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        String str;
        Cursor cursor = null;
        r8 = null;
        r8 = null;
        String str2 = null;
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str2 = query.getString(query.getColumnIndex("value"));
                        if (str2 != null) {
                            if (str2.length() == 0) {
                            }
                        }
                        SALog.i(TAG, "OAID query failed");
                    }
                } catch (Throwable th) {
                    th = th;
                    String str3 = str2;
                    cursor = query;
                    str = str3;
                    try {
                        SALog.i(TAG, th);
                        return str;
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
            if (query != null) {
                query.close();
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public boolean isSupported() {
        if (Build.VERSION.SDK_INT < 28) {
            return false;
        }
        return OAIDRom.sysProperty("persist.sys.identifierid.supported", "0").equals("1");
    }
}
