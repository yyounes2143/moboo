package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgne {
    private static final zzgne zza = new zzgne();
    private static final zzgnc zzb = new zzgnc(null);
    private final AtomicReference zzc = new AtomicReference();

    public static zzgne zzb() {
        return zza;
    }

    public final zzgmu zza() {
        zzgmu zzgmuVar = (zzgmu) this.zzc.get();
        if (zzgmuVar == null) {
            return zzb;
        }
        return zzgmuVar;
    }
}
