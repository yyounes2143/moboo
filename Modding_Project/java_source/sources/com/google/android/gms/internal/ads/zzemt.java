package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemt {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    @Nullable
    private zzems zzb;

    @Nullable
    public final zzems zza() {
        return this.zzb;
    }

    public final void zzb(zzems zzemsVar) {
        this.zzb = zzemsVar;
    }

    public final void zzc(boolean z) {
        this.zza.set(true);
    }

    public final boolean zzd() {
        return this.zza.get();
    }
}
