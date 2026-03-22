package com.google.android.gms.ads.internal.overlay;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzq implements Callable {
    private final long zza;

    public zzq(long j) {
        this.zza = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ConcurrentHashMap concurrentHashMap;
        long j = this.zza;
        concurrentHashMap = AdOverlayInfoParcel.zzz;
        if (concurrentHashMap.remove(Long.valueOf(j)) != null) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(new Exception("Key was non-null in AdOverlayObjectsCleanupTask"), "AdOverlayObjectsCleanupTask");
            return null;
        }
        return null;
    }
}
