package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbj extends zzgbl {
    public zzgbj(ListenableFuture listenableFuture, Class cls, zzgcf zzgcfVar) {
        super(listenableFuture, cls, zzgcfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbl
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Throwable th) throws Exception {
        zzgcf zzgcfVar = (zzgcf) obj;
        ListenableFuture zza = zzgcfVar.zza(th);
        zzfvc.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgcfVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgbl
    public final /* synthetic */ void zzf(Object obj) {
        zzn((ListenableFuture) obj);
    }
}
