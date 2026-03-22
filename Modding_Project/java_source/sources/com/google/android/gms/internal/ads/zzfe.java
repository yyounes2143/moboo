package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfe implements zzau {
    public final long zza;
    public final long zzb;
    public final long zzc;

    public zzfe(long j, long j2, long j3) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = j3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfe)) {
            return false;
        }
        zzfe zzfeVar = (zzfe) obj;
        if (this.zza == zzfeVar.zza && this.zzb == zzfeVar.zzb && this.zzc == zzfeVar.zzc) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.zza;
        long j2 = this.zzb;
        return ((((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.zza + ", modification time=" + this.zzb + ", timescale=" + this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
