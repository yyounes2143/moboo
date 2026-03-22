package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbal extends zzayk implements zzban {
    public zzbal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final com.google.android.gms.ads.internal.client.zzbx zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final com.google.android.gms.ads.internal.client.zzdx zzf() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        com.google.android.gms.ads.internal.client.zzdx zzb = com.google.android.gms.ads.internal.client.zzdw.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final String zzg() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzh(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzi(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdqVar);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzj(IObjectWrapper iObjectWrapper, zzbau zzbauVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbauVar);
        zzdb(4, zza);
    }
}
