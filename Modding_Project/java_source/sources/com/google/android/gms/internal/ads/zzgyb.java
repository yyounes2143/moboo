package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgyb {
    private final Object zza;
    private final int zzb;

    public zzgyb(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgyb)) {
            return false;
        }
        zzgyb zzgybVar = (zzgyb) obj;
        if (this.zza != zzgybVar.zza || this.zzb != zzgybVar.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
