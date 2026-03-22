package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfrp {
    private final String zza;
    private final long zzb;

    public zzfrp() {
        this.zza = null;
        this.zzb = -1L;
    }

    public final long zza() {
        return this.zzb;
    }

    @Nullable
    public final String zzb() {
        return this.zza;
    }

    public final boolean zzc() {
        if (this.zza != null && this.zzb > 0) {
            return true;
        }
        return false;
    }

    public zzfrp(String str, long j) {
        this.zza = str;
        this.zzb = j;
    }
}
