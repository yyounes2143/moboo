package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbxp implements zzgcu {
    final /* synthetic */ ListenableFuture zza;

    public zzbxp(zzbxq zzbxqVar, ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        List list;
        list = zzbxq.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list;
        Void r2 = (Void) obj;
        list = zzbxq.zzc;
        list.remove(this.zza);
    }
}
