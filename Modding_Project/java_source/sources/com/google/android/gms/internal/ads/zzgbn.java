package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgbm;
import com.google.android.gms.internal.ads.zzgbn;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgbn<V> extends zzgec implements ListenableFuture<V> {
    private static final zza zzbi;
    static final Object zze = new Object();
    static final zzgdh zzf = new zzgdh(zzgbm.class);
    static final boolean zzg;
    volatile zzgbm.zzd listenersField;
    volatile Object valueField;
    volatile zze waitersField;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public abstract class zza {
        public /* synthetic */ zza(zzgbr zzgbrVar) {
        }

        public abstract zzgbm.zzd zza(zzgbn zzgbnVar, zzgbm.zzd zzdVar);

        public abstract zze zzb(zzgbn zzgbnVar, zze zzeVar);

        public abstract void zzc(zze zzeVar, zze zzeVar2);

        public abstract void zzd(zze zzeVar, Thread thread);

        public abstract boolean zze(zzgbn zzgbnVar, zzgbm.zzd zzdVar, zzgbm.zzd zzdVar2);

        public abstract boolean zzf(zzgbn zzgbnVar, Object obj, Object obj2);

        public abstract boolean zzg(zzgbn zzgbnVar, zze zzeVar, zze zzeVar2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    final class zzb extends zza {
        private static final AtomicReferenceFieldUpdater<zze, Thread> zza = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "thread");
        private static final AtomicReferenceFieldUpdater<zze, zze> zzb = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "next");
        private static final AtomicReferenceFieldUpdater<? super zzgbn<?>, zze> zzc = AtomicReferenceFieldUpdater.newUpdater(zzgbn.class, zze.class, "waitersField");
        private static final AtomicReferenceFieldUpdater<? super zzgbn<?>, zzgbm.zzd> zzd = AtomicReferenceFieldUpdater.newUpdater(zzgbn.class, zzgbm.zzd.class, "listenersField");
        private static final AtomicReferenceFieldUpdater<? super zzgbn<?>, Object> zze = AtomicReferenceFieldUpdater.newUpdater(zzgbn.class, Object.class, "valueField");

        private zzb() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zzgbm.zzd zza(zzgbn zzgbnVar, zzgbm.zzd zzdVar) {
            return zzd.getAndSet(zzgbnVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zze zzb(zzgbn zzgbnVar, zze zzeVar) {
            return zzc.getAndSet(zzgbnVar, zzeVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zzb.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zza.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zze(zzgbn zzgbnVar, zzgbm.zzd zzdVar, zzgbm.zzd zzdVar2) {
            return zzgbo.zza(zzd, zzgbnVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzf(zzgbn zzgbnVar, Object obj, Object obj2) {
            return zzgbo.zza(zze, zzgbnVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzg(zzgbn zzgbnVar, zze zzeVar, zze zzeVar2) {
            return zzgbo.zza(zzc, zzgbnVar, zzeVar, zzeVar2);
        }

        public /* synthetic */ zzb(zzgbr zzgbrVar) {
            super(null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    final class zzc extends zza {
        private zzc() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zzgbm.zzd zza(zzgbn zzgbnVar, zzgbm.zzd zzdVar) {
            zzgbm.zzd zzdVar2;
            synchronized (zzgbnVar) {
                try {
                    zzdVar2 = zzgbnVar.listenersField;
                    if (zzdVar2 != zzdVar) {
                        zzgbnVar.listenersField = zzdVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zze zzb(zzgbn zzgbnVar, zze zzeVar) {
            zze zzeVar2;
            synchronized (zzgbnVar) {
                try {
                    zzeVar2 = zzgbnVar.waitersField;
                    if (zzeVar2 != zzeVar) {
                        zzgbnVar.waitersField = zzeVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zzeVar.next = zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zzeVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zze(zzgbn zzgbnVar, zzgbm.zzd zzdVar, zzgbm.zzd zzdVar2) {
            synchronized (zzgbnVar) {
                try {
                    if (zzgbnVar.listenersField == zzdVar) {
                        zzgbnVar.listenersField = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzf(zzgbn zzgbnVar, Object obj, Object obj2) {
            synchronized (zzgbnVar) {
                try {
                    if (zzgbnVar.valueField == obj) {
                        zzgbnVar.valueField = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzg(zzgbn zzgbnVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzgbnVar) {
                try {
                    if (zzgbnVar.waitersField == zzeVar) {
                        zzgbnVar.waitersField = zzeVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public /* synthetic */ zzc(zzgbr zzgbrVar) {
            super(null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    final class zzd extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;
        public static final /* synthetic */ int zzg = 0;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.google.android.gms.internal.ads.zzgbq
                    @Override // java.security.PrivilegedExceptionAction
                    public final Object run() {
                        Field[] declaredFields;
                        int i = zzgbn.zzd.zzg;
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            }
            try {
                zzc = unsafe.objectFieldOffset(zzgbn.class.getDeclaredField("waitersField"));
                zzb = unsafe.objectFieldOffset(zzgbn.class.getDeclaredField("listenersField"));
                zzd = unsafe.objectFieldOffset(zzgbn.class.getDeclaredField("valueField"));
                zze = unsafe.objectFieldOffset(zze.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zze.class.getDeclaredField("next"));
                zza = unsafe;
            } catch (NoSuchFieldException e2) {
                throw new RuntimeException(e2);
            }
        }

        private zzd() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zzgbm.zzd zza(zzgbn zzgbnVar, zzgbm.zzd zzdVar) {
            zzgbm.zzd zzdVar2;
            do {
                zzdVar2 = zzgbnVar.listenersField;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zze(zzgbnVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final zze zzb(zzgbn zzgbnVar, zze zzeVar) {
            zze zzeVar2;
            do {
                zzeVar2 = zzgbnVar.waitersField;
                if (zzeVar == zzeVar2) {
                    break;
                }
            } while (!zzg(zzgbnVar, zzeVar2, zzeVar));
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zza.putObject(zzeVar, zzf, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zza.putObject(zzeVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zze(zzgbn zzgbnVar, zzgbm.zzd zzdVar, zzgbm.zzd zzdVar2) {
            return zzgbp.zza(zza, zzgbnVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzf(zzgbn zzgbnVar, Object obj, Object obj2) {
            return zzgbp.zza(zza, zzgbnVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgbn.zza
        public final boolean zzg(zzgbn zzgbnVar, zze zzeVar, zze zzeVar2) {
            return zzgbp.zza(zza, zzgbnVar, zzc, zzeVar, zzeVar2);
        }

        public /* synthetic */ zzd(zzgbr zzgbrVar) {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zze {
        static final zze zza = new zze(false);
        volatile zze next;
        volatile Thread thread;

        public zze(boolean z) {
        }

        public zze() {
            zzgbn.zzs(this, Thread.currentThread());
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzcVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        zzg = z;
        String property = System.getProperty("java.runtime.name", "");
        if (property != null && !property.contains("Android")) {
            try {
                zzcVar = new zzb(null);
            } catch (NoClassDefFoundError unused2) {
                zzcVar = new zzc(null);
            }
        } else {
            try {
                zzcVar = new zzd(null);
            } catch (Error | Exception e) {
                try {
                    zzcVar = new zzb(null);
                    th = null;
                    th2 = e;
                } catch (Error | Exception e2) {
                    th = e2;
                    th2 = e;
                    zzcVar = new zzc(null);
                }
            }
        }
        th = null;
        th2 = null;
        zzbi = zzcVar;
        if (th != null) {
            zzgdh zzgdhVar = zzf;
            Logger zza2 = zzgdhVar.zza();
            Level level = Level.SEVERE;
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzgdhVar.zza().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    private final void zza(zze zzeVar) {
        zzeVar.thread = null;
        while (true) {
            zze zzeVar2 = this.waitersField;
            if (zzeVar2 != zze.zza) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.next;
                    if (zzeVar2.thread != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.next = zzeVar4;
                        if (zzeVar3.thread == null) {
                            break;
                        }
                    } else if (!zzbi.zzg(this, zzeVar2, zzeVar4)) {
                        break;
                    }
                    zzeVar2 = zzeVar4;
                }
                return;
            }
            return;
        }
    }

    public static /* synthetic */ void zzs(zze zzeVar, Thread thread) {
        zzbi.zzd(zzeVar, thread);
    }

    public static boolean zzv(zzgbn zzgbnVar, Object obj, Object obj2) {
        return zzbi.zzf(zzgbnVar, obj, obj2);
    }

    public final zzgbm.zzd zzp(zzgbm.zzd zzdVar) {
        return zzbi.zza(this, zzdVar);
    }

    public final Object zzq() throws InterruptedException, ExecutionException {
        boolean z;
        Object obj;
        boolean z2;
        if (!Thread.interrupted()) {
            Object obj2 = this.valueField;
            if (obj2 != null) {
                z = true;
            } else {
                z = false;
            }
            if (z & zzgbm.zzm(obj2)) {
                return zzgbm.zzh(obj2);
            }
            zze zzeVar = this.waitersField;
            if (zzeVar != zze.zza) {
                zze zzeVar2 = new zze();
                do {
                    zza zzaVar = zzbi;
                    zzaVar.zzc(zzeVar2, zzeVar);
                    if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.valueField;
                                if (obj != null) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                            } else {
                                zza(zzeVar2);
                                throw new InterruptedException();
                            }
                        } while (!(z2 & zzgbm.zzm(obj)));
                        return zzgbm.zzh(obj);
                    }
                    zzeVar = this.waitersField;
                } while (zzeVar != zze.zza);
                Object obj3 = this.valueField;
                Objects.requireNonNull(obj3);
                return zzgbm.zzh(obj3);
            }
            Object obj32 = this.valueField;
            Objects.requireNonNull(obj32);
            return zzgbm.zzh(obj32);
        }
        throw new InterruptedException();
    }

    public final Object zzr(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        boolean z;
        long j2;
        boolean z2;
        boolean z3;
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.valueField;
            boolean z4 = true;
            if (obj != null) {
                z = true;
            } else {
                z = false;
            }
            if (z & zzgbm.zzm(obj)) {
                return zzgbm.zzh(obj);
            }
            if (nanos > 0) {
                j2 = System.nanoTime() + nanos;
            } else {
                j2 = 0;
            }
            if (nanos >= 1000) {
                zze zzeVar = this.waitersField;
                if (zzeVar != zze.zza) {
                    zze zzeVar2 = new zze();
                    do {
                        zza zzaVar = zzbi;
                        zzaVar.zzc(zzeVar2, zzeVar);
                        if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.valueField;
                                    if (obj2 != null) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (z3 & zzgbm.zzm(obj2)) {
                                        return zzgbm.zzh(obj2);
                                    }
                                    nanos = j2 - System.nanoTime();
                                } else {
                                    zza(zzeVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zza(zzeVar2);
                        } else {
                            zzeVar = this.waitersField;
                        }
                    } while (zzeVar != zze.zza);
                    Object obj3 = this.valueField;
                    Objects.requireNonNull(obj3);
                    return zzgbm.zzh(obj3);
                }
                Object obj32 = this.valueField;
                Objects.requireNonNull(obj32);
                return zzgbm.zzh(obj32);
            }
            while (nanos > 0) {
                Object obj4 = this.valueField;
                if (obj4 != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 & zzgbm.zzm(obj4)) {
                    return zzgbm.zzh(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = j2 - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String obj5 = toString();
            String obj6 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj6.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j3 = -nanos;
                long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                long nanos2 = j3 - timeUnit.toNanos(convert);
                int i = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                if (i != 0 && nanos2 <= 1000) {
                    z4 = false;
                }
                if (i > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z4) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z4) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + obj5);
        }
        throw new InterruptedException();
    }

    public final void zzt() {
        for (zze zzb2 = zzbi.zzb(this, zze.zza); zzb2 != null; zzb2 = zzb2.next) {
            Thread thread = zzb2.thread;
            if (thread != null) {
                zzb2.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    public final boolean zzu(zzgbm.zzd zzdVar, zzgbm.zzd zzdVar2) {
        return zzbi.zze(this, zzdVar, zzdVar2);
    }
}
