package com.mbridge.msdk.thrid.okhttp;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class i {
    private static final f[] e;
    private static final f[] f;
    public static final i g;
    public static final i h;
    public static final i i;
    public static final i j;

    /* renamed from: a  reason: collision with root package name */
    final boolean f9551a;
    final boolean b;
    @Nullable
    final String[] c;
    @Nullable
    final String[] d;

    static {
        f fVar = f.n1;
        f fVar2 = f.o1;
        f fVar3 = f.p1;
        f fVar4 = f.q1;
        f fVar5 = f.r1;
        f fVar6 = f.Z0;
        f fVar7 = f.d1;
        f fVar8 = f.a1;
        f fVar9 = f.e1;
        f fVar10 = f.k1;
        f fVar11 = f.j1;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11};
        e = fVarArr;
        f[] fVarArr2 = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, fVar10, fVar11, f.K0, f.L0, f.i0, f.j0, f.G, f.K, f.k};
        f = fVarArr2;
        a a2 = new a(true).a(fVarArr);
        b0 b0Var = b0.TLS_1_3;
        b0 b0Var2 = b0.TLS_1_2;
        g = a2.a(b0Var, b0Var2).a(true).a();
        a a3 = new a(true).a(fVarArr2);
        b0 b0Var3 = b0.TLS_1_0;
        h = a3.a(b0Var, b0Var2, b0.TLS_1_1, b0Var3).a(true).a();
        i = new a(true).a(fVarArr2).a(b0Var3).a(true).a();
        j = new a(false).a();
    }

    public i(a aVar) {
        this.f9551a = aVar.f9552a;
        this.c = aVar.b;
        this.d = aVar.c;
        this.b = aVar.d;
    }

    @Nullable
    public List<f> a() {
        String[] strArr = this.c;
        if (strArr != null) {
            return f.a(strArr);
        }
        return null;
    }

    public boolean b() {
        return this.f9551a;
    }

    public boolean c() {
        return this.b;
    }

    @Nullable
    public List<b0> d() {
        String[] strArr = this.d;
        if (strArr != null) {
            return b0.a(strArr);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        i iVar = (i) obj;
        boolean z = this.f9551a;
        if (z != iVar.f9551a) {
            return false;
        }
        if (z && (!Arrays.equals(this.c, iVar.c) || !Arrays.equals(this.d, iVar.d) || this.b != iVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.f9551a) {
            return ((((Arrays.hashCode(this.c) + 527) * 31) + Arrays.hashCode(this.d)) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        String str;
        if (!this.f9551a) {
            return "ConnectionSpec()";
        }
        String str2 = "[all enabled]";
        if (this.c == null) {
            str = "[all enabled]";
        } else {
            str = a().toString();
        }
        if (this.d != null) {
            str2 = d().toString();
        }
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + this.b + ")";
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f9552a;
        @Nullable
        String[] b;
        @Nullable
        String[] c;
        boolean d;

        public a(boolean z) {
            this.f9552a = z;
        }

        public a a(f... fVarArr) {
            if (this.f9552a) {
                String[] strArr = new String[fVarArr.length];
                for (int i = 0; i < fVarArr.length; i++) {
                    strArr[i] = fVarArr[i].f9548a;
                }
                return a(strArr);
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a b(String... strArr) {
            if (this.f9552a) {
                if (strArr.length != 0) {
                    this.c = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a(i iVar) {
            this.f9552a = iVar.f9551a;
            this.b = iVar.c;
            this.c = iVar.d;
            this.d = iVar.b;
        }

        public a a(String... strArr) {
            if (this.f9552a) {
                if (strArr.length != 0) {
                    this.b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public a a(b0... b0VarArr) {
            if (this.f9552a) {
                String[] strArr = new String[b0VarArr.length];
                for (int i = 0; i < b0VarArr.length; i++) {
                    strArr[i] = b0VarArr[i].f9542a;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public a a(boolean z) {
            if (this.f9552a) {
                this.d = z;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public i a() {
            return new i(this);
        }
    }

    private i b(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.c != null) {
            enabledCipherSuites = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.b, sSLSocket.getEnabledCipherSuites(), this.c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.d != null) {
            enabledProtocols = com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.q, sSLSocket.getEnabledProtocols(), this.d);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int a2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(f.b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z && a2 != -1) {
            enabledCipherSuites = com.mbridge.msdk.thrid.okhttp.internal.c.a(enabledCipherSuites, supportedCipherSuites[a2]);
        }
        return new a(this).a(enabledCipherSuites).b(enabledProtocols).a();
    }

    public void a(SSLSocket sSLSocket, boolean z) {
        i b = b(sSLSocket, z);
        String[] strArr = b.d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = b.c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean a(SSLSocket sSLSocket) {
        if (this.f9551a) {
            String[] strArr = this.d;
            if (strArr == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(com.mbridge.msdk.thrid.okhttp.internal.c.q, strArr, sSLSocket.getEnabledProtocols())) {
                String[] strArr2 = this.c;
                return strArr2 == null || com.mbridge.msdk.thrid.okhttp.internal.c.b(f.b, strArr2, sSLSocket.getEnabledCipherSuites());
            }
            return false;
        }
        return false;
    }
}
