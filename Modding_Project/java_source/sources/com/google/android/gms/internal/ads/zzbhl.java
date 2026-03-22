package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbhl extends zzayk implements zzbhn {
    public zzbhl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbhn
    public final void zze(zzbha zzbhaVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzf(zza, zzbhaVar);
        zzdb(1, zza);
    }
}
