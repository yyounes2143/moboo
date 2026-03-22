package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhy extends zzayk implements zzbia {
    public zzbhy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzA() throws RemoteException {
        zzdb(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzdb(33, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzC(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzdb(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzD() throws RemoteException {
        zzdb(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzE(com.google.android.gms.ads.internal.client.zzdc zzdcVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdcVar);
        zzdb(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzF(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdqVar);
        zzdb(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzG(zzbhx zzbhxVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhxVar);
        zzdb(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzH() throws RemoteException {
        Parcel zzda = zzda(30, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzI() throws RemoteException {
        Parcel zzda = zzda(24, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        Parcel zzda = zzda(16, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final double zze() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        double readDouble = zzda.readDouble();
        zzda.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final Bundle zzf() throws RemoteException {
        Parcel zzda = zzda(20, zza());
        Bundle bundle = (Bundle) zzaym.zza(zzda, Bundle.CREATOR);
        zzda.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final com.google.android.gms.ads.internal.client.zzdx zzg() throws RemoteException {
        Parcel zzda = zzda(31, zza());
        com.google.android.gms.ads.internal.client.zzdx zzb = com.google.android.gms.ads.internal.client.zzdw.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final com.google.android.gms.ads.internal.client.zzea zzh() throws RemoteException {
        Parcel zzda = zzda(11, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbfz zzi() throws RemoteException {
        zzbfz zzbfxVar;
        Parcel zzda = zzda(14, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            if (queryLocalInterface instanceof zzbfz) {
                zzbfxVar = (zzbfz) queryLocalInterface;
            } else {
                zzbfxVar = new zzbfx(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbfxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbgd zzj() throws RemoteException {
        zzbgd zzbgbVar;
        Parcel zzda = zzda(29, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            if (queryLocalInterface instanceof zzbgd) {
                zzbgbVar = (zzbgd) queryLocalInterface;
            } else {
                zzbgbVar = new zzbgb(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbgg zzk() throws RemoteException {
        zzbgg zzbgeVar;
        Parcel zzda = zzda(5, zza());
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbgeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof zzbgg) {
                zzbgeVar = (zzbgg) queryLocalInterface;
            } else {
                zzbgeVar = new zzbge(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final IObjectWrapper zzl() throws RemoteException {
        Parcel zzda = zzda(19, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel zzda = zzda(18, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzn() throws RemoteException {
        Parcel zzda = zzda(7, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzo() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzp() throws RemoteException {
        Parcel zzda = zzda(6, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzq() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzr() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzs() throws RemoteException {
        Parcel zzda = zzda(10, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzt() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final List zzu() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        ArrayList zzb = zzaym.zzb(zzda);
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final List zzv() throws RemoteException {
        Parcel zzda = zzda(23, zza());
        ArrayList zzb = zzaym.zzb(zzda);
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzw() throws RemoteException {
        zzdb(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzx() throws RemoteException {
        zzdb(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzy(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzdgVar);
        zzdb(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzdb(15, zza);
    }
}
