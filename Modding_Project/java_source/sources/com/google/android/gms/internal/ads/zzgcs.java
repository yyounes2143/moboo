package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Future;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgcs extends zzgct {
    private final ListenableFuture zza;

    public zzgcs(ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgcr, com.google.android.gms.internal.ads.zzfxt
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgct, com.google.android.gms.internal.ads.zzgcr
    public final /* synthetic */ Future zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture zzc() {
        return this.zza;
    }
}
