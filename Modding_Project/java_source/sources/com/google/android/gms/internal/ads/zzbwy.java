package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbwy extends zzayk implements IInterface {
    public zzbwy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbwn zzbwnVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbwnVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzdb(2, zza);
    }
}
