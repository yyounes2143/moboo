package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfzc extends zzfzg {
    final /* synthetic */ Comparator zza;

    public zzfzc(Comparator comparator) {
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfzg
    public final Map zza() {
        return new TreeMap(this.zza);
    }
}
