package com.applovin.impl.sdk;

import com.applovin.impl.q2;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final o f3727a;
    private final Map b = new HashMap(5);
    private final Object c = new Object();
    private final Map d = DesugarCollections.synchronizedMap(new HashMap(5));
    private final Map e = DesugarCollections.synchronizedMap(new HashMap(5));

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f3728a;
        private final String b;
        private final String c;

        public a(String str, String str2, String str3) {
            this.f3728a = str;
            this.b = str2;
            this.c = str3;
        }

        public boolean a(Object obj) {
            return obj instanceof a;
        }

        public String b() {
            return this.f3728a;
        }

        public String c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String b = b();
            String b2 = aVar.b();
            if (b != null ? !b.equals(b2) : b2 != null) {
                return false;
            }
            String a2 = a();
            String a3 = aVar.a();
            if (a2 != null ? !a2.equals(a3) : a3 != null) {
                return false;
            }
            String c = c();
            String c2 = aVar.c();
            if (c != null ? c.equals(c2) : c2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String b = b();
            int i = 43;
            if (b == null) {
                hashCode = 43;
            } else {
                hashCode = b.hashCode();
            }
            String a2 = a();
            int i2 = (hashCode + 59) * 59;
            if (a2 == null) {
                hashCode2 = 43;
            } else {
                hashCode2 = a2.hashCode();
            }
            int i3 = i2 + hashCode2;
            String c = c();
            int i4 = i3 * 59;
            if (c != null) {
                i = c.hashCode();
            }
            return i4 + i;
        }

        public String toString() {
            return "MediationWaterfallWinnerTracker.WinningAd(bCode=" + b() + ", adapterName=" + a() + ", networkName=" + c() + ")";
        }

        public String a() {
            return this.b;
        }
    }

    public p(k kVar) {
        this.f3727a = kVar.O();
    }

    public String a(String str) {
        return (String) this.e.get(str);
    }

    public void b(q2 q2Var) {
        this.d.put(q2Var.getAdUnitId(), q2Var.O());
    }

    public void c(q2 q2Var) {
        synchronized (this.c) {
            try {
                if (o.a()) {
                    o oVar = this.f3727a;
                    oVar.a("MediationWaterfallWinnerTracker", "Tracking winning ad: " + q2Var);
                }
                this.b.put(q2Var.getAdUnitId(), new a(q2Var.C(), q2Var.c(), q2Var.getNetworkName()));
            } catch (Throwable th) {
                throw th;
            }
        }
        this.e.put(q2Var.getAdUnitId(), q2Var.O());
    }

    public void a(q2 q2Var) {
        synchronized (this.c) {
            try {
                String adUnitId = q2Var.getAdUnitId();
                a aVar = (a) this.b.get(adUnitId);
                if (aVar == null) {
                    if (o.a()) {
                        this.f3727a.a("MediationWaterfallWinnerTracker", "No previous winner to clear.");
                    }
                    return;
                }
                if (q2Var.C().equals(aVar.b())) {
                    if (o.a()) {
                        o oVar = this.f3727a;
                        oVar.a("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar);
                    }
                    this.b.remove(adUnitId);
                } else if (o.a()) {
                    o oVar2 = this.f3727a;
                    oVar2.a("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + q2Var + " , since it could have already been updated with a new ad: " + aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String b(String str) {
        return (String) this.d.get(str);
    }

    public a c(String str) {
        a aVar;
        synchronized (this.c) {
            aVar = (a) this.b.get(str);
        }
        return aVar;
    }
}
