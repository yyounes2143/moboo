package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgmq {
    private HashMap zza = new HashMap();

    public final zzgms zza() {
        if (this.zza != null) {
            zzgms zzgmsVar = new zzgms(Collections.unmodifiableMap(this.zza), null);
            this.zza = null;
            return zzgmsVar;
        }
        throw new IllegalStateException("cannot call build() twice");
    }
}
