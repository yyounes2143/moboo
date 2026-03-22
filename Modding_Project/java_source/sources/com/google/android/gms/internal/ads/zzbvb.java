package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbvb extends zzayk implements zzbvd {
    public zzbvb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzbbVar);
        zzdb(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, parcelFileDescriptor);
        zzdb(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvl zzbvlVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, parcelFileDescriptor);
        zzaym.zzd(zza, zzbvlVar);
        zzdb(3, zza);
    }
}
