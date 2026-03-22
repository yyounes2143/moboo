package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f9615a;
    private final f b;
    private final List<Certificate> c;
    private final List<Certificate> d;

    private o(b0 b0Var, f fVar, List<Certificate> list, List<Certificate> list2) {
        this.f9615a = b0Var;
        this.b = fVar;
        this.c = list;
        this.d = list2;
    }

    public static o a(SSLSession sSLSession) throws IOException {
        Certificate[] certificateArr;
        List list;
        List list2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
                f a2 = f.a(cipherSuite);
                String protocol = sSLSession.getProtocol();
                if (protocol != null) {
                    if (!"NONE".equals(protocol)) {
                        b0 a3 = b0.a(protocol);
                        try {
                            certificateArr = sSLSession.getPeerCertificates();
                        } catch (SSLPeerUnverifiedException unused) {
                            certificateArr = null;
                        }
                        if (certificateArr != null) {
                            list = com.mbridge.msdk.thrid.okhttp.internal.c.a(certificateArr);
                        } else {
                            list = Collections.EMPTY_LIST;
                        }
                        Certificate[] localCertificates = sSLSession.getLocalCertificates();
                        if (localCertificates != null) {
                            list2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(localCertificates);
                        } else {
                            list2 = Collections.EMPTY_LIST;
                        }
                        return new o(a3, a2, list, list2);
                    }
                    throw new IOException("tlsVersion == NONE");
                }
                throw new IllegalStateException("tlsVersion == null");
            }
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public List<Certificate> b() {
        return this.c;
    }

    public b0 c() {
        return this.f9615a;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (!this.f9615a.equals(oVar.f9615a) || !this.b.equals(oVar.b) || !this.c.equals(oVar.c) || !this.d.equals(oVar.d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((this.f9615a.hashCode() + 527) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public f a() {
        return this.b;
    }
}
