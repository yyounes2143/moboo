package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdi extends zzayk implements zzdk {
    public zzdi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdk
    public final void zze(zze zzeVar) throws RemoteException {
        Parcel zza = zza();
        zzaym.zzd(zza, zzeVar);
        zzdb(1, zza);
    }
}
