package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbwq;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcf extends zzayk implements zzch {
    public zzcf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final zzban zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(5, zza);
        zzban zzb = zzbam.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final zzbx zzf(String str) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(7, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final zzbwq zzg(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(3, zza);
        zzbwq zzr = zzbwp.zzr(zzda.readStrongBinder());
        zzda.recycle();
        return zzr;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzh(zzbpl zzbplVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbplVar);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final void zzi(List list, zzce zzceVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzaym.zzf(zza, zzceVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final boolean zzj(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(4, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final boolean zzk(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(6, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzch
    public final boolean zzl(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(2, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
