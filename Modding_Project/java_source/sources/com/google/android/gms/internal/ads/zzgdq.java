package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgdq {
    public static zzgdj zza(ExecutorService executorService) {
        if (executorService instanceof zzgdj) {
            return (zzgdj) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new zzgdp((ScheduledExecutorService) executorService);
        }
        return new zzgdm(executorService);
    }

    public static zzgdk zzb(ScheduledExecutorService scheduledExecutorService) {
        return new zzgdp(scheduledExecutorService);
    }

    public static Executor zzc() {
        return zzgcm.INSTANCE;
    }

    public static Executor zzd(final Executor executor, final zzgbm zzgbmVar) {
        executor.getClass();
        if (executor == zzgcm.INSTANCE) {
            return executor;
        }
        return new Executor() { // from class: com.google.android.gms.internal.ads.zzgdl
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                zzgdq.zze(executor, zzgbmVar, runnable);
            }
        };
    }

    public static /* synthetic */ void zze(Executor executor, zzgbm zzgbmVar, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (RejectedExecutionException e) {
            zzgbmVar.zzd(e);
        }
    }
}
