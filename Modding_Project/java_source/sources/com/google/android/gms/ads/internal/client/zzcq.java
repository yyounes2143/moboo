package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcq extends zzayk implements zzcs {
    public zzcq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcs
    public final void zzb() throws RemoteException {
        zzdb(5, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcs
    public final void zzc() throws RemoteException {
        zzdb(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcs
    public final void zzd(zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcs
    public final void zze() throws RemoteException {
        zzdb(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcs
    public final void zzf() throws RemoteException {
        zzdb(2, zza());
    }
}
