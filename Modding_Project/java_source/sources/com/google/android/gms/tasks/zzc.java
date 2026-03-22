package com.google.android.gms.tasks;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzc implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzd zzb;

    public zzc(zzd zzdVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzdVar);
        this.zzb = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.zza;
        if (task.isCanceled()) {
            this.zzb.zzd().zze();
            return;
        }
        try {
            this.zzb.zzd().zza(this.zzb.zzc().then(task));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.zzd().zzc((Exception) e.getCause());
                return;
            }
            this.zzb.zzd().zzc(e);
        } catch (Exception e2) {
            this.zzb.zzd().zzc(e2);
        }
    }
}
