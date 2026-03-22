package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzets implements zzetv {
    private final zzgdj zza;
    private final Context zzb;

    public zzets(zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzetr zzc(zzets zzetsVar) {
        zzbcm zzbcmVar = zzbcv.zzgo;
        return new zzetr(com.google.android.gms.ads.internal.util.zzad.zzb(zzetsVar.zzb, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)));
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 37;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzets.zzc(zzets.this);
            }
        });
    }
}
