package com.applovin.impl.sdk.network;

import com.applovin.impl.i4;
import com.applovin.impl.l4;
import com.applovin.impl.sdk.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f3720a;
    private String b;
    private Map c;
    private Map d;
    private final JSONObject e;
    private String f;
    private final Object g;
    private final int h;
    private int i;
    private final int j;
    private final int k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final i4.a p;
    private final boolean q;
    private final boolean r;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.sdk.network.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0024a {

        /* renamed from: a  reason: collision with root package name */
        String f3721a;
        String b;
        String c;
        Map e;
        JSONObject f;
        Object g;
        int i;
        int j;
        boolean k;
        boolean m;
        boolean n;
        boolean o;
        boolean p;
        i4.a q;
        int h = 1;
        boolean l = true;
        Map d = new HashMap();

        public C0024a(k kVar) {
            this.i = ((Integer) kVar.a(l4.L2)).intValue();
            this.j = ((Integer) kVar.a(l4.K2)).intValue();
            this.m = ((Boolean) kVar.a(l4.h3)).booleanValue();
            this.n = ((Boolean) kVar.a(l4.L4)).booleanValue();
            this.q = i4.a.a(((Integer) kVar.a(l4.M4)).intValue());
            this.p = ((Boolean) kVar.a(l4.j5)).booleanValue();
        }

        public C0024a a(Map map) {
            this.e = map;
            return this;
        }

        public C0024a b(String str) {
            this.b = str;
            return this;
        }

        public C0024a c(String str) {
            this.f3721a = str;
            return this;
        }

        public C0024a d(boolean z) {
            this.l = z;
            return this;
        }

        public C0024a e(boolean z) {
            this.m = z;
            return this;
        }

        public C0024a f(boolean z) {
            this.o = z;
            return this;
        }

        public C0024a a(JSONObject jSONObject) {
            this.f = jSONObject;
            return this;
        }

        public C0024a b(Map map) {
            this.d = map;
            return this;
        }

        public C0024a c(int i) {
            this.i = i;
            return this;
        }

        public C0024a a(String str) {
            this.c = str;
            return this;
        }

        public C0024a b(int i) {
            this.j = i;
            return this;
        }

        public C0024a c(boolean z) {
            this.k = z;
            return this;
        }

        public C0024a a(Object obj) {
            this.g = obj;
            return this;
        }

        public C0024a b(boolean z) {
            this.p = z;
            return this;
        }

        public C0024a a(int i) {
            this.h = i;
            return this;
        }

        public C0024a a(boolean z) {
            this.n = z;
            return this;
        }

        public C0024a a(i4.a aVar) {
            this.q = aVar;
            return this;
        }

        public a a() {
            return new a(this);
        }
    }

    public a(C0024a c0024a) {
        this.f3720a = c0024a.b;
        this.b = c0024a.f3721a;
        this.c = c0024a.d;
        this.d = c0024a.e;
        this.e = c0024a.f;
        this.f = c0024a.c;
        this.g = c0024a.g;
        int i = c0024a.h;
        this.h = i;
        this.i = i;
        this.j = c0024a.i;
        this.k = c0024a.j;
        this.l = c0024a.k;
        this.m = c0024a.l;
        this.n = c0024a.m;
        this.o = c0024a.n;
        this.p = c0024a.q;
        this.q = c0024a.o;
        this.r = c0024a.p;
    }

    public void a(String str) {
        this.f3720a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    public int c() {
        return this.h - this.i;
    }

    public Object d() {
        return this.g;
    }

    public i4.a e() {
        return this.p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        String str = this.f3720a;
        if (str == null ? aVar.f3720a != null : !str.equals(aVar.f3720a)) {
            return false;
        }
        Map map = this.c;
        if (map == null ? aVar.c != null : !map.equals(aVar.c)) {
            return false;
        }
        Map map2 = this.d;
        if (map2 == null ? aVar.d != null : !map2.equals(aVar.d)) {
            return false;
        }
        String str2 = this.f;
        if (str2 == null ? aVar.f != null : !str2.equals(aVar.f)) {
            return false;
        }
        String str3 = this.b;
        if (str3 == null ? aVar.b != null : !str3.equals(aVar.b)) {
            return false;
        }
        JSONObject jSONObject = this.e;
        if (jSONObject == null ? aVar.e != null : !jSONObject.equals(aVar.e)) {
            return false;
        }
        Object obj2 = this.g;
        if (obj2 == null ? aVar.g != null : !obj2.equals(aVar.g)) {
            return false;
        }
        if (this.h == aVar.h && this.i == aVar.i && this.j == aVar.j && this.k == aVar.k && this.l == aVar.l && this.m == aVar.m && this.n == aVar.n && this.o == aVar.o && this.p == aVar.p && this.q == aVar.q && this.r == aVar.r) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f3720a;
    }

    public Map g() {
        return this.d;
    }

    public String h() {
        return this.b;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int hashCode = super.hashCode() * 31;
        String str = this.f3720a;
        int i4 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i5 = (hashCode + i) * 31;
        String str2 = this.f;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        String str3 = this.b;
        if (str3 != null) {
            i3 = str3.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        Object obj = this.g;
        if (obj != null) {
            i4 = obj.hashCode();
        }
        int b = ((((((((((((((((((((((i7 + i4) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31) + this.k) * 31) + (this.l ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + (this.n ? 1 : 0)) * 31) + (this.o ? 1 : 0)) * 31) + this.p.b()) * 31) + (this.q ? 1 : 0)) * 31) + (this.r ? 1 : 0);
        Map map = this.c;
        if (map != null) {
            b = (b * 31) + map.hashCode();
        }
        Map map2 = this.d;
        if (map2 != null) {
            b = (b * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.e;
        if (jSONObject != null) {
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            return (b * 31) + new String(charArray).hashCode();
        }
        return b;
    }

    public Map i() {
        return this.c;
    }

    public int j() {
        return this.i;
    }

    public int k() {
        return this.k;
    }

    public int l() {
        return this.j;
    }

    public boolean m() {
        return this.o;
    }

    public boolean n() {
        return this.l;
    }

    public boolean o() {
        return this.r;
    }

    public boolean p() {
        return this.m;
    }

    public boolean q() {
        return this.n;
    }

    public boolean r() {
        return this.q;
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.f3720a + ", backupEndpoint=" + this.f + ", httpMethod=" + this.b + ", httpHeaders=" + this.d + ", body=" + this.e + ", emptyResponse=" + this.g + ", initialRetryAttempts=" + this.h + ", retryAttemptsLeft=" + this.i + ", timeoutMillis=" + this.j + ", retryDelayMillis=" + this.k + ", exponentialRetries=" + this.l + ", retryOnAllErrors=" + this.m + ", retryOnNoConnection=" + this.n + ", encodingEnabled=" + this.o + ", encodingType=" + this.p + ", trackConnectionSpeed=" + this.q + ", gzipBodyEncoding=" + this.r + AbstractJsonLexerKt.END_OBJ;
    }

    public String a() {
        return this.f;
    }

    public JSONObject b() {
        return this.e;
    }

    public void a(int i) {
        this.i = i;
    }

    public static C0024a a(k kVar) {
        return new C0024a(kVar);
    }
}
