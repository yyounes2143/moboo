package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzglo implements zzglq {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    public zzglo(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzglq
    public final boolean zza() {
        return this.zza.get();
    }
}
