package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzghy extends zzgfl {
    private final String zza;
    private final zzghx zzb;

    private zzghy(String str, zzghx zzghxVar) {
        this.zza = str;
        this.zzb = zzghxVar;
    }

    public static zzghy zzc(String str, zzghx zzghxVar) {
        return new zzghy(str, zzghxVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghy)) {
            return false;
        }
        zzghy zzghyVar = (zzghy) obj;
        if (!zzghyVar.zza.equals(this.zza) || !zzghyVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzghy.class, this.zza, this.zzb);
    }

    public final String toString() {
        String obj = this.zzb.toString();
        return "LegacyKmsAead Parameters (keyUri: " + this.zza + ", variant: " + obj + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzb != zzghx.zzb) {
            return true;
        }
        return false;
    }

    public final zzghx zzb() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zza;
    }
}
