package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggc extends zzgfl {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final zzgga zze;
    private final zzgfz zzf;

    public /* synthetic */ zzggc(int i, int i2, int i3, int i4, zzgga zzggaVar, zzgfz zzgfzVar, zzggb zzggbVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = zzggaVar;
        this.zzf = zzgfzVar;
    }

    public static zzgfy zzf() {
        return new zzgfy(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggc)) {
            return false;
        }
        zzggc zzggcVar = (zzggc) obj;
        if (zzggcVar.zza != this.zza || zzggcVar.zzb != this.zzb || zzggcVar.zzc != this.zzc || zzggcVar.zzd != this.zzd || zzggcVar.zze != this.zze || zzggcVar.zzf != this.zzf) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzggc.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), this.zze, this.zzf);
    }

    public final String toString() {
        zzgfz zzgfzVar = this.zzf;
        String valueOf = String.valueOf(this.zze);
        String valueOf2 = String.valueOf(zzgfzVar);
        return "AesCtrHmacAead Parameters (variant: " + valueOf + ", hashType: " + valueOf2 + ", " + this.zzc + "-byte IV, and " + this.zzd + "-byte tags, and " + this.zza + "-byte AES key, and " + this.zzb + "-byte HMAC key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zze != zzgga.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }

    public final zzgfz zzg() {
        return this.zzf;
    }

    public final zzgga zzh() {
        return this.zze;
    }
}
