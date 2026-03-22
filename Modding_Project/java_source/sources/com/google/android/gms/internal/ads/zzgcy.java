package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcy extends zzgda {
    public static zzgcw zza(Iterable iterable) {
        return new zzgcw(false, zzfyc.zzk(iterable), null);
    }

    public static zzgcw zzb(Iterable iterable) {
        return new zzgcw(true, zzfyc.zzk(iterable), null);
    }

    @SafeVarargs
    public static zzgcw zzc(ListenableFuture... listenableFutureArr) {
        return new zzgcw(true, zzfyc.zzm(listenableFutureArr), null);
    }

    public static ListenableFuture zzd(Iterable iterable) {
        return new zzgcg(zzfyc.zzk(iterable), true);
    }

    public static ListenableFuture zze(ListenableFuture listenableFuture, Class cls, zzfur zzfurVar, Executor executor) {
        int i = zzgbl.zzd;
        zzgbk zzgbkVar = new zzgbk(listenableFuture, cls, zzfurVar);
        listenableFuture.addListener(zzgbkVar, zzgdq.zzd(executor, zzgbkVar));
        return zzgbkVar;
    }

    public static ListenableFuture zzf(ListenableFuture listenableFuture, Class cls, zzgcf zzgcfVar, Executor executor) {
        int i = zzgbl.zzd;
        zzgbj zzgbjVar = new zzgbj(listenableFuture, cls, zzgcfVar);
        listenableFuture.addListener(zzgbjVar, zzgdq.zzd(executor, zzgbjVar));
        return zzgbjVar;
    }

    public static ListenableFuture zzg(Throwable th) {
        th.getClass();
        return new zzgdb(th);
    }

    public static ListenableFuture zzh(Object obj) {
        if (obj == null) {
            return zzgdc.zza;
        }
        return new zzgdc(obj);
    }

    public static ListenableFuture zzi() {
        return zzgdc.zza;
    }

    public static ListenableFuture zzj(Callable callable, Executor executor) {
        zzgdz zzgdzVar = new zzgdz(callable);
        executor.execute(zzgdzVar);
        return zzgdzVar;
    }

    public static ListenableFuture zzk(zzgce zzgceVar, Executor executor) {
        zzgdz zzgdzVar = new zzgdz(zzgceVar);
        executor.execute(zzgdzVar);
        return zzgdzVar;
    }

    @SafeVarargs
    public static ListenableFuture zzl(ListenableFuture... listenableFutureArr) {
        return new zzgcg(zzfyc.zzm(listenableFutureArr), false);
    }

    public static ListenableFuture zzm(ListenableFuture listenableFuture, zzfur zzfurVar, Executor executor) {
        int i = zzgbv.zzc;
        zzgbu zzgbuVar = new zzgbu(listenableFuture, zzfurVar);
        listenableFuture.addListener(zzgbuVar, zzgdq.zzd(executor, zzgbuVar));
        return zzgbuVar;
    }

    public static ListenableFuture zzn(ListenableFuture listenableFuture, zzgcf zzgcfVar, Executor executor) {
        int i = zzgbv.zzc;
        zzgbt zzgbtVar = new zzgbt(listenableFuture, zzgcfVar);
        listenableFuture.addListener(zzgbtVar, zzgdq.zzd(executor, zzgbtVar));
        return zzgbtVar;
    }

    public static ListenableFuture zzo(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        return zzgdw.zzf(listenableFuture, j, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) throws ExecutionException {
        if (future.isDone()) {
            return zzgeb.zza(future);
        }
        throw new IllegalStateException(zzfvt.zzb("Future was expected to be done: %s", future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgeb.zza(future);
        } catch (ExecutionException e) {
            if (e.getCause() instanceof Error) {
                throw new zzgcn((Error) e.getCause());
            }
            throw new zzgea(e.getCause());
        }
    }

    public static void zzr(ListenableFuture listenableFuture, zzgcu zzgcuVar, Executor executor) {
        zzgcuVar.getClass();
        listenableFuture.addListener(new zzgcv(listenableFuture, zzgcuVar), executor);
    }
}
