package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayk;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbz extends zzayk implements zzcb {
    public zzbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcb
    public final void zze() throws RemoteException {
        zzdb(1, zza());
    }
}
