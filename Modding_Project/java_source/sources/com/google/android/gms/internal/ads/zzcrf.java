package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcrf implements zzegv {
    public final List zza;

    public zzcrf(List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzegv
    public final void zzq() {
        for (ListenableFuture listenableFuture : this.zza) {
            zzgcy.zzr(listenableFuture, new zzcre(this), zzgdq.zzc());
        }
    }

    public zzcrf(zzcqx zzcqxVar) {
        this.zza = Collections.singletonList(zzgcy.zzh(zzcqxVar));
    }
}
