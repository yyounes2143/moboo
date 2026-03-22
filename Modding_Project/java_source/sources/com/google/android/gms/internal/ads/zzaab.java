package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaab implements zzaac {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zzdk zzb;

    public zzaab(Executor executor, zzdk zzdkVar) {
        this.zza = executor;
        this.zzb = zzdkVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.execute(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzaac
    public final void zza() {
        this.zzb.zza(this.zza);
    }
}
