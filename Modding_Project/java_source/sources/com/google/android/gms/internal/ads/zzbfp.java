package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbfp extends zzayk implements IInterface {
    public zzbfp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
    }

    public final void zze(zzbup zzbupVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbupVar);
        zzdb(1, zza);
    }
}
