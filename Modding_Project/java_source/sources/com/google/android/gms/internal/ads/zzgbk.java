package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgbk extends zzgbl {
    public zzgbk(ListenableFuture listenableFuture, Class cls, zzfur zzfurVar) {
        super(listenableFuture, cls, zzfurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbl
    public final /* synthetic */ Object zze(Object obj, Throwable th) throws Exception {
        return ((zzfur) obj).apply(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgbl
    public final void zzf(Object obj) {
        zzc(obj);
    }
}
