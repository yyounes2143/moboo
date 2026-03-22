package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbuy extends zzayl implements zzbuz {
    public zzbuy() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbvd zzbvdVar = null;
        zzbve zzbveVar = null;
        zzbvd zzbvdVar2 = null;
        zzbvd zzbvdVar3 = null;
        zzbvd zzbvdVar4 = null;
        switch (i) {
            case 1:
                zzbur zzburVar = (zzbur) zzaym.zza(parcel, zzbur.CREATOR);
                zzaym.zzc(parcel);
                parcel2.writeNoException();
                zzaym.zze(parcel2, null);
                return true;
            case 2:
                zzbur zzburVar2 = (zzbur) zzaym.zza(parcel, zzbur.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    boolean z = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener") instanceof zzbva;
                }
                zzaym.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbvl zzbvlVar = (zzbvl) zzaym.zza(parcel, zzbvl.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface instanceof zzbvd) {
                        zzbvdVar = (zzbvd) queryLocalInterface;
                    } else {
                        zzbvdVar = new zzbvb(readStrongBinder2);
                    }
                }
                zzaym.zzc(parcel);
                zzg(zzbvlVar, zzbvdVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbvl zzbvlVar2 = (zzbvl) zzaym.zza(parcel, zzbvl.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface2 instanceof zzbvd) {
                        zzbvdVar4 = (zzbvd) queryLocalInterface2;
                    } else {
                        zzbvdVar4 = new zzbvb(readStrongBinder3);
                    }
                }
                zzaym.zzc(parcel);
                zzf(zzbvlVar2, zzbvdVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbvl zzbvlVar3 = (zzbvl) zzaym.zza(parcel, zzbvl.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface3 instanceof zzbvd) {
                        zzbvdVar3 = (zzbvd) queryLocalInterface3;
                    } else {
                        zzbvdVar3 = new zzbvb(readStrongBinder4);
                    }
                }
                zzaym.zzc(parcel);
                zze(zzbvlVar3, zzbvdVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface4 instanceof zzbvd) {
                        zzbvdVar2 = (zzbvd) queryLocalInterface4;
                    } else {
                        zzbvdVar2 = new zzbvb(readStrongBinder5);
                    }
                }
                zzaym.zzc(parcel);
                zzh(readString, zzbvdVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbuv zzbuvVar = (zzbuv) zzaym.zza(parcel, zzbuv.CREATOR);
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    if (queryLocalInterface5 instanceof zzbve) {
                        zzbveVar = (zzbve) queryLocalInterface5;
                    } else {
                        zzbveVar = new zzbve(readStrongBinder6);
                    }
                }
                zzaym.zzc(parcel);
                zzi(zzbuvVar, zzbveVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
