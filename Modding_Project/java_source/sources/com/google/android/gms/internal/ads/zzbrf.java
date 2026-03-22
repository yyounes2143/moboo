package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbrf extends zzayk implements zzbrh {
    public zzbrf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbrh
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzdb(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrh
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrh
    public final void zzg() throws RemoteException {
        zzdb(2, zza());
    }
}
