package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhf extends zzayk implements zzbhh {
    public zzbhf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhh
    public final void zze(zzbgx zzbgxVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbgxVar);
        zzdb(1, zza);
    }
}
