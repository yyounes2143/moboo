package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhc extends zzayk implements zzbhe {
    public zzbhc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhe
    public final void zze(zzbgv zzbgvVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbgvVar);
        zzdb(1, zza);
    }
}
