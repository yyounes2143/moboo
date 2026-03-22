package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbri extends zzayk implements zzbrk {
    public zzbri(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final com.google.android.gms.ads.internal.client.zzea zze() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final zzbrz zzf() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        zzbrz zzbrzVar = (zzbrz) zzaym.zza(zzda, zzbrz.CREATOR);
        zzda.recycle();
        return zzbrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final zzbrz zzg() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        zzbrz zzbrzVar = (zzbrz) zzaym.zza(zzda, zzbrz.CREATOR);
        zzda.recycle();
        return zzbrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzbrn zzbrnVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaym.zzd(zza, bundle);
        zzaym.zzd(zza, bundle2);
        zzaym.zzd(zza, zzrVar);
        zzaym.zzf(zza, zzbrnVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqv zzbqvVar, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbqvVar);
        zzaym.zzf(zza, zzbprVar);
        zzdb(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqy zzbqyVar, zzbpr zzbprVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbqyVar);
        zzaym.zzf(zza, zzbprVar);
        zzaym.zzd(zza, zzrVar);
        zzdb(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqy zzbqyVar, zzbpr zzbprVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbqyVar);
        zzaym.zzf(zza, zzbprVar);
        zzaym.zzd(zza, zzrVar);
        zzdb(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbrb zzbrbVar, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbrbVar);
        zzaym.zzf(zza, zzbprVar);
        zzdb(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbre zzbreVar, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbreVar);
        zzaym.zzf(zza, zzbprVar);
        zzdb(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbre zzbreVar, zzbpr zzbprVar, zzbfv zzbfvVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbreVar);
        zzaym.zzf(zza, zzbprVar);
        zzaym.zzd(zza, zzbfvVar);
        zzdb(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbrh zzbrhVar, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbrhVar);
        zzaym.zzf(zza, zzbprVar);
        zzdb(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbrh zzbrhVar, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbrhVar);
        zzaym.zzf(zza, zzbprVar);
        zzdb(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzq(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdb(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(24, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(15, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(17, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
