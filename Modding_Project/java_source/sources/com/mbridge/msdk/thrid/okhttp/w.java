package com.mbridge.msdk.thrid.okhttp;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.thrid.okhttp.p;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    final q f9624a;
    final String b;
    final p c;
    @Nullable
    final x d;
    final Map<Class<?>, Object> e;
    @Nullable
    private volatile c f;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        q f9625a;
        String b;
        p.a c;
        @Nullable
        x d;
        Map<Class<?>, Object> e;

        public a() {
            this.e = Collections.EMPTY_MAP;
            this.b = "GET";
            this.c = new p.a();
        }

        public a a(q qVar) {
            if (qVar != null) {
                this.f9625a = qVar;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a b(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str2 = "https:" + str.substring(4);
                } else {
                    str2 = str;
                }
                return a(q.b(str2));
            }
            throw new NullPointerException("url == null");
        }

        public a c() {
            return a("GET", (x) null);
        }

        public a d() {
            return a("HEAD", (x) null);
        }

        public a c(x xVar) {
            return a(ShareTarget.METHOD_POST, xVar);
        }

        public a d(x xVar) {
            return a("PUT", xVar);
        }

        public a a(String str, String str2) {
            this.c.a(str, str2);
            return this;
        }

        public a a(String str) {
            this.c.b(str);
            return this;
        }

        public a(w wVar) {
            Map<Class<?>, Object> map = Collections.EMPTY_MAP;
            this.e = map;
            this.f9625a = wVar.f9624a;
            this.b = wVar.b;
            this.d = wVar.d;
            this.e = wVar.e.isEmpty() ? map : new LinkedHashMap<>(wVar.e);
            this.c = wVar.c.a();
        }

        public a a(p pVar) {
            this.c = pVar.a();
            return this;
        }

        public a a(c cVar) {
            String cVar2 = cVar.toString();
            return cVar2.isEmpty() ? a("Cache-Control") : b("Cache-Control", cVar2);
        }

        public a b(String str, String str2) {
            this.c.c(str, str2);
            return this;
        }

        public a b() {
            return a(com.mbridge.msdk.thrid.okhttp.internal.c.d);
        }

        public a a(@Nullable x xVar) {
            return a("DELETE", xVar);
        }

        public a b(x xVar) {
            return a("PATCH", xVar);
        }

        public a a(String str, @Nullable x xVar) {
            if (str != null) {
                if (str.length() != 0) {
                    if (xVar != null && !com.mbridge.msdk.thrid.okhttp.internal.http.f.a(str)) {
                        throw new IllegalArgumentException("method " + str + " must not have a request body.");
                    } else if (xVar == null && com.mbridge.msdk.thrid.okhttp.internal.http.f.d(str)) {
                        throw new IllegalArgumentException("method " + str + " must have a request body.");
                    } else {
                        this.b = str;
                        this.d = xVar;
                        return this;
                    }
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public w a() {
            if (this.f9625a != null) {
                return new w(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public w(a aVar) {
        this.f9624a = aVar.f9625a;
        this.b = aVar.b;
        this.c = aVar.c.a();
        this.d = aVar.d;
        this.e = com.mbridge.msdk.thrid.okhttp.internal.c.a(aVar.e);
    }

    @Nullable
    public String a(String str) {
        return this.c.b(str);
    }

    public c b() {
        c cVar = this.f;
        if (cVar != null) {
            return cVar;
        }
        c a2 = c.a(this.c);
        this.f = a2;
        return a2;
    }

    public p c() {
        return this.c;
    }

    public boolean d() {
        return this.f9624a.h();
    }

    public String e() {
        return this.b;
    }

    public a f() {
        return new a(this);
    }

    public q g() {
        return this.f9624a;
    }

    public String toString() {
        return "Request{method=" + this.b + ", url=" + this.f9624a + ", tags=" + this.e + AbstractJsonLexerKt.END_OBJ;
    }

    @Nullable
    public x a() {
        return this.d;
    }
}
