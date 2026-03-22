package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerd implements zzetv {
    private final zzgdj zza;
    private final zzfcp zzb;

    public zzerd(zzgdj zzgdjVar, zzfcp zzfcpVar) {
        this.zza = zzgdjVar;
        this.zzb = zzfcpVar;
    }

    public static /* synthetic */ zzere zzc(zzerd zzerdVar) {
        return new zzere("requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzerdVar.zzb.zzd)));
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 21;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerd.zzc(zzerd.this);
            }
        });
    }
}
