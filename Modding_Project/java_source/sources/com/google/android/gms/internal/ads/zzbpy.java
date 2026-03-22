package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbpy extends zzayk implements zzbqa {
    public zzbpy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final boolean zzA() throws RemoteException {
        Parcel zzda = zzda(18, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final boolean zzB() throws RemoteException {
        Parcel zzda = zzda(17, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final double zze() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        double readDouble = zzda.readDouble();
        zzda.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final float zzf() throws RemoteException {
        Parcel zzda = zzda(23, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final float zzg() throws RemoteException {
        Parcel zzda = zzda(25, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final float zzh() throws RemoteException {
        Parcel zzda = zzda(24, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final Bundle zzi() throws RemoteException {
        Parcel zzda = zzda(16, zza());
        Bundle bundle = (Bundle) zzaym.zza(zzda, Bundle.CREATOR);
        zzda.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final com.google.android.gms.ads.internal.client.zzea zzj() throws RemoteException {
        Parcel zzda = zzda(11, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final zzbfz zzk() throws RemoteException {
        Parcel zzda = zzda(12, zza());
        zzbfz zzj = zzbfy.zzj(zzda.readStrongBinder());
        zzda.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final zzbgg zzl() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        zzbgg zzg = zzbgf.zzg(zzda.readStrongBinder());
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel zzda = zzda(13, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel zzda = zzda(14, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final IObjectWrapper zzo() throws RemoteException {
        Parcel zzda = zzda(15, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzp() throws RemoteException {
        Parcel zzda = zzda(7, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzq() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzr() throws RemoteException {
        Parcel zzda = zzda(6, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzs() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzt() throws RemoteException {
        Parcel zzda = zzda(10, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final String zzu() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final List zzv() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        ArrayList zzb = zzaym.zzb(zzda);
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zzx() throws RemoteException {
        zzdb(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, iObjectWrapper2);
        zzaym.zzf(zza, iObjectWrapper3);
        zzdb(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(22, zza);
    }
}
