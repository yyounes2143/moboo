package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbgp;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbkv;
import com.google.android.gms.internal.ads.zzbkx;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbtk;
import com.google.android.gms.internal.ads.zzbtl;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbyu;
import com.google.android.gms.internal.ads.zzbyv;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcm extends zzayk implements zzco {
    public zzcm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbt zzb(IObjectWrapper iObjectWrapper, String str, zzbpl zzbplVar, int i) throws RemoteException {
        zzbt zzbrVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(3, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzbt) {
                zzbrVar = (zzbt) queryLocalInterface;
            } else {
                zzbrVar = new zzbr(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzc(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpl zzbplVar, int i) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(13, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzd(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpl zzbplVar, int i) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(1, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zze(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpl zzbplVar, int i) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zza.writeString(str);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(2, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbx zzf(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, int i) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzrVar);
        zza.writeString(str);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(10, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzch zzg(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        zzch zzcfVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(18, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzcfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
            if (queryLocalInterface instanceof zzch) {
                zzcfVar = (zzch) queryLocalInterface;
            } else {
                zzcfVar = new zzcf(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzcfVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzcy zzh(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzcy zzcwVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(9, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzcwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzcy) {
                zzcwVar = (zzcy) queryLocalInterface;
            } else {
                zzcwVar = new zzcw(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzcwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzdt zzi(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        zzdt zzdrVar;
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(17, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzdrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            if (queryLocalInterface instanceof zzdt) {
                zzdrVar = (zzdt) queryLocalInterface;
            } else {
                zzdrVar = new zzdr(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzdrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbgk zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, iObjectWrapper2);
        Parcel zzda = zzda(5, zza);
        zzbgk zzdC = zzbgj.zzdC(zzda.readStrongBinder());
        zzda.recycle();
        return zzdC;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbgq zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, iObjectWrapper2);
        zzaym.zzf(zza, iObjectWrapper3);
        Parcel zzda = zzda(11, zza);
        zzbgq zze = zzbgp.zze(zzda.readStrongBinder());
        zzda.recycle();
        return zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbky zzl(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i, zzbkv zzbkvVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzaym.zzf(zza, zzbkvVar);
        Parcel zzda = zzda(16, zza);
        zzbky zzb = zzbkx.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbte zzm(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(15, zza);
        zzbte zzb = zzbtd.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbtl zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(8, zza);
        zzbtl zzI = zzbtk.zzI(zzda.readStrongBinder());
        zzda.recycle();
        return zzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbwa zzo(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbwq zzp(IObjectWrapper iObjectWrapper, String str, zzbpl zzbplVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(12, zza);
        zzbwq zzr = zzbwp.zzr(zzda.readStrongBinder());
        zzda.recycle();
        return zzr;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final zzbyv zzq(IObjectWrapper iObjectWrapper, zzbpl zzbplVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, zzbplVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(14, zza);
        zzbyv zzb = zzbyu.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }
}
