package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbpq extends zzayl implements zzbpr {
    public zzbpq() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbpr zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if (queryLocalInterface instanceof zzbpr) {
            return (zzbpr) queryLocalInterface;
        }
        return new zzbpp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zze();
                break;
            case 2:
                zzf();
                break;
            case 3:
                int readInt = parcel.readInt();
                zzaym.zzc(parcel);
                zzg(readInt);
                break;
            case 4:
                zzn();
                break;
            case 5:
                zzp();
                break;
            case 6:
                zzo();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    boolean z = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata") instanceof zzbpv;
                }
                zzaym.zzc(parcel);
                break;
            case 8:
                zzm();
                break;
            case 9:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzaym.zzc(parcel);
                zzq(readString, readString2);
                break;
            case 10:
                zzbgz.zzb(parcel.readStrongBinder());
                parcel.readString();
                zzaym.zzc(parcel);
                break;
            case 11:
                zzw();
                break;
            case 12:
                parcel.readString();
                zzaym.zzc(parcel);
                break;
            case 13:
                zzz();
                break;
            case 14:
                zzaym.zzc(parcel);
                zzs((zzbwj) zzaym.zza(parcel, zzbwj.CREATOR));
                break;
            case 15:
                zzx();
                break;
            case 16:
                zzbwn zzb = zzbwm.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzt(zzb);
                break;
            case 17:
                int readInt2 = parcel.readInt();
                zzaym.zzc(parcel);
                zzj(readInt2);
                break;
            case 18:
                zzv();
                break;
            case 19:
                Bundle bundle = (Bundle) zzaym.zza(parcel, Bundle.CREATOR);
                zzaym.zzc(parcel);
                break;
            case 20:
                zzy();
                break;
            case 21:
                String readString3 = parcel.readString();
                zzaym.zzc(parcel);
                zzl(readString3);
                break;
            case 22:
                int readInt3 = parcel.readInt();
                String readString4 = parcel.readString();
                zzaym.zzc(parcel);
                zzi(readInt3, readString4);
                break;
            case 23:
                zzaym.zzc(parcel);
                zzh((com.google.android.gms.ads.internal.client.zze) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                break;
            case 24:
                zzaym.zzc(parcel);
                zzk((com.google.android.gms.ads.internal.client.zze) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                break;
            case 25:
                zzu();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
