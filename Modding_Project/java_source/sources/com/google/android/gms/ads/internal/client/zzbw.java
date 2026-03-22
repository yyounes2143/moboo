package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbap;
import com.google.android.gms.internal.ads.zzbaq;
import com.google.android.gms.internal.ads.zzbdp;
import com.google.android.gms.internal.ads.zzbdq;
import com.google.android.gms.internal.ads.zzbtt;
import com.google.android.gms.internal.ads.zzbtu;
import com.google.android.gms.internal.ads.zzbtw;
import com.google.android.gms.internal.ads.zzbtx;
import com.google.android.gms.internal.ads.zzbwc;
import com.google.android.gms.internal.ads.zzbwd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbw extends zzayl implements zzbx {
    public zzbw() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbx zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (queryLocalInterface instanceof zzbx) {
            return (zzbx) queryLocalInterface;
        }
        return new zzbv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbkVar = null;
        zzcs zzcsVar = null;
        zzbn zzbnVar = null;
        zzdq zzdqVar = null;
        zzcb zzcbVar = null;
        zzcp zzcpVar = null;
        zzbh zzbhVar = null;
        zzcl zzclVar = null;
        switch (i) {
            case 1:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzaa = zzaa();
                parcel2.writeNoException();
                int i3 = zzaym.zza;
                parcel2.writeInt(zzaa ? 1 : 0);
                return true;
            case 4:
                zzaym.zzc(parcel);
                boolean zzab = zzab((zzm) zzaym.zza(parcel, zzm.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zzab ? 1 : 0);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
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
                zzD(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (queryLocalInterface2 instanceof zzcl) {
                        zzclVar = (zzcl) queryLocalInterface2;
                    } else {
                        zzclVar = new zzcj(readStrongBinder2);
                    }
                }
                zzaym.zzc(parcel);
                zzG(zzclVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                zzr zzg = zzg();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzg);
                return true;
            case 13:
                zzaym.zzc(parcel);
                zzF((zzr) zzaym.zza(parcel, zzr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzbtu zzb = zzbtt.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzM(zzb);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbtx zzb2 = zzbtw.zzb(parcel.readStrongBinder());
                String readString = parcel.readString();
                zzaym.zzc(parcel);
                zzQ(zzb2, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 19:
                zzbdq zzb3 = zzbdp.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzO(zzb3);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (queryLocalInterface3 instanceof zzbh) {
                        zzbhVar = (zzbh) queryLocalInterface3;
                    } else {
                        zzbhVar = new zzbf(readStrongBinder3);
                    }
                }
                zzaym.zzc(parcel);
                zzC(zzbhVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface4 instanceof zzcp) {
                        zzcpVar = (zzcp) queryLocalInterface4;
                    } else {
                        zzcpVar = new zzcp(readStrongBinder4);
                    }
                }
                zzaym.zzc(parcel);
                zzac(zzcpVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzg2 = zzaym.zzg(parcel);
                zzaym.zzc(parcel);
                zzN(zzg2);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzZ = zzZ();
                parcel2.writeNoException();
                int i4 = zzaym.zza;
                parcel2.writeInt(zzZ ? 1 : 0);
                return true;
            case 24:
                zzbwd zzb4 = zzbwc.zzb(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzS(zzb4);
                parcel2.writeNoException();
                return true;
            case 25:
                String readString2 = parcel.readString();
                zzaym.zzc(parcel);
                zzT(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzea zzl = zzl();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzl);
                return true;
            case 29:
                zzaym.zzc(parcel);
                zzU((zzfw) zzaym.zza(parcel, zzfw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zzaym.zzc(parcel);
                zzK((zzee) zzaym.zza(parcel, zzee.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 32:
                zzcl zzj = zzj();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzj);
                return true;
            case 33:
                zzbk zzi = zzi();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzi);
                return true;
            case 34:
                boolean zzg3 = zzaym.zzg(parcel);
                zzaym.zzc(parcel);
                zzL(zzg3);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (queryLocalInterface5 instanceof zzcb) {
                        zzcbVar = (zzcb) queryLocalInterface5;
                    } else {
                        zzcbVar = new zzbz(readStrongBinder5);
                    }
                }
                zzaym.zzc(parcel);
                zzE(zzcbVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzd = zzd();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzd);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzaym.zzc(parcel);
                zzR(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzaym.zzc(parcel);
                zzI((zzx) zzaym.zza(parcel, zzx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zzbaq zze = zzbap.zze(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzH(zze);
                parcel2.writeNoException();
                return true;
            case 41:
                zzdx zzk = zzk();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzk);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    if (queryLocalInterface6 instanceof zzdq) {
                        zzdqVar = (zzdq) queryLocalInterface6;
                    } else {
                        zzdqVar = new zzdo(readStrongBinder6);
                    }
                }
                zzaym.zzc(parcel);
                zzP(zzdqVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzm zzmVar = (zzm) zzaym.zza(parcel, zzm.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    if (queryLocalInterface7 instanceof zzbn) {
                        zzbnVar = (zzbn) queryLocalInterface7;
                    } else {
                        zzbnVar = new zzbl(readStrongBinder7);
                    }
                }
                zzaym.zzc(parcel);
                zzy(zzmVar, zzbnVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzW(asInterface);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    if (queryLocalInterface8 instanceof zzcs) {
                        zzcsVar = (zzcs) queryLocalInterface8;
                    } else {
                        zzcsVar = new zzcq(readStrongBinder8);
                    }
                }
                zzaym.zzc(parcel);
                zzJ(zzcsVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zzY = zzY();
                parcel2.writeNoException();
                int i5 = zzaym.zza;
                parcel2.writeInt(zzY ? 1 : 0);
                return true;
        }
    }
}
