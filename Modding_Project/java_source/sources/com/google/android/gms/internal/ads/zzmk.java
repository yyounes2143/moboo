package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmk {
    public final long zza;
    public final zzbl zzb;
    public final int zzc;
    @Nullable
    public final zzvb zzd;
    public final long zze;
    public final zzbl zzf;
    public final int zzg;
    @Nullable
    public final zzvb zzh;
    public final long zzi;
    public final long zzj;

    public zzmk(long j, zzbl zzblVar, int i, @Nullable zzvb zzvbVar, long j2, zzbl zzblVar2, int i2, @Nullable zzvb zzvbVar2, long j3, long j4) {
        this.zza = j;
        this.zzb = zzblVar;
        this.zzc = i;
        this.zzd = zzvbVar;
        this.zze = j2;
        this.zzf = zzblVar2;
        this.zzg = i2;
        this.zzh = zzvbVar2;
        this.zzi = j3;
        this.zzj = j4;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmk.class == obj.getClass()) {
            zzmk zzmkVar = (zzmk) obj;
            if (this.zza == zzmkVar.zza && this.zzc == zzmkVar.zzc && this.zze == zzmkVar.zze && this.zzg == zzmkVar.zzg && this.zzi == zzmkVar.zzi && this.zzj == zzmkVar.zzj && Objects.equals(this.zzb, zzmkVar.zzb) && Objects.equals(this.zzd, zzmkVar.zzd) && Objects.equals(this.zzf, zzmkVar.zzf) && Objects.equals(this.zzh, zzmkVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), this.zzb, Integer.valueOf(this.zzc), this.zzd, Long.valueOf(this.zze), this.zzf, Integer.valueOf(this.zzg), this.zzh, Long.valueOf(this.zzi), Long.valueOf(this.zzj));
    }
}
