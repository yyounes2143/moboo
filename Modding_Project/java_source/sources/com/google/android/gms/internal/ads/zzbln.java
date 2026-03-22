package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbln extends zzayk implements IInterface {
    public zzbln(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzblh zzblhVar, zzblm zzblmVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzblhVar);
        zzaym.zzf(zza, zzblmVar);
        zzdc(2, zza);
    }
}
