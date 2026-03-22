package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeqv implements zzetv {
    private final zzgdj zza;

    public zzeqv(zzgdj zzgdjVar) {
        this.zza = zzgdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 20;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzequ
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeqw(com.google.android.gms.ads.internal.zzv.zzu().zzb(), com.google.android.gms.ads.internal.zzv.zzu().zzm());
            }
        });
    }
}
