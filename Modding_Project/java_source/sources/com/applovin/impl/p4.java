package com.applovin.impl;

import android.os.SystemClock;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class p4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3464a;
    private final Map b = new HashMap();
    private final Object c = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3465a;

        static {
            int[] iArr = new int[b.values().length];
            f3465a = iArr;
            try {
                iArr[b.AD_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3465a[b.AD_UNIT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3465a[b.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        AD_FORMAT,
        AD_UNIT_ID,
        ALL
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final q4 f3467a;
        private final long b;
        private final long c;

        public /* synthetic */ c(q4 q4Var, long j, a aVar) {
            this(q4Var, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d() {
            if (SystemClock.elapsedRealtime() - this.c > this.b) {
                return true;
            }
            return false;
        }

        public boolean a(Object obj) {
            return obj instanceof c;
        }

        public q4 c() {
            return this.f3467a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a((Object) this) || b() != cVar.b() || a() != cVar.a()) {
                return false;
            }
            q4 c = c();
            q4 c2 = cVar.c();
            if (c != null ? c.equals(c2) : c2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            long b = b();
            long a2 = a();
            q4 c = c();
            int i = (((((int) (b ^ (b >>> 32))) + 59) * 59) + ((int) ((a2 >>> 32) ^ a2))) * 59;
            if (c == null) {
                hashCode = 43;
            } else {
                hashCode = c.hashCode();
            }
            return i + hashCode;
        }

        public String toString() {
            return "SignalCacheManager.SignalWrapper(signal=" + c() + ", expirationTimeMillis=" + b() + ", cacheTimestampMillis=" + a() + ")";
        }

        private c(q4 q4Var, long j) {
            this.f3467a = q4Var;
            this.b = j;
            this.c = SystemClock.elapsedRealtime();
        }

        public long b() {
            return this.b;
        }

        public long a() {
            return this.c;
        }
    }

    public p4(com.applovin.impl.sdk.k kVar) {
        this.f3464a = kVar;
    }

    public void a(q4 q4Var, r4 r4Var, String str, MaxAdFormat maxAdFormat) {
        if (q4Var == null) {
            return;
        }
        long u = r4Var.u();
        if (u <= 0) {
            return;
        }
        this.f3464a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3464a.O();
            O.a("SignalCacheManager", "Caching signal for: " + r4Var);
        }
        String a2 = a(r4Var, str, maxAdFormat);
        c cVar = new c(q4Var, u, null);
        synchronized (this.c) {
            this.b.put(a2, cVar);
        }
    }

    public q4 b(r4 r4Var, String str, MaxAdFormat maxAdFormat) {
        String a2 = a(r4Var, str, maxAdFormat);
        synchronized (this.c) {
            try {
                c cVar = (c) this.b.get(a2);
                if (cVar == null) {
                    return null;
                }
                if (cVar.d()) {
                    this.b.remove(a2);
                    return null;
                }
                this.f3464a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f3464a.O();
                    O.a("SignalCacheManager", "Returning cached signal for: " + r4Var);
                }
                return cVar.f3467a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private String a(r4 r4Var, String str, MaxAdFormat maxAdFormat) {
        String c2 = r4Var.c();
        int i = a.f3465a[r4Var.t().ordinal()];
        if (i == 1) {
            return c2 + "_" + maxAdFormat.getLabel();
        } else if (i != 2) {
            return c2;
        } else {
            return c2 + "_" + str;
        }
    }
}
