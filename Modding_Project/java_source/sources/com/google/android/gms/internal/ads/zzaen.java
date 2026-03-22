package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaen {
    public static final zzaen zza = new zzaen(0, 0);
    public final long zzb;
    public final long zzc;

    public zzaen(long j, long j2) {
        this.zzb = j;
        this.zzc = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaen.class == obj.getClass()) {
            zzaen zzaenVar = (zzaen) obj;
            if (this.zzb == zzaenVar.zzb && this.zzc == zzaenVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        return "[timeUs=" + this.zzb + ", position=" + this.zzc + "]";
    }
}
