package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbtj extends zzayk implements zzbtl {
    public zzbtj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final boolean zzH() throws RemoteException {
        Parcel zzda = zzda(11, zza());
        boolean zzg = zzaym.zzg(zzda);
        zzda.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzh(int i, int i2, Intent intent) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeInt(i2);
        zzaym.zzd(zza, intent);
        zzdb(12, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzi() throws RemoteException {
        zzdb(10, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, iObjectWrapper);
        zzdb(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzl(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzm() throws RemoteException {
        zzdb(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzo() throws RemoteException {
        zzdb(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzp(int i, String[] strArr, int[] iArr) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeStringArray(strArr);
        zza.writeIntArray(iArr);
        zzdb(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzq() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzr() throws RemoteException {
        zzdb(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzs(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, bundle);
        Parcel zzda = zzda(6, zza);
        if (zzda.readInt() != 0) {
            bundle.readFromParcel(zzda);
        }
        zzda.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzt() throws RemoteException {
        zzdb(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzu() throws RemoteException {
        zzdb(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzv() throws RemoteException {
        zzdb(14, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtl
    public final void zzx() throws RemoteException {
        zzdb(9, zza());
    }
}
