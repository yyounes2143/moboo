package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevr implements zzetv {
    public zzevr(zzbzb zzbzbVar, zzgdj zzgdjVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        final ListenableFuture zzh = zzgcy.zzh(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzga)).booleanValue()) {
            zzh = zzgcy.zzh(null);
        }
        final ListenableFuture zzh2 = zzgcy.zzh(null);
        return zzgcy.zzc(zzh, zzh2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzevq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevs((String) ListenableFuture.this.get(), (String) zzh2.get());
            }
        }, zzcaa.zza);
    }
}
