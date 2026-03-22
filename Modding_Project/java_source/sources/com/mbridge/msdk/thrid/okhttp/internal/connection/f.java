package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.a f9563a;
    private final d b;
    private final com.mbridge.msdk.thrid.okhttp.d c;
    private final n d;
    private List<Proxy> e;
    private int f;
    private List<InetSocketAddress> g;
    private final List<a0> h;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<a0> f9564a;
        private int b = 0;

        public a(List<a0> list) {
            this.f9564a = list;
        }

        public List<a0> a() {
            return new ArrayList(this.f9564a);
        }

        public boolean b() {
            if (this.b < this.f9564a.size()) {
                return true;
            }
            return false;
        }

        public a0 c() {
            if (b()) {
                List<a0> list = this.f9564a;
                int i = this.b;
                this.b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    public f(com.mbridge.msdk.thrid.okhttp.a aVar, d dVar, com.mbridge.msdk.thrid.okhttp.d dVar2, n nVar) {
        List list = Collections.EMPTY_LIST;
        this.e = list;
        this.g = list;
        this.h = new ArrayList();
        this.f9563a = aVar;
        this.b = dVar;
        this.c = dVar2;
        this.d = nVar;
        a(aVar.k(), aVar.f());
    }

    private boolean b() {
        if (this.f < this.e.size()) {
            return true;
        }
        return false;
    }

    private Proxy d() throws IOException {
        if (b()) {
            List<Proxy> list = this.e;
            int i = this.f;
            this.f = i + 1;
            Proxy proxy = list.get(i);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f9563a.k().g() + "; exhausted proxy configurations: " + this.e);
    }

    public boolean a() {
        return b() || !this.h.isEmpty();
    }

    public a c() throws IOException {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (b()) {
                Proxy d = d();
                int size = this.g.size();
                for (int i = 0; i < size; i++) {
                    a0 a0Var = new a0(this.f9563a, d, this.g.get(i));
                    if (this.b.c(a0Var)) {
                        this.h.add(a0Var);
                    } else {
                        arrayList.add(a0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.h);
                this.h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }

    public void a(a0 a0Var, IOException iOException) {
        if (a0Var.b().type() != Proxy.Type.DIRECT && this.f9563a.h() != null) {
            this.f9563a.h().connectFailed(this.f9563a.k().m(), a0Var.b().address(), iOException);
        }
        this.b.b(a0Var);
    }

    private void a(q qVar, Proxy proxy) {
        List<Proxy> a2;
        if (proxy != null) {
            this.e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f9563a.h().select(qVar.m());
            if (select != null && !select.isEmpty()) {
                a2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(select);
            } else {
                a2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(Proxy.NO_PROXY);
            }
            this.e = a2;
        }
        this.f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        String g;
        int j;
        this.g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                g = a(inetSocketAddress);
                j = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        } else {
            g = this.f9563a.k().g();
            j = this.f9563a.k().j();
        }
        if (j >= 1 && j <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.g.add(InetSocketAddress.createUnresolved(g, j));
                return;
            }
            this.d.dnsStart(this.c, g);
            List<InetAddress> a2 = this.f9563a.c().a(g);
            if (!a2.isEmpty()) {
                this.d.dnsEnd(this.c, g, a2);
                int size = a2.size();
                for (int i = 0; i < size; i++) {
                    this.g.add(new InetSocketAddress(a2.get(i), j));
                }
                return;
            }
            throw new UnknownHostException(this.f9563a.c() + " returned no addresses for " + g);
        }
        throw new SocketException("No route to " + g + ":" + j + "; port is out of range");
    }

    public static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
