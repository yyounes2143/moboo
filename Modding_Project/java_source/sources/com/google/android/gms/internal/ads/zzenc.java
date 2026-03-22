package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzenc implements zzetv {
    private final zzgdj zza;
    private final zzfcp zzb;
    private final zzbzr zzc;

    public zzenc(zzgdj zzgdjVar, zzfcp zzfcpVar, zzbzr zzbzrVar) {
        this.zza = zzgdjVar;
        this.zzb = zzfcpVar;
        this.zzc = zzbzrVar;
    }

    public static /* synthetic */ zzend zzc(zzenc zzencVar) {
        return new zzend(zzencVar.zzb.zzj, zzencVar.zzc.zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzenb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzenc.zzc(zzenc.this);
            }
        });
    }
}
