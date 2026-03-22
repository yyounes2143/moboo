package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbt extends zzgbv {
    public zzgbt(ListenableFuture listenableFuture, zzgcf zzgcfVar) {
        super(listenableFuture, zzgcfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbv
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) throws Exception {
        zzgcf zzgcfVar = (zzgcf) obj;
        ListenableFuture zza = zzgcfVar.zza(obj2);
        zzfvc.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgcfVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgbv
    public final /* synthetic */ void zzf(Object obj) {
        zzn((ListenableFuture) obj);
    }
}
