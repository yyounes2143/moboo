package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfdo {
    private final Deque zza = new LinkedBlockingDeque();
    private final Callable zzb;
    private final zzgdj zzc;

    public zzfdo(Callable callable, zzgdj zzgdjVar) {
        this.zzb = callable;
        this.zzc = zzgdjVar;
    }

    @Nullable
    public final synchronized ListenableFuture zza() {
        zzc(1);
        return (ListenableFuture) this.zza.poll();
    }

    public final synchronized void zzb(ListenableFuture listenableFuture) {
        this.zza.addFirst(listenableFuture);
    }

    public final synchronized void zzc(int i) {
        Deque deque = this.zza;
        int size = i - deque.size();
        for (int i2 = 0; i2 < size; i2++) {
            deque.add(this.zzc.zzb(this.zzb));
        }
    }
}
