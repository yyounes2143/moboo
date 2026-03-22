package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbqw extends zzayk implements zzbqy {
    public zzbqw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final void zzh(zzbpu zzbpuVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbpuVar);
        zzdb(4, zza);
    }
}
