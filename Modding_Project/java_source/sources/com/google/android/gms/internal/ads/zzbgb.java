package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbgb extends zzayk implements zzbgd {
    public zzbgb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zze() throws RemoteException {
        Parcel zzda = zzda(2, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zzf() throws RemoteException {
        Parcel zzda = zzda(6, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final float zzg() throws RemoteException {
        Parcel zzda = zzda(5, zza());
        float readFloat = zzda.readFloat();
        zzda.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final com.google.android.gms.ads.internal.client.zzea zzh() throws RemoteException {
        Parcel zzda = zzda(7, zza());
        com.google.android.gms.ads.internal.client.zzea zzb = com.google.android.gms.ads.internal.client.zzdz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final IObjectWrapper zzi() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final boolean zzk() throws RemoteException {
        Parcel zzda = zzda(10, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final boolean zzl() throws RemoteException {
        Parcel zzda = zzda(8, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzm(zzbho zzbhoVar) throws RemoteException {
        throw null;
    }
}
