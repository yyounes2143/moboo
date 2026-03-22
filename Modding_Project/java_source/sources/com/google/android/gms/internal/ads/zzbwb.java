package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbwb extends zzayk implements zzbwd {
    public zzbwb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zze(zzbvx zzbvxVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbvxVar);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzf() throws RemoteException {
        zzdb(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzh() throws RemoteException {
        zzdb(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzi() throws RemoteException {
        zzdb(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzj() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzk() throws RemoteException {
        zzdb(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwd
    public final void zzl() throws RemoteException {
        zzdb(3, zza());
    }
}
