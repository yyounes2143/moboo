package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzcaa;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzb {
    private final Runnable zza = new zza(this);
    private volatile Thread zzb;

    public abstract void zza();

    public ListenableFuture zzb() {
        return zzcaa.zza.zza(this.zza);
    }
}
