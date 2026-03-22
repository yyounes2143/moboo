package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfsa extends zzayk implements zzfsc {
    public zzfsa(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final void zze(Bundle bundle, zzfse zzfseVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzaym.zzf(zza, zzfseVar);
        zzdc(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final void zzf(String str, Bundle bundle, zzfse zzfseVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaym.zzd(zza, bundle);
        zzaym.zzf(zza, zzfseVar);
        zzdc(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final void zzg(Bundle bundle, zzfse zzfseVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzaym.zzf(zza, zzfseVar);
        zzdc(3, zza);
    }
}
