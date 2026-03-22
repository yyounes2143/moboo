package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgdz extends zzgco implements RunnableFuture {
    private volatile zzgdg zza;

    public zzgdz(zzgce zzgceVar) {
        this.zza = new zzgdx(this, zzgceVar);
    }

    public static zzgdz zze(Runnable runnable, Object obj) {
        return new zzgdz(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgdg zzgdgVar = this.zza;
        if (zzgdgVar != null) {
            zzgdgVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final String zza() {
        zzgdg zzgdgVar = this.zza;
        if (zzgdgVar != null) {
            String obj = zzgdgVar.toString();
            return "task=[" + obj + "]";
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final void zzb() {
        zzgdg zzgdgVar;
        if (zzo() && (zzgdgVar = this.zza) != null) {
            zzgdgVar.zzh();
        }
        this.zza = null;
    }

    public zzgdz(Callable callable) {
        this.zza = new zzgdy(this, callable);
    }
}
