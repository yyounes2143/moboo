package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbaq;
import com.google.android.gms.internal.ads.zzbdq;
import com.google.android.gms.internal.ads.zzbtu;
import com.google.android.gms.internal.ads.zzbtx;
import com.google.android.gms.internal.ads.zzbwd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbv extends zzayk implements zzbx {
    public zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzA() throws RemoteException {
        zzdb(11, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzB() throws RemoteException {
        zzdb(6, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbh zzbhVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhVar);
        zzdb(20, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(zzbk zzbkVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbkVar);
        zzdb(7, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(zzcb zzcbVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzF(zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzrVar);
        zzdb(13, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(zzcl zzclVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzclVar);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(zzbaq zzbaqVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbaqVar);
        zzdb(40, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(zzx zzxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzcs zzcsVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzcsVar);
        zzdb(45, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(zzee zzeeVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzL(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(34, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzM(zzbtu zzbtuVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzN(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(22, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzO(zzbdq zzbdqVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(zzdq zzdqVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdqVar);
        zzdb(42, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(zzbtx zzbtxVar, String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(zzbwd zzbwdVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(String str) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzU(zzfw zzfwVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzfwVar);
        zzdb(29, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzW(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(44, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzX() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzY() throws RemoteException {
        Parcel zzda = zzda(46, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzZ() throws RemoteException {
        Parcel zzda = zzda(23, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzaa() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzab(zzm zzmVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        Parcel zzda = zzda(4, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzac(zzcp zzcpVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzd() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzr zzg() throws RemoteException {
        Parcel zzda = zzda(12, zza());
        zzr zzrVar = (zzr) zzaym.zza(zzda, zzr.CREATOR);
        zzda.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzbk zzi() throws RemoteException {
        zzbk zzbiVar;
        Parcel zzda = zzda(33, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            if (queryLocalInterface instanceof zzbk) {
                zzbiVar = (zzbk) queryLocalInterface;
            } else {
                zzbiVar = new zzbi(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbiVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzcl zzj() throws RemoteException {
        zzcl zzcjVar;
        Parcel zzda = zzda(32, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzcjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            if (queryLocalInterface instanceof zzcl) {
                zzcjVar = (zzcl) queryLocalInterface;
            } else {
                zzcjVar = new zzcj(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzcjVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzdx zzk() throws RemoteException {
        zzdx zzdvVar;
        Parcel zzda = zzda(41, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzdvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            if (queryLocalInterface instanceof zzdx) {
                zzdvVar = (zzdx) queryLocalInterface;
            } else {
                zzdvVar = new zzdv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzdvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final zzea zzl() throws RemoteException {
        zzea zzdyVar;
        Parcel zzda = zzda(26, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzdyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            if (queryLocalInterface instanceof zzea) {
                zzdyVar = (zzea) queryLocalInterface;
            } else {
                zzdyVar = new zzdy(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzdyVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel zzda = zzda(1, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzr() throws RemoteException {
        Parcel zzda = zzda(31, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzs() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final String zzt() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzx() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(zzm zzmVar, zzbn zzbnVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzmVar);
        zzaym.zzf(zza, zzbnVar);
        zzdb(43, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz() throws RemoteException {
        zzdb(5, zza());
    }
}
