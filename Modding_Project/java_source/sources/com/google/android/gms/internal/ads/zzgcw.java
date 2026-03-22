package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcw {
    private final boolean zza;
    private final zzfyc zzb;

    public /* synthetic */ zzgcw(boolean z, zzfyc zzfycVar, zzgcx zzgcxVar) {
        this.zza = z;
        this.zzb = zzfycVar;
    }

    public final ListenableFuture zza(Callable callable, Executor executor) {
        return new zzgcl(this.zzb, this.zza, executor, callable);
    }
}
