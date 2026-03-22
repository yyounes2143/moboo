package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeal {
    private final zzeah zza;
    private final zzgdj zzb;

    public zzeal(zzeah zzeahVar, zzgdj zzgdjVar) {
        this.zza = zzeahVar;
        this.zzb = zzgdjVar;
    }

    public final void zza(zzffx zzffxVar) {
        final zzeah zzeahVar = this.zza;
        Objects.requireNonNull(zzeahVar);
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzeaj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeah.this.getWritableDatabase();
            }
        };
        zzgdj zzgdjVar = this.zzb;
        zzgcy.zzr(zzgdjVar.zzb(callable), new zzeak(this, zzffxVar), zzgdjVar);
    }
}
