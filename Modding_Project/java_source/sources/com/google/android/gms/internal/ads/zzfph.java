package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfph extends zzayk implements IInterface {
    public zzfph(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfpf zze(zzfpd zzfpdVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfpdVar);
        Parcel zzda = zzda(1, zza);
        zzfpf zzfpfVar = (zzfpf) zzaym.zza(zzda, zzfpf.CREATOR);
        zzda.recycle();
        return zzfpfVar;
    }

    public final zzfpo zzf(zzfpm zzfpmVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfpmVar);
        Parcel zzda = zzda(3, zza);
        zzfpo zzfpoVar = (zzfpo) zzaym.zza(zzda, zzfpo.CREATOR);
        zzda.recycle();
        return zzfpoVar;
    }

    public final void zzg(zzfpa zzfpaVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfpaVar);
        zzdb(2, zza);
    }
}
