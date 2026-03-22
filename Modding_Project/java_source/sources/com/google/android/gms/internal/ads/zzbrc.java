package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbrc extends zzayk implements zzbre {
    public zzbrc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbre
    public final void zzg(zzbqa zzbqaVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbqaVar);
        zzdb(1, zza);
    }
}
