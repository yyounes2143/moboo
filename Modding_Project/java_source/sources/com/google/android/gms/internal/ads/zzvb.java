package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzvb {
    public final Object zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final int zze;

    private zzvb(Object obj, int i, int i2, long j, int i3) {
        this.zza = obj;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = i3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvb)) {
            return false;
        }
        zzvb zzvbVar = (zzvb) obj;
        if (this.zza.equals(zzvbVar.zza) && this.zzb == zzvbVar.zzb && this.zzc == zzvbVar.zzc && this.zzd == zzvbVar.zzd && this.zze == zzvbVar.zze) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zza.hashCode() + 527) * 31) + this.zzb) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + this.zze;
    }

    public final zzvb zza(Object obj) {
        if (this.zza.equals(obj)) {
            return this;
        }
        return new zzvb(obj, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final boolean zzb() {
        if (this.zzb != -1) {
            return true;
        }
        return false;
    }

    public zzvb(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    public zzvb(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public zzvb(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }
}
