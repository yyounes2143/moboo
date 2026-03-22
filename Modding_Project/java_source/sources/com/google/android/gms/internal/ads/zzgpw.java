package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpw extends zzgpz {
    private final int zza;
    private final int zzb;
    private final zzgpu zzc;
    private final zzgpt zzd;

    public /* synthetic */ zzgpw(int i, int i2, zzgpu zzgpuVar, zzgpt zzgptVar, zzgpv zzgpvVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgpuVar;
        this.zzd = zzgptVar;
    }

    public static zzgps zze() {
        return new zzgps(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpw)) {
            return false;
        }
        zzgpw zzgpwVar = (zzgpw) obj;
        if (zzgpwVar.zza != this.zza || zzgpwVar.zzd() != zzd() || zzgpwVar.zzc != this.zzc || zzgpwVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgpw.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final String toString() {
        zzgpt zzgptVar = this.zzd;
        String valueOf = String.valueOf(this.zzc);
        String valueOf2 = String.valueOf(zzgptVar);
        return "HMAC Parameters (variant: " + valueOf + ", hashType: " + valueOf2 + ", " + this.zzb + "-byte tags, and " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzc != zzgpu.zzd) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final int zzd() {
        zzgpu zzgpuVar = this.zzc;
        if (zzgpuVar == zzgpu.zzd) {
            return this.zzb;
        }
        if (zzgpuVar == zzgpu.zza || zzgpuVar == zzgpu.zzb || zzgpuVar == zzgpu.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgpt zzf() {
        return this.zzd;
    }

    public final zzgpu zzg() {
        return this.zzc;
    }
}
