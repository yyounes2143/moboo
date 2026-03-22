package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcer {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    public zzcer(String str) {
    }

    public final void zza() {
        this.zza.set(false);
    }

    public final void zzb() {
        this.zza.set(true);
    }

    public final void zzc() {
        this.zza.set(false);
    }

    public final boolean zzd() {
        return this.zza.get();
    }
}
