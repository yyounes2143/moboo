package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeop implements zzetv {
    private final zzgdj zza;

    public zzeop(zzgdj zzgdjVar) {
        this.zza = zzgdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 55;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeoo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeoq(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zza());
            }
        });
    }
}
