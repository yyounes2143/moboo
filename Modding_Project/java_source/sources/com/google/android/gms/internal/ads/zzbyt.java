package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbyt extends zzayk implements zzbyv {
    public zzbyt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzf(zza, iObjectWrapper2);
        zza.writeString(str);
        zzaym.zzf(zza, iObjectWrapper3);
        Parcel zzda = zzda(11, zza);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzf(IObjectWrapper iObjectWrapper, zzbyz zzbyzVar, zzbys zzbysVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzaym.zzd(zza, zzbyzVar);
        zzaym.zzf(zza, zzbysVar);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzg(zzbud zzbudVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbyv
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbua zzbuaVar) throws RemoteException {
        throw null;
    }
}
