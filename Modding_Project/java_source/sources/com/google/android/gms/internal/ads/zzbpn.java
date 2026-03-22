package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbpn extends zzayl implements zzbpo {
    public zzbpn() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbpr zzbppVar;
        zzbpr zzbppVar2;
        zzbpr zzbppVar3;
        zzbpr zzbprVar;
        zzbpr zzbppVar4;
        zzbpr zzbprVar2;
        zzbpr zzbppVar5;
        zzbpr zzbppVar6;
        zzbpr zzbppVar7;
        zzbpr zzbppVar8;
        zzbpr zzbprVar3 = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbppVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface instanceof zzbpr) {
                        zzbppVar = (zzbpr) queryLocalInterface;
                    } else {
                        zzbppVar = new zzbpp(readStrongBinder);
                    }
                }
                zzaym.zzc(parcel);
                zzu(asInterface, zzrVar, zzmVar, readString, zzbppVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzn);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbppVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface2 instanceof zzbpr) {
                        zzbppVar2 = (zzbpr) queryLocalInterface2;
                    } else {
                        zzbppVar2 = new zzbpp(readStrongBinder2);
                    }
                }
                zzaym.zzc(parcel);
                zzx(asInterface2, zzmVar2, readString2, zzbppVar2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzI();
                parcel2.writeNoException();
                return true;
            case 5:
                zzo();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbprVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface3 instanceof zzbpr) {
                        zzbppVar3 = (zzbpr) queryLocalInterface3;
                    } else {
                        zzbppVar3 = new zzbpp(readStrongBinder3);
                    }
                    zzbprVar = zzbppVar3;
                }
                zzaym.zzc(parcel);
                zzv(asInterface3, zzrVar2, zzmVar3, readString3, readString4, zzbprVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbprVar2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface4 instanceof zzbpr) {
                        zzbppVar4 = (zzbpr) queryLocalInterface4;
                    } else {
                        zzbppVar4 = new zzbpp(readStrongBinder4);
                    }
                    zzbprVar2 = zzbppVar4;
                }
                zzaym.zzc(parcel);
                zzy(asInterface4, zzmVar4, readString5, readString6, zzbprVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzE();
                parcel2.writeNoException();
                return true;
            case 9:
                zzF();
                parcel2.writeNoException();
                return true;
            case 10:
                String readString7 = parcel.readString();
                zzbwi zzb = zzbwh.zzb(parcel.readStrongBinder());
                String readString8 = parcel.readString();
                zzaym.zzc(parcel);
                zzp(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR), readString7, zzb, readString8);
                parcel2.writeNoException();
                return true;
            case 11:
                String readString9 = parcel.readString();
                zzaym.zzc(parcel);
                zzs((com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR), readString9);
                parcel2.writeNoException();
                return true;
            case 12:
                zzL();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzN = zzN();
                parcel2.writeNoException();
                int i3 = zzaym.zza;
                parcel2.writeInt(zzN ? 1 : 0);
                return true;
            case 14:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbppVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface5 instanceof zzbpr) {
                        zzbppVar5 = (zzbpr) queryLocalInterface5;
                    } else {
                        zzbppVar5 = new zzbpp(readStrongBinder5);
                    }
                }
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzaym.zzc(parcel);
                zzz(asInterface5, zzmVar5, readString10, readString11, zzbppVar5, (zzbfv) zzaym.zza(parcel, zzbfv.CREATOR), createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzaym.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzaym.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zze);
                return true;
            case 18:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzf);
                return true;
            case 19:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzg);
                return true;
            case 20:
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzaym.zzc(parcel);
                zzB((com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR), readString12, readString13);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzD(asInterface6);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                int i4 = zzaym.zza;
                parcel2.writeInt(0);
                return true;
            case 23:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbwi zzb2 = zzbwh.zzb(parcel.readStrongBinder());
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzaym.zzc(parcel);
                zzr(asInterface7, zzb2, createStringArrayList2);
                parcel2.writeNoException();
                return true;
            case 24:
                zzbha zzi = zzi();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzi);
                return true;
            case 25:
                boolean zzg2 = zzaym.zzg(parcel);
                zzaym.zzc(parcel);
                zzG(zzg2);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzea zzh = zzh();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzh);
                return true;
            case 27:
                zzbqa zzk = zzk();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzk);
                return true;
            case 28:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString14 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbppVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface6 instanceof zzbpr) {
                        zzbppVar6 = (zzbpr) queryLocalInterface6;
                    } else {
                        zzbppVar6 = new zzbpp(readStrongBinder6);
                    }
                }
                zzaym.zzc(parcel);
                zzA(asInterface8, zzmVar6, readString14, zzbppVar6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzK(asInterface9);
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbly zzb3 = zzblx.zzb(parcel.readStrongBinder());
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbme.CREATOR);
                zzaym.zzc(parcel);
                zzq(asInterface10, zzb3, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString15 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbppVar7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface7 instanceof zzbpr) {
                        zzbppVar7 = (zzbpr) queryLocalInterface7;
                    } else {
                        zzbppVar7 = new zzbpp(readStrongBinder7);
                    }
                }
                zzaym.zzc(parcel);
                zzC(asInterface11, zzmVar7, readString15, zzbppVar7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbrz zzl = zzl();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzl);
                return true;
            case 34:
                zzbrz zzm = zzm();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzm);
                return true;
            case 35:
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbppVar8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface8 instanceof zzbpr) {
                        zzbppVar8 = (zzbpr) queryLocalInterface8;
                    } else {
                        zzbppVar8 = new zzbpp(readStrongBinder8);
                    }
                }
                zzaym.zzc(parcel);
                zzw(asInterface12, zzrVar3, zzmVar8, readString16, readString17, zzbppVar8);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbpu zzj = zzj();
                parcel2.writeNoException();
                zzaym.zzf(parcel2, zzj);
                return true;
            case 37:
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzJ(asInterface13);
                parcel2.writeNoException();
                return true;
            case 38:
                IObjectWrapper asInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar9 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString18 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (queryLocalInterface9 instanceof zzbpr) {
                        zzbprVar3 = (zzbpr) queryLocalInterface9;
                    } else {
                        zzbprVar3 = new zzbpp(readStrongBinder9);
                    }
                }
                zzaym.zzc(parcel);
                zzt(asInterface14, zzmVar9, readString18, zzbprVar3);
                parcel2.writeNoException();
                return true;
            case 39:
                IObjectWrapper asInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzaym.zzc(parcel);
                zzH(asInterface15);
                parcel2.writeNoException();
                return true;
        }
    }
}
