package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfqu implements Closeable {
    public static zzfrg zza() {
        return new zzfrg();
    }

    public static zzfrg zzb(final int i, zzfrf zzfrfVar) {
        return new zzfrg(new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqs
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        }, new zzfvu() { // from class: com.google.android.gms.internal.ads.zzfqt
            @Override // com.google.android.gms.internal.ads.zzfvu
            public final Object zza() {
                return zzfqu.zze();
            }
        }, zzfrfVar);
    }

    public static zzfrg zzc(zzfvu<Integer> zzfvuVar, zzfvu<Integer> zzfvuVar2, zzfrf zzfrfVar) {
        return new zzfrg(zzfvuVar, zzfvuVar2, zzfrfVar);
    }

    public static /* synthetic */ Integer zze() {
        return -1;
    }
}
