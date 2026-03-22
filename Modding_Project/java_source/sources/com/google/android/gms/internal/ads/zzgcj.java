package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcj extends zzgck {
    final /* synthetic */ zzgcl zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgcj(zzgcl zzgclVar, Callable callable, Executor executor) {
        super(zzgclVar, executor);
        this.zza = zzgclVar;
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgdg
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgck
    public final void zzc(Object obj) {
        this.zza.zzc(obj);
    }
}
