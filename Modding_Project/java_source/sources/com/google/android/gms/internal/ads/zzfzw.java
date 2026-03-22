package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzw extends zzfzn implements Serializable {
    final zzfzn zza;

    public zzfzw(zzfzn zzfznVar) {
        this.zza = zzfznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzn, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfzw) {
            return this.zza.equals(((zzfzw) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }
}
