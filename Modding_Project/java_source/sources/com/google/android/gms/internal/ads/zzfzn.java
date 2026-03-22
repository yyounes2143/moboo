package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfzn implements Comparator {
    public static zzfzn zzb(Comparator comparator) {
        return new zzfxn(comparator);
    }

    public static zzfzn zzc() {
        return zzfzl.zza;
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public zzfzn zza() {
        return new zzfzw(this);
    }
}
