package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.provider.Settings;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HuaweiImpl implements IRomOAID {
    private static final String TAG = "SA.HuaweiImpl";
    private final Context mContext;
    private String mPackageName;
    private final OAIDService mService = new OAIDService();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class HuaWeiInterface implements IInterface {
        private final IBinder iBinder;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.iBinder;
        }

        public String getOAID() {
            String str = null;
            try {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                this.iBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
                obtain.recycle();
                obtain2.recycle();
                return str;
            } catch (Throwable th) {
                SALog.i(HuaweiImpl.TAG, th);
                return str;
            }
        }

        private HuaWeiInterface(IBinder iBinder) {
            this.iBinder = iBinder;
        }
    }

    public HuaweiImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(this.mContext.getContentResolver(), "pps_oaid");
                if (!TextUtils.isEmpty(string)) {
                    SALog.i(TAG, "Get oaid from global settings");
                    return string;
                }
            } catch (Throwable th) {
                SALog.i(TAG, th);
            }
        }
        if (TextUtils.isEmpty(this.mPackageName) && !isSupported()) {
            SALog.i(TAG, "Huawei Advertising ID not available");
            return null;
        }
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(this.mPackageName);
        try {
            if (!this.mContext.bindService(intent, this.mService, 1)) {
                return null;
            }
            return new HuaWeiInterface(OAIDService.BINDER_QUEUE.take()).getOAID();
        } catch (Throwable th2) {
            SALog.i(TAG, th2);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public boolean isSupported() {
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                this.mPackageName = "com.huawei.hwid";
                return true;
            } else if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
                this.mPackageName = "com.huawei.hwid.tv";
                return true;
            } else {
                this.mPackageName = "com.huawei.hms";
                if (packageManager.getPackageInfo("com.huawei.hms", 0) == null) {
                    return false;
                }
                return true;
            }
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return false;
        }
    }
}
