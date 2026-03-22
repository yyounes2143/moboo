package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzky {
    public final zzvb zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final boolean zzj;

    public zzky(zzvb zzvbVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        boolean z7 = true;
        if (!z5 || z3) {
            z6 = true;
        } else {
            z6 = false;
        }
        zzdc.zzd(z6);
        if (z4 && !z3) {
            z7 = false;
        }
        zzdc.zzd(z7);
        this.zza = zzvbVar;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = j3;
        this.zze = j4;
        this.zzf = false;
        this.zzg = false;
        this.zzh = z3;
        this.zzi = z4;
        this.zzj = z5;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzky.class == obj.getClass()) {
            zzky zzkyVar = (zzky) obj;
            if (this.zzb == zzkyVar.zzb && this.zzc == zzkyVar.zzc && this.zzd == zzkyVar.zzd && this.zze == zzkyVar.zze && this.zzh == zzkyVar.zzh && this.zzi == zzkyVar.zzi && this.zzj == zzkyVar.zzj && Objects.equals(this.zza, zzkyVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.zze;
        long j2 = this.zzd;
        return ((((((((((((((this.zza.hashCode() + 527) * 31) + ((int) this.zzb)) * 31) + ((int) this.zzc)) * 31) + ((int) j2)) * 31) + ((int) j)) * 29791) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0)) * 31) + (this.zzj ? 1 : 0);
    }

    public final zzky zza(long j) {
        if (j == this.zzc) {
            return this;
        }
        return new zzky(this.zza, this.zzb, j, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }

    public final zzky zzb(long j) {
        if (j == this.zzb) {
            return this;
        }
        return new zzky(this.zza, j, this.zzc, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }
}
