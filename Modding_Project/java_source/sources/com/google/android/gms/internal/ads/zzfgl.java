package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfgl {
    private static final ListenableFuture zza = zzgcy.zzh(null);
    private final zzgdj zzb;
    private final ScheduledExecutorService zzc;
    private final zzfgm zzd;

    public zzfgl(zzgdj zzgdjVar, ScheduledExecutorService scheduledExecutorService, zzfgm zzfgmVar) {
        this.zzb = zzgdjVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfgmVar;
    }

    public final zzfgb zza(Object obj, ListenableFuture... listenableFutureArr) {
        return new zzfgb(this, obj, Arrays.asList(listenableFutureArr), null);
    }

    public final zzfgj zzb(Object obj, ListenableFuture listenableFuture) {
        return new zzfgj(this, obj, listenableFuture, Collections.singletonList(listenableFuture), listenableFuture);
    }

    public abstract String zzf(Object obj);
}
