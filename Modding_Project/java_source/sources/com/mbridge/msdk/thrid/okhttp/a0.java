package com.mbridge.msdk.thrid.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    final a f9540a;
    final Proxy b;
    final InetSocketAddress c;

    public a0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar != null) {
            if (proxy != null) {
                if (inetSocketAddress != null) {
                    this.f9540a = aVar;
                    this.b = proxy;
                    this.c = inetSocketAddress;
                    return;
                }
                throw new NullPointerException("inetSocketAddress == null");
            }
            throw new NullPointerException("proxy == null");
        }
        throw new NullPointerException("address == null");
    }

    public a a() {
        return this.f9540a;
    }

    public Proxy b() {
        return this.b;
    }

    public boolean c() {
        if (this.f9540a.i != null && this.b.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public InetSocketAddress d() {
        return this.c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            if (a0Var.f9540a.equals(this.f9540a) && a0Var.b.equals(this.b) && a0Var.c.equals(this.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f9540a.hashCode() + 527) * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "Route{" + this.c + "}";
    }
}
