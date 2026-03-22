package com.mbridge.msdk.thrid.okhttp.internal.http1;

import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.h;
import com.mbridge.msdk.thrid.okhttp.internal.http.k;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.i;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class a implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    /* renamed from: a  reason: collision with root package name */
    final t f9575a;
    final com.mbridge.msdk.thrid.okhttp.internal.connection.g b;
    final com.mbridge.msdk.thrid.okio.e c;
    final com.mbridge.msdk.thrid.okio.d d;
    int e = 0;
    private long f = 262144;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public abstract class b implements s {

        /* renamed from: a  reason: collision with root package name */
        protected final i f9576a;
        protected boolean b;
        protected long c;

        private b() {
            this.f9576a = new i(a.this.c.b());
            this.c = 0L;
        }

        public final void a(boolean z, IOException iOException) throws IOException {
            a aVar = a.this;
            int i = aVar.e;
            if (i != 6) {
                if (i == 5) {
                    aVar.a(this.f9576a);
                    a aVar2 = a.this;
                    aVar2.e = 6;
                    com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = aVar2.b;
                    if (gVar != null) {
                        gVar.a(!z, aVar2, this.c, iOException);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("state: " + a.this.e);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f9576a;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            try {
                long b = a.this.c.b(cVar, j);
                if (b > 0) {
                    this.c += b;
                    return b;
                }
                return b;
            } catch (IOException e) {
                a(false, e);
                throw e;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class c implements r, AutoCloseable {

        /* renamed from: a  reason: collision with root package name */
        private final i f9577a;
        private boolean b;

        public c() {
            this.f9577a = new i(a.this.d.b());
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (!this.b) {
                if (j == 0) {
                    return;
                }
                a.this.d.a(j);
                a.this.d.a("\r\n");
                a.this.d.a(cVar, j);
                a.this.d.a("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f9577a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            a.this.d.a("0\r\n\r\n");
            a.this.a(this.f9577a);
            a.this.e = 3;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.b) {
                return;
            }
            a.this.d.flush();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class d extends b {
        private final q e;
        private long f;
        private boolean g;

        public d(q qVar) {
            super();
            this.f = -1L;
            this.g = true;
            this.e = qVar;
        }

        private void d() throws IOException {
            if (this.f != -1) {
                a.this.c.c();
            }
            try {
                this.f = a.this.c.i();
                String trim = a.this.c.c().trim();
                if (this.f >= 0 && (trim.isEmpty() || trim.startsWith(";"))) {
                    if (this.f == 0) {
                        this.g = false;
                        com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a.this.f9575a.i(), this.e, a.this.f());
                        a(true, null);
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f + trim + "\"");
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    if (!this.g) {
                        return -1L;
                    }
                    long j2 = this.f;
                    if (j2 == 0 || j2 == -1) {
                        d();
                        if (!this.g) {
                            return -1L;
                        }
                    }
                    long b = super.b(cVar, Math.min(j, this.f));
                    if (b != -1) {
                        this.f -= b;
                        return b;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (this.g && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.b = true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class e implements r, AutoCloseable {

        /* renamed from: a  reason: collision with root package name */
        private final i f9578a;
        private boolean b;
        private long c;

        public e(long j) {
            this.f9578a = new i(a.this.d.b());
            this.c = j;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (!this.b) {
                com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.size(), 0L, j);
                if (j <= this.c) {
                    a.this.d.a(cVar, j);
                    this.c -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.c + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f9578a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            if (this.c <= 0) {
                a.this.a(this.f9578a);
                a.this.e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            if (this.b) {
                return;
            }
            a.this.d.flush();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class f extends b {
        private long e;

        public f(long j) throws IOException {
            super();
            this.e = j;
            if (j == 0) {
                a(true, null);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    long j2 = this.e;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long b = super.b(cVar, Math.min(j2, j));
                    if (b != -1) {
                        long j3 = this.e - b;
                        this.e = j3;
                        if (j3 == 0) {
                            a(true, null);
                        }
                        return b;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (this.e != 0 && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.b = true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class g extends b {
        private boolean e;

        public g() {
            super();
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http1.a.b, com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    if (this.e) {
                        return -1L;
                    }
                    long b = super.b(cVar, j);
                    if (b == -1) {
                        this.e = true;
                        a(true, null);
                        return -1L;
                    }
                    return b;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (!this.e) {
                a(false, null);
            }
            this.b = true;
        }
    }

    public a(t tVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
        this.f9575a = tVar;
        this.b = gVar;
        this.c = eVar;
        this.d = dVar;
    }

    private String e() throws IOException {
        String d2 = this.c.d(this.f);
        this.f -= d2.length();
        return d2;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public r a(w wVar, long j) {
        if ("chunked".equalsIgnoreCase(wVar.a(HttpHeaders.TRANSFER_ENCODING))) {
            return c();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void b() throws IOException {
        this.d.flush();
    }

    public r c() {
        if (this.e == 1) {
            this.e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void cancel() {
        com.mbridge.msdk.thrid.okhttp.internal.connection.c c2 = this.b.c();
        if (c2 != null) {
            c2.d();
        }
    }

    public s d() throws IOException {
        if (this.e == 4) {
            com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.b;
            if (gVar != null) {
                this.e = 5;
                gVar.e();
                return new g();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.e);
    }

    public p f() throws IOException {
        p.a aVar = new p.a();
        while (true) {
            String e2 = e();
            if (e2.length() != 0) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f9553a.a(aVar, e2);
            } else {
                return aVar.a();
            }
        }
    }

    public s b(long j) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new f(j);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a(w wVar) throws IOException {
        a(wVar.c(), com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar, this.b.c().c().b().type()));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.b;
        gVar.f.responseBodyStart(gVar.e);
        String b2 = yVar.b("Content-Type");
        if (!com.mbridge.msdk.thrid.okhttp.internal.http.e.b(yVar)) {
            return new h(b2, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(yVar.b(HttpHeaders.TRANSFER_ENCODING))) {
            return new h(b2, -1L, l.a(a(yVar.r().g())));
        }
        long a2 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar);
        if (a2 != -1) {
            return new h(b2, a2, l.a(b(a2)));
        }
        return new h(b2, -1L, l.a(d()));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public void a() throws IOException {
        this.d.flush();
    }

    public void a(p pVar, String str) throws IOException {
        if (this.e == 0) {
            this.d.a(str).a("\r\n");
            int b2 = pVar.b();
            for (int i = 0; i < b2; i++) {
                this.d.a(pVar.a(i)).a(": ").a(pVar.b(i)).a("\r\n");
            }
            this.d.a("\r\n");
            this.e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http.c
    public y.a a(boolean z) throws IOException {
        int i = this.e;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.e);
        }
        try {
            k a2 = k.a(e());
            y.a a3 = new y.a().a(a2.f9574a).a(a2.b).a(a2.c).a(f());
            if (z && a2.b == 100) {
                return null;
            }
            if (a2.b == 100) {
                this.e = 3;
                return a3;
            }
            this.e = 4;
            return a3;
        } catch (EOFException e2) {
            IOException iOException = new IOException("unexpected end of stream on " + this.b);
            iOException.initCause(e2);
            throw iOException;
        }
    }

    public r a(long j) {
        if (this.e == 1) {
            this.e = 2;
            return new e(j);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    public s a(q qVar) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new d(qVar);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    public void a(i iVar) {
        com.mbridge.msdk.thrid.okio.t g2 = iVar.g();
        iVar.a(com.mbridge.msdk.thrid.okio.t.d);
        g2.a();
        g2.b();
    }
}
