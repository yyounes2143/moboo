package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbwl extends zzayk implements zzbwn {
    public zzbwl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzbwn
    public final int zze() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        int readInt = zzda.readInt();
        zzda.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbwn
    public final String zzf() throws RemoteException {
        Parcel zzda = zzda(1, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }
}
