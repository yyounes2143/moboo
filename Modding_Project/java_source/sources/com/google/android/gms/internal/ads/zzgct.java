package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgct extends zzgcr implements ListenableFuture {
    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgcr
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    public abstract ListenableFuture zzc();
}
