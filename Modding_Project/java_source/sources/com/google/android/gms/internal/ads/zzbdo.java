package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbdo extends zzayk implements zzbdq {
    public zzbdo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zze(zzbdn zzbdnVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbdnVar);
        zzdb(1, zza);
    }
}
