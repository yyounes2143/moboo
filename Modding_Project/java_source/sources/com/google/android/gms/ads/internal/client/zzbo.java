package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbo extends zzayk implements zzbq {
    public zzbo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzg(zzm zzmVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzh(zzm zzmVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zza.writeInt(i);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final boolean zzi() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
