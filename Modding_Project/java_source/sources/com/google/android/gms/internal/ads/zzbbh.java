package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbh extends zzayk implements IInterface {
    public zzbbh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzbbf zzbbfVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbbfVar);
        Parcel zzda = zzda(3, zza);
        long readLong = zzda.readLong();
        zzda.recycle();
        return readLong;
    }

    public final zzbbc zzf(zzbbf zzbbfVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbbfVar);
        Parcel zzda = zzda(1, zza);
        zzbbc zzbbcVar = (zzbbc) zzaym.zza(zzda, zzbbc.CREATOR);
        zzda.recycle();
        return zzbbcVar;
    }

    public final zzbbc zzg(zzbbf zzbbfVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbbfVar);
        Parcel zzda = zzda(2, zza);
        zzbbc zzbbcVar = (zzbbc) zzaym.zza(zzda, zzbbc.CREATOR);
        zzda.recycle();
        return zzbbcVar;
    }
}
