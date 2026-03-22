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
public final class zzbpw extends zzayk implements IInterface {
    public zzbpw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final double zze() throws RemoteException {
        Parcel zzda = zzda(7, zza());
        double readDouble = zzda.readDouble();
        zzda.recycle();
        return readDouble;
    }

    public final Bundle zzf() throws RemoteException {
        Parcel zzda = zzda(15, zza());
        Bundle bundle = (Bundle) zzaym.zza(zzda, Bundle.CREATOR);
        zzda.recycle();
        return bundle;
    }

    public final com.google.android.gms.ads.internal.client.zzea zzg() throws RemoteException {
        Parcel zzda = zzda(17, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    public final zzbfz zzh() throws RemoteException {
        Parcel zzda = zzda(19, zza());
        zzbfz zzj = zzbfy.zzj(zzda.readStrongBinder());
        zzda.recycle();
        return zzj;
    }

    public final zzbgg zzi() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        zzbgg zzg = zzbgf.zzg(zzda.readStrongBinder());
        zzda.recycle();
        return zzg;
    }

    public final IObjectWrapper zzj() throws RemoteException {
        Parcel zzda = zzda(18, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    public final IObjectWrapper zzk() throws RemoteException {
        Parcel zzda = zzda(20, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    public final IObjectWrapper zzl() throws RemoteException {
        Parcel zzda = zzda(21, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    public final String zzm() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    public final String zzn() throws RemoteException {
        Parcel zzda = zzda(6, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    public final String zzo() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    public final String zzp() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    public final String zzq() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    public final List zzr() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        ArrayList zzb = zzaym.zzb(zzda);
        zzda.recycle();
        return zzb;
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(11, zza);
    }

    public final void zzt() throws RemoteException {
        zzdb(10, zza());
    }

    public final void zzu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(12, zza);
    }

    public final void zzv(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, iObjectWrapper2);
        zzaym.zzf(zza, iObjectWrapper3);
        zzdb(22, zza);
    }

    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(16, zza);
    }

    public final boolean zzx() throws RemoteException {
        Parcel zzda = zzda(14, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    public final boolean zzy() throws RemoteException {
        Parcel zzda = zzda(13, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
