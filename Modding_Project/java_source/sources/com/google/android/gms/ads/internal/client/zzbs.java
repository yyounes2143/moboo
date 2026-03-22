package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbfv;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbhn;
import com.google.android.gms.internal.ads.zzbhq;
import com.google.android.gms.internal.ads.zzbht;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbmg;
import com.google.android.gms.internal.ads.zzbmo;
import com.google.android.gms.internal.ads.zzbmp;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbs extends zzayl implements zzbt {
    public zzbs() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbkVar = null;
        zzcp zzcpVar = null;
        switch (i) {
            case 1:
                zzbq zze = zze();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzbk) {
                        zzbkVar = (zzbk) queryLocalInterface;
                    } else {
                        zzbkVar = new zzbi(readStrongBinder);
                    }
                }
                zzaym.zzc(parcel);
                zzl(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbhe zzb = zzbhd.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbhh zzb2 = zzbhg.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzg(zzb2);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                zzbhn zzb3 = zzbhm.zzb(parcel.readStrongBinder());
                zzbhk zzb4 = zzbhj.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzh(readString, zzb3, zzb4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzaym.zzc(parcel);
                zzo((zzbfv) zzaym.zza(parcel, zzbfv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface2 instanceof zzcp) {
                        zzcpVar = (zzcp) queryLocalInterface2;
                    } else {
                        zzcpVar = new zzcp(readStrongBinder2);
                    }
                }
                zzaym.zzc(parcel);
                zzq(zzcpVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzaym.zzc(parcel);
                zzj(zzbhq.zzb(parcel.readStrongBinder()), (zzr) zzaym.zza(parcel, zzr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                zzaym.zzc(parcel);
                zzp((PublisherAdViewOptions) zzaym.zza(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                zzbhu zzb5 = zzbht.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzk(zzb5);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzaym.zzc(parcel);
                zzn((zzbmg) zzaym.zza(parcel, zzbmg.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzbmp zzb6 = zzbmo.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzi(zzb6);
                parcel2.writeNoException();
                return true;
            case 15:
                zzaym.zzc(parcel);
                zzm((AdManagerAdViewOptions) zzaym.zza(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
