package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.q;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final q f9539a;
    final m b;
    final SocketFactory c;
    final b d;
    final List<u> e;
    final List<i> f;
    final ProxySelector g;
    @Nullable
    final Proxy h;
    @Nullable
    final SSLSocketFactory i;
    @Nullable
    final HostnameVerifier j;
    @Nullable
    final e k;

    public a(String str, int i, m mVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable e eVar, b bVar, @Nullable Proxy proxy, List<u> list, List<i> list2, ProxySelector proxySelector) {
        String str2;
        q.a aVar = new q.a();
        if (sSLSocketFactory != null) {
            str2 = "https";
        } else {
            str2 = "http";
        }
        this.f9539a = aVar.e(str2).b(str).a(i).a();
        if (mVar != null) {
            this.b = mVar;
            if (socketFactory != null) {
                this.c = socketFactory;
                if (bVar != null) {
                    this.d = bVar;
                    if (list != null) {
                        this.e = com.mbridge.msdk.thrid.okhttp.internal.c.a(list);
                        if (list2 != null) {
                            this.f = com.mbridge.msdk.thrid.okhttp.internal.c.a(list2);
                            if (proxySelector != null) {
                                this.g = proxySelector;
                                this.h = proxy;
                                this.i = sSLSocketFactory;
                                this.j = hostnameVerifier;
                                this.k = eVar;
                                return;
                            }
                            throw new NullPointerException("proxySelector == null");
                        }
                        throw new NullPointerException("connectionSpecs == null");
                    }
                    throw new NullPointerException("protocols == null");
                }
                throw new NullPointerException("proxyAuthenticator == null");
            }
            throw new NullPointerException("socketFactory == null");
        }
        throw new NullPointerException("dns == null");
    }

    @Nullable
    public e a() {
        return this.k;
    }

    public List<i> b() {
        return this.f;
    }

    public m c() {
        return this.b;
    }

    @Nullable
    public HostnameVerifier d() {
        return this.j;
    }

    public List<u> e() {
        return this.e;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f9539a.equals(aVar.f9539a) && a(aVar)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public Proxy f() {
        return this.h;
    }

    public b g() {
        return this.d;
    }

    public ProxySelector h() {
        return this.g;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int hashCode = (((((((((((this.f9539a.hashCode() + 527) * 31) + this.b.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31;
        Proxy proxy = this.h;
        int i4 = 0;
        if (proxy != null) {
            i = proxy.hashCode();
        } else {
            i = 0;
        }
        int i5 = (hashCode + i) * 31;
        SSLSocketFactory sSLSocketFactory = this.i;
        if (sSLSocketFactory != null) {
            i2 = sSLSocketFactory.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        HostnameVerifier hostnameVerifier = this.j;
        if (hostnameVerifier != null) {
            i3 = hostnameVerifier.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        e eVar = this.k;
        if (eVar != null) {
            i4 = eVar.hashCode();
        }
        return i7 + i4;
    }

    public SocketFactory i() {
        return this.c;
    }

    @Nullable
    public SSLSocketFactory j() {
        return this.i;
    }

    public q k() {
        return this.f9539a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f9539a.g());
        sb.append(":");
        sb.append(this.f9539a.j());
        if (this.h != null) {
            sb.append(", proxy=");
            sb.append(this.h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.g);
        }
        sb.append("}");
        return sb.toString();
    }

    public boolean a(a aVar) {
        return this.b.equals(aVar.b) && this.d.equals(aVar.d) && this.e.equals(aVar.e) && this.f.equals(aVar.f) && this.g.equals(aVar.g) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.h, aVar.h) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.i, aVar.i) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.j, aVar.j) && com.mbridge.msdk.thrid.okhttp.internal.c.a(this.k, aVar.k) && k().j() == aVar.k().j();
    }
}
