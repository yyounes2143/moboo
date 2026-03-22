package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevv implements zzetv {
    final zzgdj zza;
    final List zzb;

    public zzevv(zzbce zzbceVar, zzgdj zzgdjVar, List list) {
        this.zza = zzgdjVar;
        this.zzb = list;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 48;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevw(zzevv.this.zzb);
            }
        });
    }
}
