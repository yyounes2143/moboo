package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbku;
import com.google.android.gms.internal.ads.zzbkv;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbtl;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbyv;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzcn extends zzayl implements zzco {
    public zzcn() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar = (zzr) zzaym.zza(parcel, zzr.CREATOR);
                String readString = parcel.readString();
                zzbpl zzf = zzbpk.zzf(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzaym.zzc(parcel);
                zzbx zzd = zzd(asInterface, zzrVar, readString, zzf, readInt);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzd);
                return true;
            case 2:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar2 = (zzr) zzaym.zza(parcel, zzr.CREATOR);
                String readString2 = parcel.readString();
                zzbpl zzf2 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbx zze = zze(asInterface2, zzrVar2, readString2, zzf2, readInt2);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zze);
                return true;
            case 3:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString3 = parcel.readString();
                zzbpl zzf3 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbt zzb = zzb(asInterface3, readString3, zzf3, readInt3);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzb);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, null);
                return true;
            case 5:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzbgk zzj = zzj(asInterface4, asInterface5);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzj);
                return true;
            case 6:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf4 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbwa zzo = zzo(asInterface6, zzf4, readInt4);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzo);
                return true;
            case 7:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, null);
                return true;
            case 8:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzbtl zzn = zzn(asInterface7);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzn);
                return true;
            case 9:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt5 = parcel.readInt();
                zzaym.zzc(parcel);
                zzcy zzh = zzh(asInterface8, readInt5);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzh);
                return true;
            case 10:
                String readString4 = parcel.readString();
                int readInt6 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbx zzf5 = zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzr) zzaym.zza(parcel, zzr.CREATOR), readString4, readInt6);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzf5);
                return true;
            case 11:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzbgq zzk = zzk(asInterface9, asInterface10, asInterface11);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzk);
                return true;
            case 12:
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString5 = parcel.readString();
                zzbpl zzf6 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt7 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbwq zzp = zzp(asInterface12, readString5, zzf6, readInt7);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzp);
                return true;
            case 13:
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar3 = (zzr) zzaym.zza(parcel, zzr.CREATOR);
                String readString6 = parcel.readString();
                zzbpl zzf7 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt8 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbx zzc = zzc(asInterface13, zzrVar3, readString6, zzf7, readInt8);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzc);
                return true;
            case 14:
                IObjectWrapper asInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf8 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt9 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbyv zzq = zzq(asInterface14, zzf8, readInt9);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzq);
                return true;
            case 15:
                IObjectWrapper asInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf9 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt10 = parcel.readInt();
                zzaym.zzc(parcel);
                zzbte zzm = zzm(asInterface15, zzf9, readInt10);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzm);
                return true;
            case 16:
                IObjectWrapper asInterface16 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf10 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt11 = parcel.readInt();
                zzbkv zzc2 = zzbku.zzc(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzbky zzl = zzl(asInterface16, zzf10, readInt11, zzc2);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzl);
                return true;
            case 17:
                IObjectWrapper asInterface17 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf11 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt12 = parcel.readInt();
                zzaym.zzc(parcel);
                zzdt zzi = zzi(asInterface17, zzf11, readInt12);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzi);
                return true;
            case 18:
                IObjectWrapper asInterface18 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbpl zzf12 = zzbpk.zzf(parcel.readStrongBinder());
                int readInt13 = parcel.readInt();
                zzaym.zzc(parcel);
                zzch zzg = zzg(asInterface18, zzf12, readInt13);
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzg);
                return true;
            default:
                return false;
        }
    }
}
