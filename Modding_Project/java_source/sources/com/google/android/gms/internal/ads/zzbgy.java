package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbgy extends zzayk implements zzbha {
    public zzbgy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final com.google.android.gms.ads.internal.client.zzea zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final zzbgd zzf() throws RemoteException {
        zzbgd zzbgbVar;
        Parcel zzda = zzda(16, zza());
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

    @Override // com.google.android.gms.internal.ads.zzbha
    public final zzbgg zzg(String str) throws RemoteException {
        zzbgg zzbgeVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(2, zza);
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

    @Override // com.google.android.gms.internal.ads.zzbha
    public final IObjectWrapper zzh() throws RemoteException {
        Parcel zzda = zzda(9, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzda.readStrongBinder());
        zzda.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final String zzi() throws RemoteException {
        Parcel zzda = zzda(4, zza());
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final String zzj(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzda = zzda(1, zza);
        String readString = zzda.readString();
        zzda.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final List zzk() throws RemoteException {
        Parcel zzda = zzda(3, zza());
        ArrayList<String> createStringArrayList = zzda.createStringArrayList();
        zzda.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzl() throws RemoteException {
        zzdb(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzm() throws RemoteException {
        zzdb(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzn(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzo() throws RemoteException {
        zzdb(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzq() throws RemoteException {
        Parcel zzda = zzda(12, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(17, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        Parcel zzda = zzda(10, zza);
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbha
    public final boolean zzt() throws RemoteException {
        Parcel zzda = zzda(13, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }
}
