package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgje extends zzgfl {
    private final zzgjd zza;
    private final int zzb;

    private zzgje(zzgjd zzgjdVar, int i) {
        this.zza = zzgjdVar;
        this.zzb = i;
    }

    public static zzgje zzd(zzgjd zzgjdVar, int i) throws GeneralSecurityException {
        if (i >= 8 && i <= 12) {
            return new zzgje(zzgjdVar, i);
        }
        throw new GeneralSecurityException("Salt size must be between 8 and 12 bytes");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgje)) {
            return false;
        }
        zzgje zzgjeVar = (zzgje) obj;
        if (zzgjeVar.zza != this.zza || zzgjeVar.zzb != this.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgje.class, this.zza, Integer.valueOf(this.zzb));
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "X-AES-GCM Parameters (variant: " + obj + "salt_size_bytes: " + this.zzb + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zza != zzgjd.zzb) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzgjd zzc() {
        return this.zza;
    }
}
