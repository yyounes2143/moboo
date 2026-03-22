package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbve extends zzayk implements IInterface {
    public zzbve(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
    }

    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbbVar);
        zzdb(2, zza);
    }

    public final void zzf(String str, zzbuv zzbuvVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaym.zzd(zza, zzbuvVar);
        zzdb(1, zza);
    }
}
