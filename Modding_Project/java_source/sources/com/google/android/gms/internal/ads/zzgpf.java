package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgpf extends zzgpz {
    private final int zza;
    private final int zzb;
    private final zzgpd zzc;

    public /* synthetic */ zzgpf(int i, int i2, zzgpd zzgpdVar, zzgpe zzgpeVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzgpdVar;
    }

    public static zzgpc zze() {
        return new zzgpc(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpf)) {
            return false;
        }
        zzgpf zzgpfVar = (zzgpf) obj;
        if (zzgpfVar.zza != this.zza || zzgpfVar.zzd() != zzd() || zzgpfVar.zzc != this.zzc) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgpf.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), this.zzc);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        return "AES-CMAC Parameters (variant: " + valueOf + ", " + this.zzb + "-byte tags, and " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzc != zzgpd.zzd) {
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
        zzgpd zzgpdVar = this.zzc;
        if (zzgpdVar == zzgpd.zzd) {
            return this.zzb;
        }
        if (zzgpdVar == zzgpd.zza || zzgpdVar == zzgpd.zzb || zzgpdVar == zzgpd.zzc) {
            return this.zzb + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgpd zzf() {
        return this.zzc;
    }
}
