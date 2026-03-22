package com.sensorsdata.analytics.android.sdk.advert.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class SamsungImpl implements IRomOAID {
    private static final String TAG = "SA.SamsungImpl";
    private final Context mContext;
    private final OAIDService mService = new OAIDService();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SamsungInterface implements IInterface {
        private final IBinder mIBinder;

        public SamsungInterface(IBinder iBinder) {
            this.mIBinder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.mIBinder;
        }

        public String getOAID() {
            String str = null;
            try {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                obtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                this.mIBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return str;
            } catch (Throwable th) {
                SALog.i(SamsungImpl.TAG, th);
                return str;
            }
        }
    }

    public SamsungImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        String str = null;
        try {
            if (!this.mContext.bindService(intent, this.mService, 1)) {
                return null;
            }
            str = new SamsungInterface(OAIDService.BINDER_QUEUE.take()).getOAID();
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
            if (this.mContext.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) == null) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return false;
        }
    }
}
