package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzl extends zzfzn implements Serializable {
    static final zzfzl zza = new zzfzl();

    private zzfzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzfzn, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.android.gms.internal.ads.zzfzn
    public final zzfzn zza() {
        return zzfzv.zza;
    }
}
