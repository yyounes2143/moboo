package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.i;
import com.mbridge.msdk.thrid.okhttp.internal.http2.g;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.o;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.s;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayerInitConfig;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class c extends g.j implements com.mbridge.msdk.thrid.okhttp.g {
    private final h b;
    private final a0 c;
    private Socket d;
    private Socket e;
    private o f;
    private u g;
    private com.mbridge.msdk.thrid.okhttp.internal.http2.g h;
    private com.mbridge.msdk.thrid.okio.e i;
    private com.mbridge.msdk.thrid.okio.d j;
    public boolean k;
    public int l;
    public int m = 1;
    public final List<Reference<g>> n = new ArrayList();
    public long o = Long.MAX_VALUE;

    public c(h hVar, a0 a0Var) {
        this.b = hVar;
        this.c = a0Var;
    }

    private w e() throws IOException {
        w a2 = new w.a().a(this.c.a().k()).a("CONNECT", (x) null).b("Host", com.mbridge.msdk.thrid.okhttp.internal.c.a(this.c.a().k(), true)).b("Proxy-Connection", HttpHeaders.KEEP_ALIVE).b("User-Agent", com.mbridge.msdk.thrid.okhttp.internal.d.a()).a();
        w a3 = this.c.a().g().a(this.c, new y.a().a(a2).a(u.HTTP_1_1).a(TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT).a("Preemptive Authenticate").a(com.mbridge.msdk.thrid.okhttp.internal.c.c).b(-1L).a(-1L).b("Proxy-Authenticate", "OkHttp-Preemptive").a());
        if (a3 != null) {
            return a3;
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab A[Catch: IOException -> 0x00a0, TRY_LEAVE, TryCatch #4 {IOException -> 0x00a0, blocks: (B:23:0x0098, B:32:0x00ab), top: B:79:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f7 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0140 A[EDGE_INSN: B:83:0x0140->B:66:0x0140 ?: BREAK  ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r13, int r14, int r15, int r16, boolean r17, com.mbridge.msdk.thrid.okhttp.d r18, com.mbridge.msdk.thrid.okhttp.n r19) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.connection.c.a(int, int, int, int, boolean, com.mbridge.msdk.thrid.okhttp.d, com.mbridge.msdk.thrid.okhttp.n):void");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public o b() {
        return this.f;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public a0 c() {
        return this.c;
    }

    public void d() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.d);
    }

    public boolean f() {
        if (this.h != null) {
            return true;
        }
        return false;
    }

    public Socket g() {
        return this.e;
    }

    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.c.a().k().g());
        sb.append(":");
        sb.append(this.c.a().k().j());
        sb.append(", proxy=");
        sb.append(this.c.b());
        sb.append(" hostAddress=");
        sb.append(this.c.d());
        sb.append(" cipherSuite=");
        o oVar = this.f;
        if (oVar != null) {
            obj = oVar.a();
        } else {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.g);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    private void a(int i, int i2, int i3, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        w e = e();
        q g = e.g();
        for (int i4 = 0; i4 < 21; i4++) {
            a(i, i2, dVar, nVar);
            e = a(i2, i3, e, g);
            if (e == null) {
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.d);
            this.d = null;
            this.j = null;
            this.i = null;
            nVar.connectEnd(dVar, this.c.d(), this.c.b(), null);
        }
    }

    private void a(int i, int i2, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        Proxy b = this.c.b();
        this.d = (b.type() == Proxy.Type.DIRECT || b.type() == Proxy.Type.HTTP) ? this.c.a().i().createSocket() : new Socket(b);
        nVar.connectStart(dVar, this.c.d(), b);
        this.d.setSoTimeout(i2);
        try {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.d, this.c.d(), i);
            try {
                this.i = l.a(l.b(this.d));
                this.j = l.a(l.a(this.d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.c.d());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void a(b bVar, int i, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        if (this.c.a().j() == null) {
            List<u> e = this.c.a().e();
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (e.contains(uVar)) {
                this.e = this.d;
                this.g = uVar;
                a(i);
                return;
            }
            this.e = this.d;
            this.g = u.HTTP_1_1;
            return;
        }
        nVar.secureConnectStart(dVar);
        a(bVar);
        nVar.secureConnectEnd(dVar, this.f);
        if (this.g == u.HTTP_2) {
            a(i);
        }
    }

    private void a(int i) throws IOException {
        this.e.setSoTimeout(0);
        com.mbridge.msdk.thrid.okhttp.internal.http2.g a2 = new g.h(true).a(this.e, this.c.a().k().g(), this.i, this.j).a(this).a(i).a();
        this.h = a2;
        a2.m();
    }

    private void a(b bVar) throws IOException {
        SSLSocket sSLSocket;
        com.mbridge.msdk.thrid.okhttp.a a2 = this.c.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) a2.j().createSocket(this.d, a2.k().g(), a2.k().j(), true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            i a3 = bVar.a(sSLSocket);
            if (a3.c()) {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket, a2.k().g(), a2.e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            o a4 = o.a(session);
            if (!a2.d().verify(a2.k().g(), session)) {
                List<Certificate> b = a4.b();
                if (!b.isEmpty()) {
                    X509Certificate x509Certificate = (X509Certificate) b.get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + a2.k().g() + " not verified:\n    certificate: " + com.mbridge.msdk.thrid.okhttp.e.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.mbridge.msdk.thrid.okhttp.internal.tls.d.a(x509Certificate));
                }
                throw new SSLPeerUnverifiedException("Hostname " + a2.k().g() + " not verified (no certificates)");
            }
            a2.a().a(a2.k().g(), a4.b());
            String b2 = a3.c() ? com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(sSLSocket) : null;
            this.e = sSLSocket;
            this.i = l.a(l.b(sSLSocket));
            this.j = l.a(l.a(this.e));
            this.f = a4;
            this.g = b2 != null ? u.a(b2) : u.HTTP_1_1;
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket);
        } catch (AssertionError e2) {
            e = e2;
            if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2);
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private w a(int i, int i2, w wVar, q qVar) throws IOException {
        String str = "CONNECT " + com.mbridge.msdk.thrid.okhttp.internal.c.a(qVar, true) + " HTTP/1.1";
        while (true) {
            com.mbridge.msdk.thrid.okhttp.internal.http1.a aVar = new com.mbridge.msdk.thrid.okhttp.internal.http1.a(null, null, this.i, this.j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.i.b().a(i, timeUnit);
            this.j.b().a(i2, timeUnit);
            aVar.a(wVar.c(), str);
            aVar.a();
            y a2 = aVar.a(false).a(wVar).a();
            long a3 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a2);
            if (a3 == -1) {
                a3 = 0;
            }
            s b = aVar.b(a3);
            com.mbridge.msdk.thrid.okhttp.internal.c.b(b, Integer.MAX_VALUE, timeUnit);
            b.close();
            int k = a2.k();
            if (k == 200) {
                if (this.i.a().f() && this.j.a().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            } else if (k == 407) {
                w a4 = this.c.a().g().a(this.c, a2);
                if (a4 != null) {
                    if ("close".equalsIgnoreCase(a2.b("Connection"))) {
                        return a4;
                    }
                    wVar = a4;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + a2.k());
            }
        }
    }

    public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, @Nullable a0 a0Var) {
        if (this.n.size() >= this.m || this.k || !com.mbridge.msdk.thrid.okhttp.internal.a.f9553a.a(this.c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(c().a().k().g())) {
            return true;
        }
        if (this.h == null || a0Var == null) {
            return false;
        }
        Proxy.Type type = a0Var.b().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type == type2 && this.c.b().type() == type2 && this.c.d().equals(a0Var.d()) && a0Var.a().d() == com.mbridge.msdk.thrid.okhttp.internal.tls.d.f9609a && a(aVar.k())) {
            try {
                aVar.a().a(aVar.k().g(), b().b());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a(q qVar) {
        if (qVar.j() != this.c.a().k().j()) {
            return false;
        }
        if (qVar.g().equals(this.c.a().k().g())) {
            return true;
        }
        return this.f != null && com.mbridge.msdk.thrid.okhttp.internal.tls.d.f9609a.a(qVar.g(), (X509Certificate) this.f.b().get(0));
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, g gVar) throws SocketException {
        if (this.h != null) {
            return new com.mbridge.msdk.thrid.okhttp.internal.http2.f(tVar, aVar, gVar, this.h);
        }
        this.e.setSoTimeout(aVar.b());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.i.b().a(aVar.b(), timeUnit);
        this.j.b().a(aVar.c(), timeUnit);
        return new com.mbridge.msdk.thrid.okhttp.internal.http1.a(tVar, gVar, this.i, this.j);
    }

    public boolean a(boolean z) {
        if (this.e.isClosed() || this.e.isInputShutdown() || this.e.isOutputShutdown()) {
            return false;
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar = this.h;
        if (gVar != null) {
            return gVar.f(System.nanoTime());
        }
        if (z) {
            try {
                int soTimeout = this.e.getSoTimeout();
                try {
                    this.e.setSoTimeout(1);
                    return !this.i.f();
                } finally {
                    this.e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
        iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar) {
        synchronized (this.b) {
            this.m = gVar.k();
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.g
    public u a() {
        return this.g;
    }
}
