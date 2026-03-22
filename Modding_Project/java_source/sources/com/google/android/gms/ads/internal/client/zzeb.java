package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzaym;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeb extends zzayk implements zzed {
    public zzeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zze() throws RemoteException {
        zzdb(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzf(boolean z) throws RemoteException {
        Parcel zza = zza();
        int i = zzaym.zza;
        zza.writeInt(z ? 1 : 0);
        zzdb(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzg() throws RemoteException {
        zzdb(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzh() throws RemoteException {
        zzdb(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzi() throws RemoteException {
        zzdb(1, zza());
    }
}
