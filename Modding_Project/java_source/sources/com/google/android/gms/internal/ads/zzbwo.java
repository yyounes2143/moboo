package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbwo extends zzayk implements zzbwq {
    public zzbwo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final Bundle zzb() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        Bundle bundle = (Bundle) zzaym.zza(zzda, Bundle.CREATOR);
        zzda.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final com.google.android.gms.ads.internal.client.zzdx zzc() throws RemoteException {
        Parcel zzda = zzda(12, zza());
        com.google.android.gms.ads.internal.client.zzdx zzb = com.google.android.gms.ads.internal.client.zzdw.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final zzbwn zzd() throws RemoteException {
        zzbwn zzbwlVar;
        Parcel zzda = zzda(11, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwlVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            if (queryLocalInterface instanceof zzbwn) {
                zzbwlVar = (zzbwn) queryLocalInterface;
            } else {
                zzbwlVar = new zzbwl(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbwlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final String zze() throws RemoteException {
        Parcel zzda = zzda(16, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final String zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, zzbwxVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzh(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, zzbwxVar);
        zzdb(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzi(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzj(com.google.android.gms.ads.internal.client.zzdn zzdnVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdnVar);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzk(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdqVar);
        zzdb(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzl(zzbwt zzbwtVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbwtVar);
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzm(zzbxe zzbxeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbxeVar);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzo(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final boolean zzp() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzq(zzbwy zzbwyVar) throws RemoteException {
        throw null;
    }
}
