package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcc extends zzayk implements zzce {
    public zzcc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zze(zzfp zzfpVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfpVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zzf(zzfp zzfpVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfpVar);
        zzdb(2, zza);
    }
}
