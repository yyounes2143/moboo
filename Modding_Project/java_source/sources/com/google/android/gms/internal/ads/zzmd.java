package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmd {
    public static final zzmd zza;
    public static final zzmd zzb;
    public final long zzc;
    public final long zzd;

    static {
        zzmd zzmdVar = new zzmd(0L, 0L);
        zza = zzmdVar;
        new zzmd(Long.MAX_VALUE, Long.MAX_VALUE);
        new zzmd(Long.MAX_VALUE, 0L);
        new zzmd(0L, Long.MAX_VALUE);
        zzb = zzmdVar;
    }

    public zzmd(long j, long j2) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        zzdc.zzd(j2 >= 0);
        this.zzc = j;
        this.zzd = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmd.class == obj.getClass()) {
            zzmd zzmdVar = (zzmd) obj;
            if (this.zzc == zzmdVar.zzc && this.zzd == zzmdVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzc) * 31) + ((int) this.zzd);
    }
}
