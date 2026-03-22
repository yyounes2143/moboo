package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbpm extends zzayk implements zzbpo {
    public zzbpm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbprVar);
        zzdb(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzB(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbprVar);
        zzdb(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzD(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzE() throws RemoteException {
        zzdb(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzF() throws RemoteException {
        zzdb(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzG(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzI() throws RemoteException {
        zzdb(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzJ(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzK(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzL() throws RemoteException {
        zzdb(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final boolean zzM() throws RemoteException {
        Parcel zzda = zzda(22, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final boolean zzN() throws RemoteException {
        Parcel zzda = zzda(13, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbpw zzO() throws RemoteException {
        zzbpw zzbpwVar;
        Parcel zzda = zzda(15, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (queryLocalInterface instanceof zzbpw) {
                zzbpwVar = (zzbpw) queryLocalInterface;
            } else {
                zzbpwVar = new zzbpw(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbpwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbpx zzP() throws RemoteException {
        zzbpx zzbpxVar;
        Parcel zzda = zzda(16, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (queryLocalInterface instanceof zzbpx) {
                zzbpxVar = (zzbpx) queryLocalInterface;
            } else {
                zzbpxVar = new zzbpx(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbpxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final Bundle zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final Bundle zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final Bundle zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final com.google.android.gms.ads.internal.client.zzea zzh() throws RemoteException {
        Parcel zzda = zzda(26, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbha zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbpu zzj() throws RemoteException {
        zzbpu zzbpsVar;
        Parcel zzda = zzda(36, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            if (queryLocalInterface instanceof zzbpu) {
                zzbpsVar = (zzbpu) queryLocalInterface;
            } else {
                zzbpsVar = new zzbps(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbqa zzk() throws RemoteException {
        zzbqa zzbpyVar;
        Parcel zzda = zzda(27, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (queryLocalInterface instanceof zzbqa) {
                zzbpyVar = (zzbqa) queryLocalInterface;
            } else {
                zzbpyVar = new zzbpy(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbpyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbrz zzl() throws RemoteException {
        Parcel zzda = zzda(33, zza());
        zzbrz zzbrzVar = (zzbrz) zzaym.zza(zzda, zzbrz.CREATOR);
        zzda.recycle();
        return zzbrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final zzbrz zzm() throws RemoteException {
        Parcel zzda = zzda(34, zza());
        zzbrz zzbrzVar = (zzbrz) zzaym.zza(zzda, zzbrz.CREATOR);
        zzda.recycle();
        return zzbrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzo() throws RemoteException {
        zzdb(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbwi zzbwiVar, String str2) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(null);
        zzaym.zzf(zza, zzbwiVar);
        zza.writeString(str2);
        zzdb(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzq(IObjectWrapper iObjectWrapper, zzbly zzblyVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzblyVar);
        zza.writeTypedList(list);
        zzdb(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzr(IObjectWrapper iObjectWrapper, zzbwi zzbwiVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbwiVar);
        zza.writeStringList(list);
        zzdb(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzs(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zzdb(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbprVar);
        zzdb(38, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpr zzbprVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzf(zza, zzbprVar);
        zzdb(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzf(zza, zzbprVar);
        zzdb(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpr zzbprVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpr zzbprVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzf(zza, zzbprVar);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpo
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpr zzbprVar, zzbfv zzbfvVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzmVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzaym.zzf(zza, zzbprVar);
        zzaym.zzd(zza, zzbfvVar);
        zza.writeStringList(list);
        zzdb(14, zza);
    }
}
