package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgho extends zzgfl {
    private final zzghn zza;

    private zzgho(zzghn zzghnVar) {
        this.zza = zzghnVar;
    }

    public static zzgho zzc(zzghn zzghnVar) {
        return new zzgho(zzghnVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgho) || ((zzgho) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgho.class, this.zza);
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "ChaCha20Poly1305 Parameters (variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zza != zzghn.zzc) {
            return true;
        }
        return false;
    }

    public final zzghn zzb() {
        return this.zza;
    }
}
