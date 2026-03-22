package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbrj extends zzayl implements zzbrk {
    public zzbrj() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbrk zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (queryLocalInterface instanceof zzbrk) {
            return (zzbrk) queryLocalInterface;
        }
        return new zzbri(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final boolean zzde(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbrn zzbrnVar = null;
        zzbqv zzbqvVar = null;
        zzbre zzbreVar = null;
        zzbqy zzbqwVar = null;
        zzbrh zzbrhVar = null;
        zzbre zzbreVar2 = null;
        zzbrh zzbrhVar2 = null;
        zzbrb zzbrbVar = null;
        zzbqy zzbqwVar2 = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 10) {
                            if (i != 11) {
                                switch (i) {
                                    case 13:
                                        String readString = parcel.readString();
                                        String readString2 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder = parcel.readStrongBinder();
                                        if (readStrongBinder != null) {
                                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface instanceof zzbqy) {
                                                zzbqwVar2 = (zzbqy) queryLocalInterface;
                                            } else {
                                                zzbqwVar2 = new zzbqw(readStrongBinder);
                                            }
                                        }
                                        zzbqy zzbqyVar = zzbqwVar2;
                                        zzaym.zzc(parcel);
                                        zzj(readString, readString2, zzmVar, asInterface, zzbqyVar, zzbpq.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 14:
                                        String readString3 = parcel.readString();
                                        String readString4 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                                        if (readStrongBinder2 != null) {
                                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                            if (queryLocalInterface2 instanceof zzbrb) {
                                                zzbrbVar = (zzbrb) queryLocalInterface2;
                                            } else {
                                                zzbrbVar = new zzbqz(readStrongBinder2);
                                            }
                                        }
                                        zzbpr zzb = zzbpq.zzb(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        zzl(readString3, readString4, zzmVar2, asInterface2, zzbrbVar, zzb);
                                        parcel2.writeNoException();
                                        break;
                                    case 15:
                                        IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        boolean zzs = zzs(asInterface3);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzs ? 1 : 0);
                                        break;
                                    case 16:
                                        String readString5 = parcel.readString();
                                        String readString6 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                                        if (readStrongBinder3 != null) {
                                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface3 instanceof zzbrh) {
                                                zzbrhVar2 = (zzbrh) queryLocalInterface3;
                                            } else {
                                                zzbrhVar2 = new zzbrf(readStrongBinder3);
                                            }
                                        }
                                        zzbpr zzb2 = zzbpq.zzb(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        zzp(readString5, readString6, zzmVar3, asInterface4, zzbrhVar2, zzb2);
                                        parcel2.writeNoException();
                                        break;
                                    case 17:
                                        IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        boolean zzt = zzt(asInterface5);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzt ? 1 : 0);
                                        break;
                                    case 18:
                                        String readString7 = parcel.readString();
                                        String readString8 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                                        if (readStrongBinder4 != null) {
                                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface4 instanceof zzbre) {
                                                zzbreVar2 = (zzbre) queryLocalInterface4;
                                            } else {
                                                zzbreVar2 = new zzbrc(readStrongBinder4);
                                            }
                                        }
                                        zzbpr zzb3 = zzbpq.zzb(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        zzm(readString7, readString8, zzmVar4, asInterface6, zzbreVar2, zzb3);
                                        parcel2.writeNoException();
                                        break;
                                    case 19:
                                        String readString9 = parcel.readString();
                                        zzaym.zzc(parcel);
                                        zzq(readString9);
                                        parcel2.writeNoException();
                                        break;
                                    case 20:
                                        String readString10 = parcel.readString();
                                        String readString11 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder5 = parcel.readStrongBinder();
                                        if (readStrongBinder5 != null) {
                                            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface5 instanceof zzbrh) {
                                                zzbrhVar = (zzbrh) queryLocalInterface5;
                                            } else {
                                                zzbrhVar = new zzbrf(readStrongBinder5);
                                            }
                                        }
                                        zzbpr zzb4 = zzbpq.zzb(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        zzo(readString10, readString11, zzmVar5, asInterface7, zzbrhVar, zzb4);
                                        parcel2.writeNoException();
                                        break;
                                    case 21:
                                        String readString12 = parcel.readString();
                                        String readString13 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder6 = parcel.readStrongBinder();
                                        if (readStrongBinder6 != null) {
                                            IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface6 instanceof zzbqy) {
                                                zzbqwVar = (zzbqy) queryLocalInterface6;
                                            } else {
                                                zzbqwVar = new zzbqw(readStrongBinder6);
                                            }
                                        }
                                        zzbqy zzbqyVar2 = zzbqwVar;
                                        zzaym.zzc(parcel);
                                        zzk(readString12, readString13, zzmVar6, asInterface8, zzbqyVar2, zzbpq.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 22:
                                        String readString14 = parcel.readString();
                                        String readString15 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder7 = parcel.readStrongBinder();
                                        if (readStrongBinder7 != null) {
                                            IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface7 instanceof zzbre) {
                                                zzbreVar = (zzbre) queryLocalInterface7;
                                            } else {
                                                zzbreVar = new zzbrc(readStrongBinder7);
                                            }
                                        }
                                        zzaym.zzc(parcel);
                                        zzn(readString14, readString15, zzmVar7, asInterface9, zzbreVar, zzbpq.zzb(parcel.readStrongBinder()), (zzbfv) zzaym.zza(parcel, zzbfv.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 23:
                                        String readString16 = parcel.readString();
                                        String readString17 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder8 = parcel.readStrongBinder();
                                        if (readStrongBinder8 != null) {
                                            IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                                            if (queryLocalInterface8 instanceof zzbqv) {
                                                zzbqvVar = (zzbqv) queryLocalInterface8;
                                            } else {
                                                zzbqvVar = new zzbqt(readStrongBinder8);
                                            }
                                        }
                                        zzbpr zzb5 = zzbpq.zzb(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        zzi(readString16, readString17, zzmVar8, asInterface10, zzbqvVar, zzb5);
                                        parcel2.writeNoException();
                                        break;
                                    case 24:
                                        IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzaym.zzc(parcel);
                                        boolean zzr = zzr(asInterface11);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzr ? 1 : 0);
                                        break;
                                    default:
                                        return false;
                                }
                            } else {
                                parcel.createStringArray();
                                Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
                                zzaym.zzc(parcel);
                                parcel2.writeNoException();
                            }
                        } else {
                            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                            zzaym.zzc(parcel);
                            parcel2.writeNoException();
                        }
                    } else {
                        com.google.android.gms.ads.internal.client.zzea zze = zze();
                        parcel2.writeNoException();
                        zzaym.zzf(parcel2, zze);
                    }
                } else {
                    zzbrz zzg = zzg();
                    parcel2.writeNoException();
                    zzaym.zze(parcel2, zzg);
                }
            } else {
                zzbrz zzf = zzf();
                parcel2.writeNoException();
                zzaym.zze(parcel2, zzf);
            }
        } else {
            IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString18 = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzaym.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzaym.zza(parcel, creator);
            com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzaym.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
            IBinder readStrongBinder9 = parcel.readStrongBinder();
            if (readStrongBinder9 != null) {
                IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (queryLocalInterface9 instanceof zzbrn) {
                    zzbrnVar = (zzbrn) queryLocalInterface9;
                } else {
                    zzbrnVar = new zzbrl(readStrongBinder9);
                }
            }
            zzaym.zzc(parcel);
            zzh(asInterface12, readString18, bundle, bundle2, zzrVar, zzbrnVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
