package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfeo implements zzfem {
    private final String zza;

    public zzfeo(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzfem
    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzfeo)) {
            return false;
        }
        return this.zza.equals(((zzfeo) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfem
    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza;
    }
}
