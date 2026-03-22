package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkv {
    public final long zza;
    public final float zzb;
    public final long zzc;

    public /* synthetic */ zzkv(zzkt zzktVar, zzku zzkuVar) {
        long j;
        float f;
        long j2;
        j = zzktVar.zza;
        this.zza = j;
        f = zzktVar.zzb;
        this.zzb = f;
        j2 = zzktVar.zzc;
        this.zzc = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkv)) {
            return false;
        }
        zzkv zzkvVar = (zzkv) obj;
        if (this.zza == zzkvVar.zza && this.zzb == zzkvVar.zzb && this.zzc == zzkvVar.zzc) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Float.valueOf(this.zzb), Long.valueOf(this.zzc));
    }

    public final zzkt zza() {
        return new zzkt(this, null);
    }
}
