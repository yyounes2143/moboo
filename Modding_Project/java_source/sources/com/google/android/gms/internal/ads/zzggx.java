package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzggx extends zzgfl {
    private final int zza;
    private final int zzb = 12;
    private final int zzc = 16;
    private final zzggv zzd;

    public /* synthetic */ zzggx(int i, int i2, int i3, zzggv zzggvVar, zzggw zzggwVar) {
        this.zza = i;
        this.zzd = zzggvVar;
    }

    public static zzggu zzc() {
        return new zzggu(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzggx)) {
            return false;
        }
        zzggx zzggxVar = (zzggx) obj;
        if (zzggxVar.zza != this.zza || zzggxVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzggx.class, Integer.valueOf(this.zza), 12, 16, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        return "AesGcm Parameters (variant: " + valueOf + ", 12-byte IV, 16-byte tag, and " + this.zza + "-byte key)";
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zza() {
        if (this.zzd != zzggv.zzc) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public final zzggv zzd() {
        return this.zzd;
    }
}
