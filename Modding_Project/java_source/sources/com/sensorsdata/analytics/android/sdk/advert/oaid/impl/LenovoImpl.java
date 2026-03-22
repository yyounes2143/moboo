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
class LenovoImpl implements IRomOAID {
    private static final String TAG = "SA.LenovoImpl";
    private final Context mContext;
    private final OAIDService mService = new OAIDService();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class LenovoInterface implements IInterface {
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
                obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                this.iBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
                obtain.recycle();
                obtain2.recycle();
                return str;
            } catch (Throwable th) {
                SALog.i(LenovoImpl.TAG, th);
                return str;
            }
        }

        private LenovoInterface(IBinder iBinder) {
            this.iBinder = iBinder;
        }
    }

    public LenovoImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.oaid.IRomOAID
    public String getRomOAID() {
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        String str = null;
        try {
            if (!this.mContext.bindService(intent, this.mService, 1)) {
                return null;
            }
            str = new LenovoInterface(OAIDService.BINDER_QUEUE.take()).getOAID();
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
            if (this.mContext.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) == null) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            SALog.i(TAG, th);
            return false;
        }
    }
}
