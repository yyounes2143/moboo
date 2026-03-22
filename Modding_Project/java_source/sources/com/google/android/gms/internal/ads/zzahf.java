package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahf {
    public final long zza;
    public final long zzb;
    public final int zzc;

    public zzahf(long j, long j2, int i) {
        boolean z;
        if (j < j2) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        this.zza = j;
        this.zzb = j2;
        this.zzc = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahf.class == obj.getClass()) {
            zzahf zzahfVar = (zzahf) obj;
            if (this.zza == zzahfVar.zza && this.zzb == zzahfVar.zzb && this.zzc == zzahfVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Long.valueOf(this.zzb), Integer.valueOf(this.zzc));
    }

    public final String toString() {
        Object[] objArr = {Long.valueOf(this.zza), Long.valueOf(this.zzb), Integer.valueOf(this.zzc)};
        String str = zzeu.zza;
        return String.format(Locale.US, "Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", objArr);
    }
}
