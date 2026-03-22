package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class a extends t {
    private static final long h;
    private static final long i;
    @Nullable
    static a j;
    private boolean e;
    @Nullable
    private a f;
    private long g;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.thrid.okio.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0168a implements r, AutoCloseable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r f9630a;

        public C0168a(r rVar) {
            this.f9630a = rVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            u.a(cVar.b, 0L, j);
            while (true) {
                long j2 = 0;
                if (j > 0) {
                    o oVar = cVar.f9633a;
                    while (true) {
                        if (j2 >= 65536) {
                            break;
                        }
                        j2 += oVar.c - oVar.b;
                        if (j2 >= j) {
                            j2 = j;
                            break;
                        }
                        oVar = oVar.f;
                    }
                    a.this.h();
                    try {
                        try {
                            this.f9630a.a(cVar, j2);
                            j -= j2;
                            a.this.a(true);
                        } catch (IOException e) {
                            throw a.this.a(e);
                        }
                    } catch (Throwable th) {
                        a.this.a(false);
                        throw th;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return a.this;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a.this.h();
            try {
                try {
                    this.f9630a.close();
                    a.this.a(true);
                } catch (IOException e) {
                    throw a.this.a(e);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            a.this.h();
            try {
                try {
                    this.f9630a.flush();
                    a.this.a(true);
                } catch (IOException e) {
                    throw a.this.a(e);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f9630a + ")";
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class c extends Thread {
        public c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
            r1.j();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.mbridge.msdk.thrid.okio.a> r0 = com.mbridge.msdk.thrid.okio.a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.mbridge.msdk.thrid.okio.a r1 = com.mbridge.msdk.thrid.okio.a.g()     // Catch: java.lang.Throwable -> Lb
                if (r1 != 0) goto Ld
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                goto L0
            Lb:
                r1 = move-exception
                goto L1b
            Ld:
                com.mbridge.msdk.thrid.okio.a r2 = com.mbridge.msdk.thrid.okio.a.j     // Catch: java.lang.Throwable -> Lb
                if (r1 != r2) goto L16
                r1 = 0
                com.mbridge.msdk.thrid.okio.a.j = r1     // Catch: java.lang.Throwable -> Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                return
            L16:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                r1.j()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L1b:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.a.c.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        h = millis;
        i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private static synchronized void a(a aVar, long j2, boolean z) {
        synchronized (a.class) {
            try {
                if (j == null) {
                    j = new a();
                    new c().start();
                }
                long nanoTime = System.nanoTime();
                int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                if (i2 != 0 && z) {
                    aVar.g = Math.min(j2, aVar.c() - nanoTime) + nanoTime;
                } else if (i2 != 0) {
                    aVar.g = j2 + nanoTime;
                } else if (z) {
                    aVar.g = aVar.c();
                } else {
                    throw new AssertionError();
                }
                long b2 = aVar.b(nanoTime);
                a aVar2 = j;
                while (true) {
                    a aVar3 = aVar2.f;
                    if (aVar3 == null || b2 < aVar3.b(nanoTime)) {
                        break;
                    }
                    aVar2 = aVar2.f;
                }
                aVar.f = aVar2.f;
                aVar2.f = aVar;
                if (aVar2 == j) {
                    a.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long b(long j2) {
        return this.g - j2;
    }

    @Nullable
    public static a g() throws InterruptedException {
        a aVar = j.f;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            a.class.wait(h);
            if (j.f != null || System.nanoTime() - nanoTime < i) {
                return null;
            }
            return j;
        }
        long b2 = aVar.b(System.nanoTime());
        if (b2 > 0) {
            long j2 = b2 / 1000000;
            a.class.wait(j2, (int) (b2 - (1000000 * j2)));
            return null;
        }
        j.f = aVar.f;
        aVar.f = null;
        return aVar;
    }

    public final void h() {
        if (!this.e) {
            long f = f();
            boolean d = d();
            if (f == 0 && !d) {
                return;
            }
            this.e = true;
            a(this, f, d);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final boolean i() {
        if (!this.e) {
            return false;
        }
        this.e = false;
        return a(this);
    }

    public IOException b(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class b implements s, AutoCloseable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f9631a;

        public b(s sVar) {
            this.f9631a = sVar;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            a.this.h();
            try {
                try {
                    long b = this.f9631a.b(cVar, j);
                    a.this.a(true);
                    return b;
                } catch (IOException e) {
                    throw a.this.a(e);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f9631a.close();
                    a.this.a(true);
                } catch (IOException e) {
                    throw a.this.a(e);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f9631a + ")";
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return a.this;
        }
    }

    public void j() {
    }

    private static synchronized boolean a(a aVar) {
        synchronized (a.class) {
            a aVar2 = j;
            while (aVar2 != null) {
                a aVar3 = aVar2.f;
                if (aVar3 == aVar) {
                    aVar2.f = aVar.f;
                    aVar.f = null;
                    return false;
                }
                aVar2 = aVar3;
            }
            return true;
        }
    }

    public final r a(r rVar) {
        return new C0168a(rVar);
    }

    public final s a(s sVar) {
        return new b(sVar);
    }

    public final void a(boolean z) throws IOException {
        if (i() && z) {
            throw b((IOException) null);
        }
    }

    public final IOException a(IOException iOException) throws IOException {
        return !i() ? iOException : b(iOException);
    }
}
