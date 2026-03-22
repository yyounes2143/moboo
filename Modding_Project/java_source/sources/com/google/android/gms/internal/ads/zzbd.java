package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbd {
    private final zzv zza;

    static {
        new zzbc().zze();
        String str = zzeu.zza;
        Integer.toString(0, 36);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbd)) {
            return false;
        }
        return this.zza.equals(((zzbd) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }
}
