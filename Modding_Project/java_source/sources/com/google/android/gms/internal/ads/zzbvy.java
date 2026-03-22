package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbvy extends zzayk implements IInterface {
    public zzbvy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzbvx zzbvxVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbvxVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzdb(2, zza);
    }
}
