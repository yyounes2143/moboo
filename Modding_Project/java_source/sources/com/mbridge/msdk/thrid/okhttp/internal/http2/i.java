package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okhttp.internal.http2.c;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class i {
    static final /* synthetic */ boolean l = true;

    /* renamed from: a  reason: collision with root package name */
    long f9591a = 0;
    long b;
    final int c;
    final g d;
    private final Deque<p> e;
    private boolean f;
    private final b g;
    final a h;
    final c i;
    final c j;
    com.mbridge.msdk.thrid.okhttp.internal.http2.b k;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class c extends com.mbridge.msdk.thrid.okio.a {
        public c() {
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        public IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        public void j() {
            i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
            i.this.d.l();
        }

        public void k() throws IOException {
            if (!i()) {
                return;
            }
            throw b((IOException) null);
        }
    }

    public i(int i, g gVar, boolean z, boolean z2, @Nullable p pVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.e = arrayDeque;
        this.i = new c();
        this.j = new c();
        this.k = null;
        if (gVar != null) {
            this.c = i;
            this.d = gVar;
            this.b = gVar.u.c();
            b bVar = new b(gVar.t.c());
            this.g = bVar;
            a aVar = new a();
            this.h = aVar;
            bVar.e = z2;
            aVar.c = z;
            if (pVar != null) {
                arrayDeque.add(pVar);
            }
            if (f() && pVar != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            if (f() || pVar != null) {
                return;
            }
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
        throw new NullPointerException("connection == null");
    }

    public static /* synthetic */ c.a b(i iVar) {
        iVar.getClass();
        return null;
    }

    public int c() {
        return this.c;
    }

    public r d() {
        synchronized (this) {
            try {
                if (!this.f && !f()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.h;
    }

    public s e() {
        return this.g;
    }

    public boolean f() {
        boolean z;
        if ((this.c & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.d.f9586a == z) {
            return true;
        }
        return false;
    }

    public synchronized boolean g() {
        try {
            if (this.k != null) {
                return false;
            }
            b bVar = this.g;
            if (!bVar.e) {
                if (bVar.d) {
                }
                return true;
            }
            a aVar = this.h;
            if (aVar.c || aVar.b) {
                if (this.f) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public t h() {
        return this.i;
    }

    public void i() {
        boolean g;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.g.e = true;
            g = g();
            notifyAll();
        }
        if (!g) {
            this.d.c(this.c);
        }
    }

    public synchronized p j() throws IOException {
        this.i.h();
        while (this.e.isEmpty() && this.k == null) {
            k();
        }
        this.i.k();
        if (!this.e.isEmpty()) {
        } else {
            throw new n(this.k);
        }
        return this.e.removeFirst();
    }

    public void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.j;
    }

    private boolean b(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (l || !Thread.holdsLock(this)) {
            synchronized (this) {
                try {
                    if (this.k != null) {
                        return false;
                    }
                    if (this.g.e && this.h.c) {
                        return false;
                    }
                    this.k = bVar;
                    notifyAll();
                    this.d.c(this.c);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new AssertionError();
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        if (b(bVar)) {
            this.d.b(this.c, bVar);
        }
    }

    public void c(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (b(bVar)) {
            this.d.c(this.c, bVar);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class a implements r, AutoCloseable {
        static final /* synthetic */ boolean e = true;

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f9592a = new com.mbridge.msdk.thrid.okio.c();
        boolean b;
        boolean c;

        public a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f9592a.a(cVar, j);
            while (this.f9592a.size() >= 16384) {
                a(false);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return i.this.j;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                try {
                    if (this.b) {
                        return;
                    }
                    if (!i.this.h.c) {
                        if (this.f9592a.size() > 0) {
                            while (this.f9592a.size() > 0) {
                                a(true);
                            }
                        } else {
                            i iVar = i.this;
                            iVar.d.a(iVar.c, true, (com.mbridge.msdk.thrid.okio.c) null, 0L);
                        }
                    }
                    synchronized (i.this) {
                        this.b = true;
                    }
                    i.this.d.flush();
                    i.this.a();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (!e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f9592a.size() > 0) {
                a(false);
                i.this.d.flush();
            }
        }

        private void a(boolean z) throws IOException {
            i iVar;
            long min;
            i iVar2;
            synchronized (i.this) {
                i.this.j.h();
                while (true) {
                    iVar = i.this;
                    if (iVar.b > 0 || this.c || this.b || iVar.k != null) {
                        break;
                    }
                    iVar.k();
                }
                iVar.j.k();
                i.this.b();
                min = Math.min(i.this.b, this.f9592a.size());
                iVar2 = i.this;
                iVar2.b -= min;
            }
            iVar2.j.h();
            try {
                i iVar3 = i.this;
                iVar3.d.a(iVar3.c, z && min == this.f9592a.size(), this.f9592a, min);
                i.this.j.k();
            } catch (Throwable th) {
                i.this.j.k();
                throw th;
            }
        }
    }

    public void a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        boolean g;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f = true;
            this.e.add(com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
            g = g();
            notifyAll();
        }
        if (g) {
            return;
        }
        this.d.c(this.c);
    }

    public synchronized void d(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (this.k == null) {
            this.k = bVar;
            notifyAll();
        }
    }

    public void a(com.mbridge.msdk.thrid.okio.e eVar, int i) throws IOException {
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.g.a(eVar, i);
    }

    public void b() throws IOException {
        a aVar = this.h;
        if (!aVar.b) {
            if (!aVar.c) {
                if (this.k != null) {
                    throw new n(this.k);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public void a() throws IOException {
        boolean z;
        boolean g;
        if (!l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                b bVar = this.g;
                if (!bVar.e && bVar.d) {
                    a aVar = this.h;
                    if (!aVar.c) {
                        if (aVar.b) {
                        }
                    }
                    z = true;
                    g = g();
                }
                z = false;
                g = g();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
        } else if (g) {
        } else {
            this.d.c(this.c);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class b implements s, AutoCloseable {
        static final /* synthetic */ boolean g = true;

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f9593a = new com.mbridge.msdk.thrid.okio.c();
        private final com.mbridge.msdk.thrid.okio.c b = new com.mbridge.msdk.thrid.okio.c();
        private final long c;
        boolean d;
        boolean e;

        public b(long j) {
            this.c = j;
        }

        private void f(long j) {
            if (!g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            i.this.d.g(j);
        }

        public void a(com.mbridge.msdk.thrid.okio.e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            long j2;
            if (!g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j > 0) {
                synchronized (i.this) {
                    z = this.e;
                    z2 = false;
                    if (this.b.size() + j > this.c) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    eVar.skip(j);
                    i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.skip(j);
                    return;
                } else {
                    long b = eVar.b(this.f9593a, j);
                    if (b != -1) {
                        j -= b;
                        synchronized (i.this) {
                            try {
                                if (this.d) {
                                    j2 = this.f9593a.size();
                                    this.f9593a.k();
                                } else {
                                    if (this.b.size() == 0) {
                                        z2 = true;
                                    }
                                    this.b.a(this.f9593a);
                                    if (z2) {
                                        i.this.notifyAll();
                                    }
                                    j2 = 0;
                                }
                            } finally {
                            }
                        }
                        if (j2 > 0) {
                            f(j2);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
            r12 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
            r11.f.i.k();
         */
        @Override // com.mbridge.msdk.thrid.okio.s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long b(com.mbridge.msdk.thrid.okio.c r12, long r13) throws java.io.IOException {
            /*
                r11 = this;
                r0 = 0
                int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
                if (r2 < 0) goto Lb3
            L6:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r2 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this
                monitor-enter(r2)
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r3 = r3.i     // Catch: java.lang.Throwable -> L85
                r3.h()     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.b r4 = r3.k     // Catch: java.lang.Throwable -> L2c
                if (r4 == 0) goto L17
                goto L18
            L17:
                r4 = 0
            L18:
                boolean r5 = r11.d     // Catch: java.lang.Throwable -> L2c
                if (r5 != 0) goto La1
                java.util.Deque r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.a(r3)     // Catch: java.lang.Throwable -> L2c
                boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L2c
                if (r3 != 0) goto L2f
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i.b(r3)     // Catch: java.lang.Throwable -> L2c
                goto L2f
            L2c:
                r12 = move-exception
                goto La9
            L2f:
                com.mbridge.msdk.thrid.okio.c r3 = r11.b     // Catch: java.lang.Throwable -> L2c
                long r5 = r3.size()     // Catch: java.lang.Throwable -> L2c
                int r3 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                r5 = -1
                if (r3 <= 0) goto L71
                com.mbridge.msdk.thrid.okio.c r3 = r11.b     // Catch: java.lang.Throwable -> L2c
                long r7 = r3.size()     // Catch: java.lang.Throwable -> L2c
                long r13 = java.lang.Math.min(r13, r7)     // Catch: java.lang.Throwable -> L2c
                long r12 = r3.b(r12, r13)     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                long r7 = r14.f9591a     // Catch: java.lang.Throwable -> L2c
                long r7 = r7 + r12
                r14.f9591a = r7     // Catch: java.lang.Throwable -> L2c
                if (r4 != 0) goto L88
                com.mbridge.msdk.thrid.okhttp.internal.http2.g r14 = r14.d     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.m r14 = r14.t     // Catch: java.lang.Throwable -> L2c
                int r14 = r14.c()     // Catch: java.lang.Throwable -> L2c
                int r14 = r14 / 2
                long r9 = (long) r14     // Catch: java.lang.Throwable -> L2c
                int r14 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r14 < 0) goto L88
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.g r3 = r14.d     // Catch: java.lang.Throwable -> L2c
                int r7 = r14.c     // Catch: java.lang.Throwable -> L2c
                long r8 = r14.f9591a     // Catch: java.lang.Throwable -> L2c
                r3.a(r7, r8)     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                r14.f9591a = r0     // Catch: java.lang.Throwable -> L2c
                goto L88
            L71:
                boolean r3 = r11.e     // Catch: java.lang.Throwable -> L2c
                if (r3 != 0) goto L87
                if (r4 != 0) goto L87
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L2c
                r3.k()     // Catch: java.lang.Throwable -> L2c
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r3 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r3 = r3.i     // Catch: java.lang.Throwable -> L85
                r3.k()     // Catch: java.lang.Throwable -> L85
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                goto L6
            L85:
                r12 = move-exception
                goto Lb1
            L87:
                r12 = r5
            L88:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r14 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r14 = r14.i     // Catch: java.lang.Throwable -> L85
                r14.k()     // Catch: java.lang.Throwable -> L85
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r14 == 0) goto L98
                r11.f(r12)
                return r12
            L98:
                if (r4 != 0) goto L9b
                return r5
            L9b:
                com.mbridge.msdk.thrid.okhttp.internal.http2.n r12 = new com.mbridge.msdk.thrid.okhttp.internal.http2.n
                r12.<init>(r4)
                throw r12
            La1:
                java.io.IOException r12 = new java.io.IOException     // Catch: java.lang.Throwable -> L2c
                java.lang.String r13 = "stream closed"
                r12.<init>(r13)     // Catch: java.lang.Throwable -> L2c
                throw r12     // Catch: java.lang.Throwable -> L2c
            La9:
                com.mbridge.msdk.thrid.okhttp.internal.http2.i r13 = com.mbridge.msdk.thrid.okhttp.internal.http2.i.this     // Catch: java.lang.Throwable -> L85
                com.mbridge.msdk.thrid.okhttp.internal.http2.i$c r13 = r13.i     // Catch: java.lang.Throwable -> L85
                r13.k()     // Catch: java.lang.Throwable -> L85
                throw r12     // Catch: java.lang.Throwable -> L85
            Lb1:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L85
                throw r12
            Lb3:
                java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "byteCount < 0: "
                r0.append(r1)
                r0.append(r13)
                java.lang.String r13 = r0.toString()
                r12.<init>(r13)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.i.b.b(com.mbridge.msdk.thrid.okio.c, long):long");
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long size;
            synchronized (i.this) {
                try {
                    this.d = true;
                    size = this.b.size();
                    this.b.k();
                    if (!i.this.e.isEmpty()) {
                        i.b(i.this);
                    }
                    i.this.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (size > 0) {
                f(size);
            }
            i.this.a();
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return i.this.i;
        }
    }

    public void a(long j) {
        this.b += j;
        if (j > 0) {
            notifyAll();
        }
    }
}
