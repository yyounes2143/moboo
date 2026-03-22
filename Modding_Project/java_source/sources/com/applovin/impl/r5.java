package com.applovin.impl;

import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class r5 {
    private static final ExecutorService o = Executors.newFixedThreadPool(4);

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3524a;
    private final com.applovin.impl.sdk.o b;
    private final ScheduledThreadPoolExecutor c;
    private final ScheduledThreadPoolExecutor d;
    private final ScheduledThreadPoolExecutor e;
    private final ScheduledThreadPoolExecutor f;
    private final ScheduledThreadPoolExecutor g;
    private final ScheduledThreadPoolExecutor h;
    private final ScheduledThreadPoolExecutor i;
    private final Map j = new HashMap();
    private final List k = new ArrayList(5);
    private final Object l = new Object();
    private boolean m;
    private boolean n;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3525a;

        static {
            int[] iArr = new int[b.values().length];
            f3525a = iArr;
            try {
                iArr[b.CORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3525a[b.CACHING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3525a[b.MEDIATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3525a[b.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        CORE,
        CACHING,
        MEDIATION,
        TIMEOUT,
        OTHER
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final String f3527a;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class a implements Thread.UncaughtExceptionHandler {
            public a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                com.applovin.impl.sdk.o unused = r5.this.b;
                if (com.applovin.impl.sdk.o.a()) {
                    r5.this.b.a("TaskManager", "Caught unhandled exception", th);
                }
            }
        }

        public c(String str) {
            this.f3527a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.f3527a);
            thread.setDaemon(true);
            thread.setPriority(((Integer) r5.this.f3524a.a(l4.O)).intValue());
            thread.setUncaughtExceptionHandler(new a());
            return thread;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f3529a;
        private final String b;
        private final com.applovin.impl.sdk.o c;
        private final w4 d;
        private final b e;

        public d(com.applovin.impl.sdk.k kVar, w4 w4Var, b bVar) {
            this.f3529a = kVar;
            this.c = kVar.O();
            this.b = w4Var.c();
            this.d = w4Var;
            this.e = bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r6 = this;
                java.lang.String r0 = " queue finished task "
                com.applovin.impl.k0.a()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.sdk.k r1 = r6.f3529a     // Catch: java.lang.Throwable -> L26
                boolean r1 = r1.E0()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L38
                com.applovin.impl.w4 r1 = r6.d     // Catch: java.lang.Throwable -> L26
                boolean r1 = r1.d()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L16
                goto L38
            L16:
                boolean r1 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L28
                com.applovin.impl.sdk.o r1 = r6.c     // Catch: java.lang.Throwable -> L26
                java.lang.String r2 = r6.b     // Catch: java.lang.Throwable -> L26
                java.lang.String r3 = "Task re-scheduled..."
                r1.d(r2, r3)     // Catch: java.lang.Throwable -> L26
                goto L28
            L26:
                r1 = move-exception
                goto L83
            L28:
                com.applovin.impl.sdk.k r1 = r6.f3529a     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.r5 r1 = r1.q0()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.w4 r2 = r6.d     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.r5$b r3 = r6.e     // Catch: java.lang.Throwable -> L26
                r4 = 2000(0x7d0, double:9.88E-321)
                r1.a(r2, r3, r4)     // Catch: java.lang.Throwable -> L26
                goto L5b
            L38:
                com.applovin.impl.w4 r1 = r6.d     // Catch: java.lang.Throwable -> L26
                java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.sdk.k r3 = r6.f3529a     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.l4 r4 = com.applovin.impl.l4.w     // Catch: java.lang.Throwable -> L26
                java.lang.Object r3 = r3.a(r4)     // Catch: java.lang.Throwable -> L26
                java.lang.Long r3 = (java.lang.Long) r3     // Catch: java.lang.Throwable -> L26
                long r3 = r3.longValue()     // Catch: java.lang.Throwable -> L26
                java.util.concurrent.ScheduledFuture r1 = r1.b(r2, r3)     // Catch: java.lang.Throwable -> L26
                com.applovin.impl.w4 r2 = r6.d     // Catch: java.lang.Throwable -> L26
                r2.run()     // Catch: java.lang.Throwable -> L26
                if (r1 == 0) goto L5b
                r2 = 0
                r1.cancel(r2)     // Catch: java.lang.Throwable -> L26
            L5b:
                boolean r1 = com.applovin.impl.sdk.o.a()
                if (r1 == 0) goto Lc1
                com.applovin.impl.sdk.o r1 = r6.c
                java.lang.String r2 = r6.b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                com.applovin.impl.r5$b r4 = r6.e
                r3.append(r4)
                r3.append(r0)
                com.applovin.impl.w4 r0 = r6.d
                java.lang.String r0 = r0.c()
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r1.d(r2, r0)
                return
            L83:
                boolean r2 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L93
                if (r2 == 0) goto L95
                com.applovin.impl.sdk.o r2 = r6.c     // Catch: java.lang.Throwable -> L93
                java.lang.String r3 = r6.b     // Catch: java.lang.Throwable -> L93
                java.lang.String r4 = "Task failed execution"
                r2.a(r3, r4, r1)     // Catch: java.lang.Throwable -> L93
                goto L95
            L93:
                r1 = move-exception
                goto Lc2
            L95:
                com.applovin.impl.w4 r2 = r6.d     // Catch: java.lang.Throwable -> L93
                r2.a(r1)     // Catch: java.lang.Throwable -> L93
                boolean r1 = com.applovin.impl.sdk.o.a()
                if (r1 == 0) goto Lc1
                com.applovin.impl.sdk.o r1 = r6.c
                java.lang.String r2 = r6.b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                com.applovin.impl.r5$b r4 = r6.e
                r3.append(r4)
                r3.append(r0)
                com.applovin.impl.w4 r0 = r6.d
                java.lang.String r0 = r0.c()
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r1.d(r2, r0)
            Lc1:
                return
            Lc2:
                boolean r2 = com.applovin.impl.sdk.o.a()
                if (r2 == 0) goto Le9
                com.applovin.impl.sdk.o r2 = r6.c
                java.lang.String r3 = r6.b
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                com.applovin.impl.r5$b r5 = r6.e
                r4.append(r5)
                r4.append(r0)
                com.applovin.impl.w4 r0 = r6.d
                java.lang.String r0 = r0.c()
                r4.append(r0)
                java.lang.String r0 = r4.toString()
                r2.d(r3, r0)
            Le9:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.r5.d.run():void");
        }
    }

    public r5(com.applovin.impl.sdk.k kVar) {
        this.f3524a = kVar;
        this.b = kVar.O();
        this.n = ((Boolean) kVar.a(l4.R)).booleanValue();
        this.c = a("auxiliary_operations", ((Integer) kVar.a(l4.M)).intValue());
        this.d = a("shared_thread_pool", ((Integer) kVar.a(l4.L)).intValue());
        this.e = a("core", ((Integer) kVar.a(l4.S)).intValue());
        this.g = a("caching", ((Integer) kVar.a(l4.T)).intValue());
        this.h = a("mediation", ((Integer) kVar.a(l4.U)).intValue());
        this.f = a("timeout", ((Integer) kVar.a(l4.V)).intValue());
        this.i = a("other", ((Integer) kVar.a(l4.W)).intValue());
    }

    public Executor c() {
        if (this.n) {
            return this.e;
        }
        return this.d;
    }

    public boolean d() {
        return this.m;
    }

    public void e() {
        synchronized (this.l) {
            try {
                this.m = true;
                for (d dVar : this.k) {
                    a(dVar.d, dVar.e);
                }
                this.k.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f() {
        synchronized (this.l) {
            this.m = false;
        }
    }

    public void a(w4 w4Var, b bVar) {
        a(w4Var, bVar, 0L);
    }

    public ScheduledFuture b(w4 w4Var, b bVar, long j) {
        if (this.n) {
            return a(new d(this.f3524a, w4Var, bVar)).schedule(w4Var, j, TimeUnit.MILLISECONDS);
        }
        return this.c.schedule(w4Var, j, TimeUnit.MILLISECONDS);
    }

    public void a(w4 w4Var, b bVar, long j) {
        a(w4Var, bVar, j, false);
    }

    public void a(w4 w4Var, b bVar, long j, boolean z) {
        if (w4Var == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j >= 0) {
            d dVar = new d(this.f3524a, w4Var, bVar);
            if (!b(dVar)) {
                a(dVar, j, z);
                return;
            } else if (com.applovin.impl.sdk.o.a()) {
                this.b.d(w4Var.c(), "Task execution delayed until after init");
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("Invalid delay (millis) specified: " + j);
    }

    public ExecutorService b() {
        return this.n ? this.g : o;
    }

    private boolean b(d dVar) {
        if (dVar.d.d()) {
            return false;
        }
        synchronized (this.l) {
            try {
                if (this.m) {
                    return false;
                }
                this.k.add(dVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(Runnable runnable, b bVar) {
        if (this.n) {
            com.applovin.impl.sdk.k kVar = this.f3524a;
            d dVar = new d(kVar, new f6(kVar, "auxiliaryOperation", runnable), bVar);
            a(dVar).submit(dVar);
            return;
        }
        this.c.submit(runnable);
    }

    public ExecutorService a() {
        return this.n ? this.i : this.c;
    }

    public void a(w4 w4Var) {
        if (w4Var != null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.n ? this.e : this.d;
            try {
                if (z6.h()) {
                    scheduledThreadPoolExecutor.submit(new d(this.f3524a, w4Var, b.CORE));
                    return;
                }
                ScheduledFuture b2 = w4Var.b(Thread.currentThread(), ((Long) this.f3524a.a(l4.w)).longValue());
                w4Var.run();
                if (b2 != null) {
                    b2.cancel(false);
                    return;
                }
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.b.a(w4Var.c(), "Task failed execution", th);
                }
                w4Var.a(th);
                return;
            }
        }
        throw new IllegalArgumentException("No task specified");
    }

    public void a(w4 w4Var, a3 a3Var) {
        String b2 = a3Var.b();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) this.j.get(b2);
        if (scheduledThreadPoolExecutor == null) {
            scheduledThreadPoolExecutor = a(b2, 1);
            this.j.put(b2, scheduledThreadPoolExecutor);
        }
        scheduledThreadPoolExecutor.submit(new d(this.f3524a, w4Var, b.MEDIATION));
    }

    private void a(final d dVar, long j, boolean z) {
        final ScheduledThreadPoolExecutor a2 = this.n ? a(dVar) : this.d;
        if (j <= 0) {
            a2.submit(dVar);
        } else if (z) {
            c0.a(j, this.f3524a, new Runnable() { // from class: com.applovin.impl.Ooooooooooo
                @Override // java.lang.Runnable
                public final void run() {
                    a2.execute(dVar);
                }
            });
        } else {
            a2.schedule(dVar, j, TimeUnit.MILLISECONDS);
        }
    }

    private ScheduledThreadPoolExecutor a(d dVar) {
        int i = a.f3525a[dVar.e.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return this.i;
                    }
                    return this.f;
                }
                return this.h;
            }
            return this.g;
        }
        return this.e;
    }

    private ScheduledThreadPoolExecutor a(String str, int i) {
        return new ScheduledThreadPoolExecutor(i, new c(str));
    }
}
