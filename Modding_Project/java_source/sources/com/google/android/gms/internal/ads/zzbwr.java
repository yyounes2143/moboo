package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbwr extends zzayk implements zzbwt {
    public zzbwr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zze() throws RemoteException {
        zzdb(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzf() throws RemoteException {
        zzdb(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzg() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzh(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzdb(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzi(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzj() throws RemoteException {
        zzdb(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzk(zzbwn zzbwnVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbwnVar);
        zzdb(3, zza);
    }
}
