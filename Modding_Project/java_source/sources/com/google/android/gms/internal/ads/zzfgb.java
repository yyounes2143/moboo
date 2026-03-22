package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfgb {
    final /* synthetic */ zzfgl zza;
    private final Object zzb;
    private final List zzc;

    public /* synthetic */ zzfgb(zzfgl zzfglVar, Object obj, List list, zzfgk zzfgkVar) {
        this.zza = zzfglVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfgj zza(Callable callable) {
        zzgdj zzgdjVar;
        List list = this.zzc;
        zzgcw zzb = zzgcy.zzb(list);
        ListenableFuture zza = zzb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzfga
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzcaa.zzg);
        zzfgl zzfglVar = this.zza;
        zzgdjVar = zzfglVar.zzb;
        return new zzfgj(zzfglVar, this.zzb, zza, list, zzb.zza(callable, zzgdjVar));
    }
}
