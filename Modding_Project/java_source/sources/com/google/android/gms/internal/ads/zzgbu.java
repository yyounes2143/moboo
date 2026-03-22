package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbu extends zzgbv {
    public zzgbu(ListenableFuture listenableFuture, zzfur zzfurVar) {
        super(listenableFuture, zzfurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbv
    public final /* synthetic */ Object zze(Object obj, Object obj2) throws Exception {
        return ((zzfur) obj).apply(obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgbv
    public final void zzf(Object obj) {
        zzc(obj);
    }
}
