package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgbm<V> extends zzgbn<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zza {
        static final zza zza;
        static final zza zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zzgbn.zzg) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zza(false, null);
            zza = new zza(true, null);
        }

        public zza(boolean z, Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzb<V> implements Runnable {
        final zzgbm<V> zza;
        final ListenableFuture<? extends V> zzb;

        public zzb(zzgbm zzgbmVar, ListenableFuture listenableFuture) {
            this.zza = zzgbmVar;
            this.zzb = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zza.valueField == this) {
                if (zzgbn.zzv(this.zza, this, zzgbm.zze(this.zzb))) {
                    zzgbm.zzx(this.zza, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzgbm.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        public zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzd {
        static final zzd zza = new zzd();
        zzd next;
        final Runnable zzb;
        final Executor zzc;

        public zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zze<V> extends ListenableFuture<V> {
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    abstract class zzf<V> extends zzgbm<V> implements zze<V> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zze(ListenableFuture listenableFuture) {
        Throwable zzi;
        if (listenableFuture instanceof zze) {
            Object obj = ((zzgbm) listenableFuture).valueField;
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                if (zzaVar.zzc) {
                    Throwable th = zzaVar.zzd;
                    obj = th != null ? new zza(false, th) : zza.zzb;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        } else if ((listenableFuture instanceof zzgec) && (zzi = ((zzgec) listenableFuture).zzi()) != null) {
            return new zzc(zzi);
        } else {
            boolean isCancelled = listenableFuture.isCancelled();
            if ((!zzgbn.zzg) & isCancelled) {
                zza zzaVar2 = zza.zzb;
                Objects.requireNonNull(zzaVar2);
                return zzaVar2;
            }
            try {
                Object zzf2 = zzf(listenableFuture);
                if (isCancelled) {
                    String valueOf = String.valueOf(listenableFuture);
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + valueOf));
                } else if (zzf2 == null) {
                    return zzgbn.zze;
                } else {
                    return zzf2;
                }
            } catch (Error | Exception e) {
                return new zzc(e);
            } catch (CancellationException e2) {
                if (!isCancelled) {
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(listenableFuture)), e2));
                }
                return new zza(false, e2);
            } catch (ExecutionException e3) {
                if (isCancelled) {
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(listenableFuture)), e3));
                }
                return new zzc(e3.getCause());
            }
        }
    }

    private static Object zzf(Future future) throws ExecutionException {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static Object zzh(Object obj) throws ExecutionException {
        if (!(obj instanceof zza)) {
            if (!(obj instanceof zzc)) {
                if (obj == zzgbn.zze) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzc) obj).zzb);
        }
        Throwable th = ((zza) obj).zzd;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static boolean zzm(Object obj) {
        if (!(obj instanceof zzb)) {
            return true;
        }
        return false;
    }

    private final void zzw(StringBuilder sb) {
        try {
            Object zzf2 = zzf(this);
            sb.append("SUCCESS, result=[");
            if (zzf2 == null) {
                sb.append(AbstractJsonLexerKt.NULL);
            } else if (zzf2 == this) {
                sb.append("this future");
            } else {
                sb.append(zzf2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(zzf2)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzx(zzgbm zzgbmVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            zzgbmVar.zzt();
            if (z) {
                zzgbmVar.zzk();
            }
            zzgbmVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zzp = zzgbmVar.zzp(zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zzp != null) {
                zzd zzdVar4 = zzp.next;
                zzp.next = zzdVar3;
                zzdVar3 = zzp;
                zzp = zzdVar4;
            }
            while (zzdVar3 != null) {
                Runnable runnable = zzdVar3.zzb;
                zzdVar = zzdVar3.next;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzb) {
                    zzb zzbVar = (zzb) runnable2;
                    zzgbmVar = zzbVar.zza;
                    if (zzgbmVar.valueField == zzbVar && zzgbn.zzv(zzgbmVar, zzbVar, zze(zzbVar.zzb))) {
                        break;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    Objects.requireNonNull(executor);
                    zzy(runnable2, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    private static void zzy(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger zza2 = zzgbn.zzf.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + valueOf + " with executor " + valueOf2, (Throwable) e);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfvc.zzc(runnable, "Runnable was null.");
        zzfvc.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listenersField) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (!zzu(zzdVar, zzdVar2)) {
                    zzdVar = this.listenersField;
                } else {
                    return;
                }
            } while (zzdVar != zzd.zza);
            zzy(runnable, executor);
        }
        zzy(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        zza zzaVar;
        boolean z3;
        Object obj = this.valueField;
        boolean z4 = obj instanceof zzb;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!(z4 | z2)) {
            return false;
        }
        if (zzgbn.zzg) {
            zzaVar = new zza(z, new CancellationException("Future.cancel() was called."));
        } else {
            if (z) {
                zzaVar = zza.zza;
            } else {
                zzaVar = zza.zzb;
            }
            Objects.requireNonNull(zzaVar);
        }
        zzgbm<V> zzgbmVar = this;
        boolean z5 = false;
        while (true) {
            if (zzgbn.zzv(zzgbmVar, obj, zzaVar)) {
                zzx(zzgbmVar, z);
                if (!(obj instanceof zzb)) {
                    break;
                }
                ListenableFuture<? extends V> listenableFuture = ((zzb) obj).zzb;
                if (listenableFuture instanceof zze) {
                    zzgbmVar = (zzgbm) listenableFuture;
                    obj = zzgbmVar.valueField;
                    if (obj == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!(z3 | (obj instanceof zzb))) {
                        return true;
                    }
                    z5 = true;
                } else {
                    listenableFuture.cancel(z);
                    break;
                }
            } else {
                obj = zzgbmVar.valueField;
                if (zzm(obj)) {
                    return z5;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return zzq();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.valueField instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        Object obj = this.valueField;
        boolean zzm = zzm(obj);
        if (obj != null) {
            z = true;
        } else {
            z = false;
        }
        return z & zzm;
    }

    public String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzw(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.valueField;
            if (obj instanceof zzb) {
                sb.append(", setFuture=[");
                ListenableFuture<? extends V> listenableFuture = ((zzb) obj).zzb;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
                } catch (Throwable th) {
                    zzgdr.zzb(th);
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    concat = zzfvt.zza(zza());
                } catch (Throwable th2) {
                    zzgdr.zzb(th2);
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (concat != null) {
                    sb.append(", info=[");
                    sb.append(concat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                zzw(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public String zza() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            return "remaining delay=[" + delay + " ms]";
        }
        return null;
    }

    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = zzgbn.zze;
        }
        if (!zzgbn.zzv(this, null, obj)) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    public boolean zzd(Throwable th) {
        th.getClass();
        if (!zzgbn.zzv(this, null, new zzc(th))) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgec
    public final Throwable zzi() {
        if (this instanceof zze) {
            Object obj = this.valueField;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzb;
            }
            return null;
        }
        return null;
    }

    public final void zzl(Future future) {
        boolean z;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            future.cancel(zzo());
        }
    }

    public final boolean zzn(ListenableFuture listenableFuture) {
        zzc zzcVar;
        listenableFuture.getClass();
        Object obj = this.valueField;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!zzgbn.zzv(this, null, zze(listenableFuture))) {
                    return false;
                }
                zzx(this, false);
                return true;
            }
            zzb zzbVar = new zzb(this, listenableFuture);
            if (zzgbn.zzv(this, null, zzbVar)) {
                try {
                    listenableFuture.addListener(zzbVar, zzgcm.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzgbn.zzv(this, zzbVar, zzcVar);
                }
                return true;
            }
            obj = this.valueField;
        }
        if (obj instanceof zza) {
            listenableFuture.cancel(((zza) obj).zzc);
        }
        return false;
    }

    public final boolean zzo() {
        Object obj = this.valueField;
        if ((obj instanceof zza) && ((zza) obj).zzc) {
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        return zzr(j, timeUnit);
    }

    public void zzb() {
    }

    public void zzk() {
    }
}
