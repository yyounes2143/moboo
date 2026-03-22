package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzglu {
    final Map zza = new HashMap();
    final Map zzb = new HashMap();

    private zzglu() {
    }

    public final zzglu zza(Enum r2, Object obj) {
        this.zza.put(r2, obj);
        this.zzb.put(obj, r2);
        return this;
    }

    public final zzglw zzb() {
        return new zzglw(Collections.unmodifiableMap(this.zza), Collections.unmodifiableMap(this.zzb), null);
    }

    public /* synthetic */ zzglu(zzglv zzglvVar) {
    }
}
