package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbux extends zzayk implements zzbuz {
    public zzbux(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zze(zzbvl zzbvlVar, zzbvd zzbvdVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbvlVar);
        zzaym.zzf(zza, zzbvdVar);
        zzdb(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzf(zzbvl zzbvlVar, zzbvd zzbvdVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbvlVar);
        zzaym.zzf(zza, zzbvdVar);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzg(zzbvl zzbvlVar, zzbvd zzbvdVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbvlVar);
        zzaym.zzf(zza, zzbvdVar);
        zzdb(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzh(String str, zzbvd zzbvdVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaym.zzf(zza, zzbvdVar);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void zzi(zzbuv zzbuvVar, zzbve zzbveVar) throws RemoteException {
        throw null;
    }
}
