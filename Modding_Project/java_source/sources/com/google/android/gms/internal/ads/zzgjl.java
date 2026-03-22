package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgjl extends zzgfl {
    private final zzgjk zza;

    private zzgjl(zzgjk zzgjkVar) {
        this.zza = zzgjkVar;
    }

    public static zzgjl zzc(zzgjk zzgjkVar) {
        return new zzgjl(zzgjkVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjl) || ((zzgjl) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgjl.class, this.zza);
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "XChaCha20Poly1305 Parameters (variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zza != zzgjk.zzc) {
            return true;
        }
        return false;
    }

    public final zzgjk zzb() {
        return this.zza;
    }
}
