package com.applovin.impl;

import java.util.Timer;
import java.util.TimerTask;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t6 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3754a;
    private Timer b;
    private long c;
    private long d;
    private long e;
    private boolean f;
    private final Runnable g;
    private long h;
    private final Object i = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                t6.this.g.run();
                synchronized (t6.this.i) {
                    try {
                        if (!t6.this.f) {
                            t6.this.b = null;
                        } else {
                            t6.this.c = System.currentTimeMillis();
                            t6 t6Var = t6.this;
                            t6Var.d = t6Var.e;
                        }
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    if (t6.this.f3754a != null) {
                        t6.this.f3754a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            t6.this.f3754a.O().a("Timer", "Encountered error while executing timed task", th);
                        }
                        t6.this.f3754a.E().a("Timer", "executingTimedTask", th);
                    }
                    synchronized (t6.this.i) {
                        try {
                            if (!t6.this.f) {
                                t6.this.b = null;
                            } else {
                                t6.this.c = System.currentTimeMillis();
                                t6 t6Var2 = t6.this;
                                t6Var2.d = t6Var2.e;
                            }
                        } finally {
                        }
                    }
                } catch (Throwable th2) {
                    synchronized (t6.this.i) {
                        try {
                            if (!t6.this.f) {
                                t6.this.b = null;
                            } else {
                                t6.this.c = System.currentTimeMillis();
                                t6 t6Var3 = t6.this;
                                t6Var3.d = t6Var3.e;
                            }
                            throw th2;
                        } finally {
                        }
                    }
                }
            }
        }
    }

    private t6(com.applovin.impl.sdk.k kVar, Runnable runnable) {
        this.f3754a = kVar;
        this.g = runnable;
    }

    public long c() {
        if (this.b != null) {
            return this.d - (System.currentTimeMillis() - this.c);
        }
        return this.d - this.h;
    }

    public void d() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                timer.cancel();
                this.h = Math.max(1L, System.currentTimeMillis() - this.c);
                this.b = null;
            }
        }
    }

    public void e() {
        t6 t6Var;
        synchronized (this.i) {
            try {
                try {
                    long j = this.h;
                    if (j > 0) {
                        try {
                            long j2 = this.d - j;
                            this.d = j2;
                            if (j2 < 0) {
                                this.d = 0L;
                            }
                            this.b = new Timer();
                            t6Var = this;
                        } catch (Throwable th) {
                            th = th;
                            t6Var = this;
                        }
                        try {
                            t6Var.a(b(), this.d, this.f, this.e);
                            t6Var.c = System.currentTimeMillis();
                            t6Var.h = 0L;
                        } catch (Throwable th2) {
                            th = th2;
                            com.applovin.impl.sdk.k kVar = t6Var.f3754a;
                            if (kVar != null) {
                                kVar.O();
                                if (com.applovin.impl.sdk.o.a()) {
                                    t6Var.f3754a.O();
                                    if (com.applovin.impl.sdk.o.a()) {
                                        t6Var.f3754a.O().a("Timer", "Encountered error while resuming timer", th);
                                    }
                                }
                            }
                            t6Var.h = 0L;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        }
    }

    private TimerTask b() {
        return new a();
    }

    public static t6 a(long j, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return a(j, false, kVar, runnable);
    }

    public static t6 a(long j, boolean z, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
        } else if (runnable != null) {
            t6 t6Var = new t6(kVar, runnable);
            t6Var.c = System.currentTimeMillis();
            t6Var.d = j;
            t6Var.f = z;
            t6Var.e = j;
            try {
                t6Var.b = new Timer();
                t6Var.a(t6Var.b(), j, z, t6Var.e);
                return t6Var;
            } catch (OutOfMemoryError e) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("Timer", "Failed to create timer due to OOM error", e);
                }
                return t6Var;
            }
        } else {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        }
    }

    public void a() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                timer.cancel();
                this.b = null;
                this.h = 0L;
            }
        }
    }

    private void a(TimerTask timerTask, long j, boolean z, long j2) {
        if (z) {
            this.b.schedule(timerTask, j, j2);
        } else {
            this.b.schedule(timerTask, j);
        }
    }
}
