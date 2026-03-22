package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class OppoImpl implements IRomOAID {
    private static final String TAG = "SA.OppoImpl";
    private final Context mContext;
    private final OAIDService mService = new OAIDService();
    private String mSign;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class OppoInterface implements IInterface {
        private final IBinder mIBinder;

        public OppoInterface(IBinder iBinder) {
            this.mIBinder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.mIBinder;
        }

        public String getSerID(String str, String str2, String str3) {
            String str4 = null;
            try {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeString(str3);
                this.mIBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str4 = obtain2.readString();
                obtain.recycle();
                obtain2.recycle();
                return str4;
            } catch (Throwable th) {
                SALog.i(OppoImpl.TAG, th);
                return str4;
            }
        }
    }

    public OppoImpl(Context context) {
        this.mContext = context;
    }

    private String getSerId(String str, String str2) throws InterruptedException {
        return new OppoInterface(OAIDService.BINDER_QUEUE.take()).getSerID(str, str2, "OUID");
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private String realGetOUID() {
        String packageName = this.mContext.getPackageName();
        try {
            String str = this.mSign;
            if (str == null) {
                byte[] digest = MessageDigest.getInstance("SHA1").digest(this.mContext.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
                StringBuilder sb = new StringBuilder();
                for (byte b : digest) {
                    sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                }
                String sb2 = sb.toString();
                this.mSign = sb2;
                return getSerId(packageName, sb2);
            }
            return getSerId(packageName, str);
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        Intent intent = new Intent("action.com.heytap.openid.OPEN_ID_SERVICE");
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        String str = null;
        try {
            if (!this.mContext.bindService(intent, this.mService, 1)) {
                return null;
            }
            str = realGetOUID();
            this.mContext.unbindService(this.mService);
            return str;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return str;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public boolean isSupported() {
        try {
            if (this.mContext.getPackageManager().getPackageInfo("com.heytap.openid", 0) == null) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return false;
        }
    }
}
