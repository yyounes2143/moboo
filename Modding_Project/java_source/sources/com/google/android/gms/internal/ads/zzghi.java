package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghi extends zzgfl {
    private final int zza;
    private final zzghg zzb;

    public /* synthetic */ zzghi(int i, zzghg zzghgVar, zzghh zzghhVar) {
        this.zza = i;
        this.zzb = zzghgVar;
    }

    public static zzghf zzc() {
        return new zzghf(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghi)) {
            return false;
        }
        zzghi zzghiVar = (zzghi) obj;
        if (zzghiVar.zza != this.zza || zzghiVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzghi.class, Integer.valueOf(this.zza), this.zzb);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        return "AesGcmSiv Parameters (variant: " + valueOf + ", " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzb != zzghg.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzghg zzd() {
        return this.zzb;
    }
}
