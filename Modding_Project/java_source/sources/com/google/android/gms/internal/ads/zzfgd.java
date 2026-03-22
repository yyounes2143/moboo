package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfgd {
    public static final zzfgj zza(Callable callable, Object obj, zzfgl zzfglVar) {
        zzgdj zzgdjVar;
        zzgdjVar = zzfglVar.zzb;
        return zzb(callable, zzgdjVar, obj, zzfglVar);
    }

    public static final zzfgj zzb(Callable callable, zzgdj zzgdjVar, Object obj, zzfgl zzfglVar) {
        ListenableFuture listenableFuture;
        listenableFuture = zzfgl.zza;
        return new zzfgj(zzfglVar, obj, listenableFuture, Collections.EMPTY_LIST, zzgdjVar.zzb(callable));
    }

    public static final zzfgj zzc(ListenableFuture listenableFuture, Object obj, zzfgl zzfglVar) {
        ListenableFuture listenableFuture2;
        listenableFuture2 = zzfgl.zza;
        return new zzfgj(zzfglVar, obj, listenableFuture2, Collections.EMPTY_LIST, listenableFuture);
    }

    public static final zzfgj zzd(final zzffy zzffyVar, zzgdj zzgdjVar, Object obj, zzfgl zzfglVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfgc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzffy.this.zza();
                return null;
            }
        }, zzgdjVar, obj, zzfglVar);
    }
}
