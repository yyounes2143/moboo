package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhs extends zzayk implements zzbhu {
    public zzbhs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final void zze(zzbia zzbiaVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbiaVar);
        zzdb(1, zza);
    }
}
