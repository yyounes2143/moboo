package com.mbridge.msdk.thrid.okhttp;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class e {
    public static final e c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f9545a;
    @Nullable
    private final com.mbridge.msdk.thrid.okhttp.internal.tls.c b;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<b> f9546a = new ArrayList();

        public e a() {
            return new e(new LinkedHashSet(this.f9546a), null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f9547a;
        final String b;
        final String c;
        final com.mbridge.msdk.thrid.okio.f d;

        public boolean a(String str) {
            if (this.f9547a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                if ((str.length() - indexOf) - 1 == this.b.length()) {
                    String str2 = this.b;
                    if (str.regionMatches(false, indexOf + 1, str2, 0, str2.length())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return str.equals(this.b);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f9547a.equals(bVar.f9547a) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f9547a.hashCode() + 527) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
        }

        public String toString() {
            return this.c + this.d.a();
        }
    }

    public e(Set<b> set, @Nullable com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        this.f9545a = set;
        this.b = cVar;
    }

    public static com.mbridge.msdk.thrid.okio.f b(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> a2 = a(str);
        if (a2.isEmpty()) {
            return;
        }
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = a2.size();
            com.mbridge.msdk.thrid.okio.f fVar = null;
            com.mbridge.msdk.thrid.okio.f fVar2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                b bVar = a2.get(i2);
                if (bVar.c.equals("sha256/")) {
                    if (fVar == null) {
                        fVar = b(x509Certificate);
                    }
                    if (bVar.d.equals(fVar)) {
                        return;
                    }
                } else if (bVar.c.equals("sha1/")) {
                    if (fVar2 == null) {
                        fVar2 = a(x509Certificate);
                    }
                    if (bVar.d.equals(fVar2)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + bVar.c);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sb.append("\n    ");
            sb.append(a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = a2.size();
        for (int i4 = 0; i4 < size4; i4++) {
            sb.append("\n    ");
            sb.append(a2.get(i4));
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b, eVar.b) && this.f9545a.equals(eVar.f9545a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.b;
        if (cVar != null) {
            i = cVar.hashCode();
        } else {
            i = 0;
        }
        return (i * 31) + this.f9545a.hashCode();
    }

    public List<b> a(String str) {
        List<b> list = Collections.EMPTY_LIST;
        for (b bVar : this.f9545a) {
            if (bVar.a(str)) {
                if (list.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(bVar);
            }
        }
        return list;
    }

    public e a(@Nullable com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a(this.b, cVar) ? this : new e(this.f9545a, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).a();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public static com.mbridge.msdk.thrid.okio.f a(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }
}
