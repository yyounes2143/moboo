package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbwp extends zzayl implements zzbwq {
    public zzbwp() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbwq zzr(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (queryLocalInterface instanceof zzbwq) {
            return (zzbwq) queryLocalInterface;
        }
        return new zzbwo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbwx zzbwxVar = null;
        zzbwx zzbwxVar2 = null;
        zzbwy zzbwyVar = null;
        zzbwt zzbwtVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface instanceof zzbwx) {
                        zzbwxVar = (zzbwx) queryLocalInterface;
                    } else {
                        zzbwxVar = new zzbwv(readStrongBinder);
                    }
                }
                zzaym.zzc(parcel);
                zzg(zzmVar, zzbwxVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (queryLocalInterface2 instanceof zzbwt) {
                        zzbwtVar = (zzbwt) queryLocalInterface2;
                    } else {
                        zzbwtVar = new zzbwr(readStrongBinder2);
                    }
                }
                zzaym.zzc(parcel);
                zzl(zzbwtVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzp = zzp();
                parcel2.writeNoException();
                int i3 = zzaym.zza;
                parcel2.writeInt(zzp ? 1 : 0);
                return true;
            case 4:
                String zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            case 5:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzn(asInterface);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (queryLocalInterface3 instanceof zzbwy) {
                        zzbwyVar = (zzbwy) queryLocalInterface3;
                    } else {
                        zzbwyVar = new zzbwy(readStrongBinder3);
                    }
                }
                zzaym.zzc(parcel);
                zzq(zzbwyVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzaym.zzc(parcel);
                zzm((zzbxe) zzaym.zza(parcel, zzbxe.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzj(zzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzb2 = zzb();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzb2);
                return true;
            case 10:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zzg = zzaym.zzg(parcel);
                zzaym.zzc(parcel);
                zzo(asInterface2, zzg);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbwn zzd = zzd();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzd);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzdx zzc = zzc();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzc);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdq zzb3 = com.google.android.gms.ads.internal.client.zzdp.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzk(zzb3);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface4 instanceof zzbwx) {
                        zzbwxVar2 = (zzbwx) queryLocalInterface4;
                    } else {
                        zzbwxVar2 = new zzbwv(readStrongBinder4);
                    }
                }
                zzaym.zzc(parcel);
                zzh(zzmVar2, zzbwxVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zzg2 = zzaym.zzg(parcel);
                zzaym.zzc(parcel);
                zzi(zzg2);
                parcel2.writeNoException();
                return true;
            case 16:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            default:
                return false;
        }
    }
}
