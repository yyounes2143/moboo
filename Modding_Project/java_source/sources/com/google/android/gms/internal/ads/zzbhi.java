package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhi extends zzayk implements zzbhk {
    public zzbhi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zze(zzbha zzbhaVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhaVar);
        zza.writeString(str);
        zzdb(1, zza);
    }
}
