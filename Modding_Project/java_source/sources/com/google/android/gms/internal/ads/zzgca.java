package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgca extends zzgbz {
    private static final AtomicReferenceFieldUpdater zza = AtomicReferenceFieldUpdater.newUpdater(zzgcd.class, Set.class, "seenExceptionsField");
    private static final AtomicIntegerFieldUpdater zzb = AtomicIntegerFieldUpdater.newUpdater(zzgcd.class, "remainingField");

    private zzgca() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgbz
    public final int zza(zzgcd zzgcdVar) {
        return zzb.decrementAndGet(zzgcdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbz
    public final void zzb(zzgcd zzgcdVar, Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = zza;
        while (!androidx.concurrent.futures.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReferenceFieldUpdater, zzgcdVar, null, set2) && atomicReferenceFieldUpdater.get(zzgcdVar) == null) {
        }
    }

    public /* synthetic */ zzgca(zzgcc zzgccVar) {
        super(null);
    }
}
