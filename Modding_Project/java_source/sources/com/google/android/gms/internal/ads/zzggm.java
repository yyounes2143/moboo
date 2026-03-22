package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggm extends zzgfl {
    private final int zza;
    private final int zzb;
    private final int zzc = 16;
    private final zzggk zzd;

    public /* synthetic */ zzggm(int i, int i2, int i3, zzggk zzggkVar, zzggl zzgglVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzd = zzggkVar;
    }

    public static zzggj zzd() {
        return new zzggj(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggm)) {
            return false;
        }
        zzggm zzggmVar = (zzggm) obj;
        if (zzggmVar.zza != this.zza || zzggmVar.zzb != this.zzb || zzggmVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzggm.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), 16, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        return "AesEax Parameters (variant: " + valueOf + ", " + this.zzb + "-byte IV, 16-byte tag, and " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzd != zzggk.zzc) {
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

    public final zzggk zze() {
        return this.zzd;
    }
}
