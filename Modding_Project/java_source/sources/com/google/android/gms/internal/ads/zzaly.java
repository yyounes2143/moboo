package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaly {
    private static final Comparator zza = new Comparator() { // from class: com.google.android.gms.internal.ads.zzalx
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compare;
            compare = Integer.compare(((zzaly) obj).zzb.zzb, ((zzaly) obj2).zzb.zzb);
            return compare;
        }
    };
    private final zzalz zzb;
    private final int zzc;

    public /* synthetic */ zzaly(zzalz zzalzVar, int i, zzamc zzamcVar) {
        this.zzb = zzalzVar;
        this.zzc = i;
    }
}
