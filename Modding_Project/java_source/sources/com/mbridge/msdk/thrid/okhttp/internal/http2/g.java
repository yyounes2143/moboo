package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okhttp.internal.http2.h;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class g implements Closeable, AutoCloseable {
    static final /* synthetic */ boolean A = true;
    private static final ExecutorService z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Http2Connection", true));

    /* renamed from: a  reason: collision with root package name */
    final boolean f9586a;
    final j b;
    final String d;
    int e;
    int f;
    private boolean g;
    private final ScheduledExecutorService h;
    private final ExecutorService i;
    final com.mbridge.msdk.thrid.okhttp.internal.http2.l j;
    long s;
    final m u;
    final Socket v;
    final com.mbridge.msdk.thrid.okhttp.internal.http2.j w;
    final l x;
    final Set<Integer> y;
    final Map<Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> c = new LinkedHashMap();
    private long k = 0;
    private long l = 0;
    private long m = 0;
    private long n = 0;
    private long o = 0;
    private long p = 0;
    private long q = 0;
    long r = 0;
    m t = new m();

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr, int i, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.b = i;
            this.c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.b(this.b, this.c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class b extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ long c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.b = i;
            this.c = j;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.w.a(this.b, this.c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
        public c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(false, 2, 0);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class d extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.b = i;
            this.c = list;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            if (g.this.j.a(this.b, this.c)) {
                try {
                    g.this.w.a(this.b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                    synchronized (g.this) {
                        g.this.y.remove(Integer.valueOf(this.b));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class e extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ List c;
        final /* synthetic */ boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.b = i;
            this.c = list;
            this.d = z;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean a2 = g.this.j.a(this.b, this.c, this.d);
            if (a2) {
                try {
                    g.this.w.a(this.b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (a2 || this.d) {
                synchronized (g.this) {
                    g.this.y.remove(Integer.valueOf(this.b));
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class f extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ com.mbridge.msdk.thrid.okio.c c;
        final /* synthetic */ int d;
        final /* synthetic */ boolean e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Object[] objArr, int i, com.mbridge.msdk.thrid.okio.c cVar, int i2, boolean z) {
            super(str, objArr);
            this.b = i;
            this.c = cVar;
            this.d = i2;
            this.e = z;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                boolean a2 = g.this.j.a(this.b, this.c, this.d, this.e);
                if (a2) {
                    g.this.w.a(this.b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                }
                if (a2 || this.e) {
                    synchronized (g.this) {
                        g.this.y.remove(Integer.valueOf(this.b));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.thrid.okhttp.internal.http2.g$g  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0166g extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final /* synthetic */ int b;
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0166g(String str, Object[] objArr, int i, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.b = i;
            this.c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.j.a(this.b, this.c);
            synchronized (g.this) {
                g.this.y.remove(Integer.valueOf(this.b));
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class i extends com.mbridge.msdk.thrid.okhttp.internal.b {
        public i() {
            super("OkHttp %s ping", g.this.d);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean z;
            synchronized (g.this) {
                if (g.this.l < g.this.k) {
                    z = true;
                } else {
                    g.e(g.this);
                    z = false;
                }
            }
            if (z) {
                g.this.h();
            } else {
                g.this.a(false, 1, 0);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class j {

        /* renamed from: a  reason: collision with root package name */
        public static final j f9588a = new a();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public static class a extends j {
            @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
            public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
                iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class k extends com.mbridge.msdk.thrid.okhttp.internal.b {
        final boolean b;
        final int c;
        final int d;

        public k(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", g.this.d, Integer.valueOf(i), Integer.valueOf(i2));
            this.b = z;
            this.c = i;
            this.d = i2;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(this.b, this.c, this.d);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class l extends com.mbridge.msdk.thrid.okhttp.internal.b implements h.b {
        final com.mbridge.msdk.thrid.okhttp.internal.http2.h b;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public class a extends com.mbridge.msdk.thrid.okhttp.internal.b {
            final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.i b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, Object[] objArr, com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) {
                super(str, objArr);
                this.b = iVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                try {
                    g.this.b.a(this.b);
                } catch (IOException e) {
                    com.mbridge.msdk.thrid.okhttp.internal.platform.g d = com.mbridge.msdk.thrid.okhttp.internal.platform.g.d();
                    d.a(4, "Http2Connection.Listener failure for " + g.this.d, e);
                    try {
                        this.b.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public class b extends com.mbridge.msdk.thrid.okhttp.internal.b {
            final /* synthetic */ boolean b;
            final /* synthetic */ m c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object[] objArr, boolean z, m mVar) {
                super(str, objArr);
                this.b = z;
                this.c = mVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                l.this.b(this.b, this.c);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
            public c(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                g gVar = g.this;
                gVar.b.a(gVar);
            }
        }

        public l(com.mbridge.msdk.thrid.okhttp.internal.http2.h hVar) {
            super("OkHttp %s", g.this.d);
            this.b = hVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            Throwable th;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.INTERNAL_ERROR;
            try {
                try {
                    this.b.a(this);
                    while (this.b.a(false, (h.b) this)) {
                    }
                    bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR;
                    try {
                        try {
                            g.this.a(bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                        } catch (IOException unused) {
                            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar3 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
                            g.this.a(bVar3, bVar3);
                            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            g.this.a(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th3) {
                th = th3;
                bVar = bVar2;
                g.this.a(bVar, bVar2);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b);
                throw th;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i, int i2, int i3, boolean z) {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z, int i, com.mbridge.msdk.thrid.okio.e eVar, int i2) throws IOException {
            if (g.this.b(i)) {
                g.this.a(i, eVar, i2, z);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i a2 = g.this.a(i);
            if (a2 == null) {
                g.this.c(i, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                long j = i2;
                g.this.g(j);
                eVar.skip(j);
                return;
            }
            a2.a(eVar, i2);
            if (z) {
                a2.i();
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z, int i, int i2, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            if (g.this.b(i)) {
                g.this.b(i, list, z);
                return;
            }
            synchronized (g.this) {
                try {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.i a2 = g.this.a(i);
                    if (a2 == null) {
                        if (g.this.g) {
                            return;
                        }
                        g gVar = g.this;
                        if (i <= gVar.e) {
                            return;
                        }
                        if (i % 2 == gVar.f % 2) {
                            return;
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i, g.this, false, z, com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
                        g gVar2 = g.this;
                        gVar2.e = i;
                        gVar2.c.put(Integer.valueOf(i), iVar);
                        g.z.execute(new a("OkHttp %s stream %d", new Object[]{g.this.d, Integer.valueOf(i)}, iVar));
                        return;
                    }
                    a2.a(list);
                    if (z) {
                        a2.i();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void b(boolean z, m mVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            long j;
            synchronized (g.this.w) {
                synchronized (g.this) {
                    int c2 = g.this.u.c();
                    if (z) {
                        g.this.u.a();
                    }
                    g.this.u.a(mVar);
                    int c3 = g.this.u.c();
                    iVarArr = null;
                    if (c3 == -1 || c3 == c2) {
                        j = 0;
                    } else {
                        j = c3 - c2;
                        if (!g.this.c.isEmpty()) {
                            iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.c.size()]);
                        }
                    }
                }
                try {
                    g gVar = g.this;
                    gVar.w.a(gVar.u);
                } catch (IOException unused) {
                    g.this.h();
                }
            }
            if (iVarArr != null) {
                for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(j);
                    }
                }
            }
            g.z.execute(new c("OkHttp %s settings", g.this.d));
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            if (g.this.b(i)) {
                g.this.a(i, bVar);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i c2 = g.this.c(i);
            if (c2 != null) {
                c2.d(bVar);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z, m mVar) {
            try {
                g.this.h.execute(new b("OkHttp %s ACK Settings", new Object[]{g.this.d}, z, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z, int i, int i2) {
            if (!z) {
                try {
                    g.this.h.execute(new k(true, i, i2));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (g.this) {
                try {
                    if (i == 1) {
                        g.c(g.this);
                    } else if (i == 2) {
                        g.h(g.this);
                    } else if (i == 3) {
                        g.i(g.this);
                        g.this.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.c.size()]);
                g.this.g = true;
            }
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                if (iVar.c() > i && iVar.f()) {
                    iVar.d(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                    g.this.c(iVar.c());
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i, long j) {
            if (i == 0) {
                synchronized (g.this) {
                    g gVar = g.this;
                    gVar.s += j;
                    gVar.notifyAll();
                }
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i a2 = g.this.a(i);
            if (a2 != null) {
                synchronized (a2) {
                    a2.a(j);
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i, int i2, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            g.this.a(i2, list);
        }
    }

    public g(h hVar) {
        int i2;
        m mVar = new m();
        this.u = mVar;
        this.y = new LinkedHashSet();
        this.j = hVar.f;
        boolean z2 = hVar.g;
        this.f9586a = z2;
        this.b = hVar.e;
        if (z2) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        this.f = i2;
        if (z2) {
            this.f = i2 + 2;
        }
        if (z2) {
            this.t.a(7, 16777216);
        }
        String str = hVar.b;
        this.d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Writer", str), false));
        this.h = scheduledThreadPoolExecutor;
        if (hVar.h != 0) {
            i iVar = new i();
            long j2 = hVar.h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, j2, j2, TimeUnit.MILLISECONDS);
        }
        this.i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Push Observer", str), true));
        mVar.a(7, 65535);
        mVar.a(5, 16384);
        this.s = mVar.c();
        this.v = hVar.f9587a;
        this.w = new com.mbridge.msdk.thrid.okhttp.internal.http2.j(hVar.d, z2);
        this.x = new l(new com.mbridge.msdk.thrid.okhttp.internal.http2.h(hVar.c, z2));
    }

    public static /* synthetic */ long c(g gVar) {
        long j2 = gVar.l;
        gVar.l = 1 + j2;
        return j2;
    }

    public static /* synthetic */ long e(g gVar) {
        long j2 = gVar.k;
        gVar.k = 1 + j2;
        return j2;
    }

    public static /* synthetic */ long h(g gVar) {
        long j2 = gVar.n;
        gVar.n = 1 + j2;
        return j2;
    }

    public static /* synthetic */ long i(g gVar) {
        long j2 = gVar.p;
        gVar.p = 1 + j2;
        return j2;
    }

    public boolean b(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
    }

    public void flush() throws IOException {
        this.w.flush();
    }

    public synchronized int k() {
        return this.u.b(Integer.MAX_VALUE);
    }

    public void l() {
        synchronized (this) {
            try {
                long j2 = this.n;
                long j3 = this.m;
                if (j2 < j3) {
                    return;
                }
                this.m = j3 + 1;
                this.q = System.nanoTime() + 1000000000;
                try {
                    this.h.execute(new c("OkHttp %s ping", this.d));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void m() throws IOException {
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
            a(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    public synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i c(int i2) {
        com.mbridge.msdk.thrid.okhttp.internal.http2.i remove;
        remove = this.c.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public synchronized boolean f(long j2) {
        if (this.g) {
            return false;
        }
        if (this.n < this.m) {
            if (j2 >= this.q) {
                return false;
            }
        }
        return true;
    }

    public synchronized void g(long j2) {
        long j3 = this.r + j2;
        this.r = j3;
        if (j3 >= this.t.c() / 2) {
            a(0, this.r);
            this.r = 0L;
        }
    }

    public synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i2) {
        return this.c.get(Integer.valueOf(i2));
    }

    public void b(int i2, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        this.w.a(i2, bVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        Socket f9587a;
        String b;
        com.mbridge.msdk.thrid.okio.e c;
        com.mbridge.msdk.thrid.okio.d d;
        j e = j.f9588a;
        com.mbridge.msdk.thrid.okhttp.internal.http2.l f = com.mbridge.msdk.thrid.okhttp.internal.http2.l.f9597a;
        boolean g;
        int h;

        public h(boolean z) {
            this.g = z;
        }

        public h a(Socket socket, String str, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
            this.f9587a = socket;
            this.b = str;
            this.c = eVar;
            this.d = dVar;
            return this;
        }

        public h a(j jVar) {
            this.e = jVar;
            return this;
        }

        public h a(int i) {
            this.h = i;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http2.i a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z2) throws IOException {
        return a(0, list, z2);
    }

    public void b(int i2, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z2) {
        try {
            try {
                a(new e("OkHttp %s Push Headers[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, list, z2));
            } catch (RejectedExecutionException unused) {
            }
        } catch (RejectedExecutionException unused2) {
        }
    }

    public void c(int i2, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        try {
            this.h.execute(new a("OkHttp %s stream %d", new Object[]{this.d, Integer.valueOf(i2)}, i2, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0047 A[Catch: all -> 0x003d, TryCatch #4 {all -> 0x003d, blocks: (B:16:0x0027, B:18:0x002c, B:20:0x0034, B:27:0x0041, B:29:0x0047, B:30:0x0050, B:49:0x0080, B:47:0x007a, B:48:0x007f), top: B:55:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0053 A[Catch: all -> 0x0059, TRY_ENTER, TryCatch #3 {all -> 0x0059, blocks: (B:32:0x0053, B:38:0x0065, B:35:0x005c, B:37:0x0060, B:42:0x006e, B:43:0x0075, B:53:0x0085, B:50:0x0081), top: B:61:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005c A[Catch: all -> 0x0059, TryCatch #3 {all -> 0x0059, blocks: (B:32:0x0053, B:38:0x0065, B:35:0x005c, B:37:0x0060, B:42:0x006e, B:43:0x0075, B:53:0x0085, B:50:0x0081), top: B:61:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int r10, java.util.List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> r11, boolean r12) throws java.io.IOException {
        /*
            r9 = this;
            r3 = r12 ^ 1
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r6 = r9.w
            monitor-enter(r6)
            monitor-enter(r9)     // Catch: java.lang.Throwable -> L82
            int r0 = r9.f     // Catch: java.lang.Throwable -> L76
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L18
            com.mbridge.msdk.thrid.okhttp.internal.http2.b r0 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L13
            r9.a(r0)     // Catch: java.lang.Throwable -> L13
            goto L18
        L13:
            r0 = move-exception
            r10 = r0
            r2 = r9
            goto L80
        L18:
            boolean r0 = r9.g     // Catch: java.lang.Throwable -> L76
            if (r0 != 0) goto L79
            int r1 = r9.f     // Catch: java.lang.Throwable -> L76
            int r0 = r1 + 2
            r9.f = r0     // Catch: java.lang.Throwable -> L76
            com.mbridge.msdk.thrid.okhttp.internal.http2.i r0 = new com.mbridge.msdk.thrid.okhttp.internal.http2.i     // Catch: java.lang.Throwable -> L76
            r5 = 0
            r4 = 0
            r2 = r9
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L3d
            if (r12 == 0) goto L40
            long r4 = r2.s     // Catch: java.lang.Throwable -> L3d
            r7 = 0
            int r12 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r12 == 0) goto L40
            long r4 = r0.b     // Catch: java.lang.Throwable -> L3d
            int r12 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r12 != 0) goto L3b
            goto L40
        L3b:
            r12 = 0
            goto L41
        L3d:
            r0 = move-exception
        L3e:
            r10 = r0
            goto L80
        L40:
            r12 = 1
        L41:
            boolean r4 = r0.g()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L50
            java.util.Map<java.lang.Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> r4 = r2.c     // Catch: java.lang.Throwable -> L3d
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L3d
            r4.put(r5, r0)     // Catch: java.lang.Throwable -> L3d
        L50:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L3d
            if (r10 != 0) goto L5c
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r4 = r2.w     // Catch: java.lang.Throwable -> L59
            r4.a(r3, r1, r10, r11)     // Catch: java.lang.Throwable -> L59
            goto L65
        L59:
            r0 = move-exception
        L5a:
            r10 = r0
            goto L85
        L5c:
            boolean r3 = r2.f9586a     // Catch: java.lang.Throwable -> L59
            if (r3 != 0) goto L6e
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r3 = r2.w     // Catch: java.lang.Throwable -> L59
            r3.a(r10, r1, r11)     // Catch: java.lang.Throwable -> L59
        L65:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L59
            if (r12 == 0) goto L6d
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r10 = r2.w
            r10.flush()
        L6d:
            return r0
        L6e:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L59
            java.lang.String r11 = "client streams shouldn't have associated stream IDs"
            r10.<init>(r11)     // Catch: java.lang.Throwable -> L59
            throw r10     // Catch: java.lang.Throwable -> L59
        L76:
            r0 = move-exception
            r2 = r9
            goto L3e
        L79:
            r2 = r9
            com.mbridge.msdk.thrid.okhttp.internal.http2.a r10 = new com.mbridge.msdk.thrid.okhttp.internal.http2.a     // Catch: java.lang.Throwable -> L3d
            r10.<init>()     // Catch: java.lang.Throwable -> L3d
            throw r10     // Catch: java.lang.Throwable -> L3d
        L80:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L3d
            throw r10     // Catch: java.lang.Throwable -> L59
        L82:
            r0 = move-exception
            r2 = r9
            goto L5a
        L85:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L59
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.g.a(int, java.util.List, boolean):com.mbridge.msdk.thrid.okhttp.internal.http2.i");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r4), r8.w.h());
        r6 = r2;
        r8.s -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r9, boolean r10, com.mbridge.msdk.thrid.okio.c r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r12 = r8.w
            r12.a(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L67
            monitor-enter(r8)
        L12:
            long r4 = r8.s     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 > 0) goto L32
            java.util.Map<java.lang.Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> r2 = r8.c     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            if (r2 == 0) goto L2a
            r8.wait()     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            goto L12
        L28:
            r9 = move-exception
            goto L65
        L2a:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L28 java.lang.InterruptedException -> L58
        L32:
            long r4 = java.lang.Math.min(r12, r4)     // Catch: java.lang.Throwable -> L28
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L28
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r4 = r8.w     // Catch: java.lang.Throwable -> L28
            int r4 = r4.h()     // Catch: java.lang.Throwable -> L28
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L28
            long r4 = r8.s     // Catch: java.lang.Throwable -> L28
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L28
            long r4 = r4 - r6
            r8.s = r4     // Catch: java.lang.Throwable -> L28
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            long r12 = r12 - r6
            com.mbridge.msdk.thrid.okhttp.internal.http2.j r4 = r8.w
            if (r10 == 0) goto L53
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L53
            r5 = 1
            goto L54
        L53:
            r5 = r3
        L54:
            r4.a(r5, r9, r11, r2)
            goto Ld
        L58:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L28
            r9.interrupt()     // Catch: java.lang.Throwable -> L28
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L28
            r9.<init>()     // Catch: java.lang.Throwable -> L28
            throw r9     // Catch: java.lang.Throwable -> L28
        L65:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L28
            throw r9
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.http2.g.a(int, boolean, com.mbridge.msdk.thrid.okio.c, long):void");
    }

    public void a(int i2, long j2) {
        try {
            this.h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.d, Integer.valueOf(i2)}, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    public void a(boolean z2, int i2, int i3) {
        try {
            this.w.a(z2, i2, i3);
        } catch (IOException unused) {
            h();
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        synchronized (this.w) {
            synchronized (this) {
                if (this.g) {
                    return;
                }
                this.g = true;
                this.w.a(this.e, bVar, com.mbridge.msdk.thrid.okhttp.internal.c.f9555a);
            }
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2) throws IOException {
        if (!A && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            try {
                if (!this.c.isEmpty()) {
                    iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) this.c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[this.c.size()]);
                    this.c.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (iVarArr != null) {
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        try {
            this.w.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.v.close();
        } catch (IOException e5) {
            e = e5;
        }
        this.h.shutdown();
        this.i.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public void a(boolean z2) throws IOException {
        if (z2) {
            this.w.d();
            this.w.b(this.t);
            int c2 = this.t.c();
            if (c2 != 65535) {
                this.w.a(0, c2 - 65535);
            }
        }
        new Thread(this.x).start();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0046 -> B:20:0x0043). Please submit an issue!!! */
    public void a(int i2, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        Throwable th;
        synchronized (this) {
            try {
                if (this.y.contains(Integer.valueOf(i2))) {
                    try {
                        c(i2, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                        throw th;
                    }
                }
                this.y.add(Integer.valueOf(i2));
                try {
                    try {
                        a(new d("OkHttp %s Push Request[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, list));
                    } catch (RejectedExecutionException unused) {
                    }
                } catch (RejectedExecutionException unused2) {
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    public void a(int i2, com.mbridge.msdk.thrid.okio.e eVar, int i3, boolean z2) throws IOException {
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        long j2 = i3;
        eVar.e(j2);
        eVar.b(cVar, j2);
        if (cVar.size() == j2) {
            a(new f("OkHttp %s Push Data[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, cVar, i3, z2));
            return;
        }
        throw new IOException(cVar.size() + " != " + i3);
    }

    public void a(int i2, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        a(new C0166g("OkHttp %s Push Reset[%s]", new Object[]{this.d, Integer.valueOf(i2)}, i2, bVar));
    }

    private synchronized void a(com.mbridge.msdk.thrid.okhttp.internal.b bVar) {
        if (!this.g) {
            this.i.execute(bVar);
        }
    }
}
