package com.applovin.impl.sdk;

import com.applovin.impl.g1;
import com.applovin.impl.q2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final k f3677a;
    private final Map b = new HashMap();
    private final Object c = new Object();
    private final Map d = new HashMap();
    private final Object e = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f3678a;
        private final String b;
        private final String c;
        private final String d;
        private final String e;
        private final String f;
        private final String g;
        private long h;
        private final ArrayDeque i;

        public String b() {
            return this.d;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.e;
        }

        public String e() {
            return this.f;
        }

        public String f() {
            return this.g;
        }

        public String g() {
            return this.b;
        }

        public String h() {
            return this.f;
        }

        public c i() {
            return (c) this.i.getLast();
        }

        public String toString() {
            return "AdInfo{state='" + i() + "', adUnitId='" + this.f3678a + "', format='" + this.b + "', adapterName='" + this.c + "', adapterClass='" + this.d + "', adapterVersion='" + this.e + "', bCode='" + this.f + "', creativeId='" + this.g + "', updated=" + this.h + AbstractJsonLexerKt.END_OBJ;
        }

        private b(q2 q2Var, c cVar) {
            this.i = new ArrayDeque();
            this.f3678a = q2Var.getAdUnitId();
            this.b = q2Var.getFormat().getLabel();
            this.c = q2Var.c();
            this.d = q2Var.b();
            this.e = q2Var.z();
            this.f = q2Var.C();
            this.g = q2Var.getCreativeId();
            a(cVar);
        }

        public String a() {
            return this.f3678a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(c cVar) {
            this.h = System.currentTimeMillis();
            this.i.add(cVar);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        LOADING("loading"),
        LOAD("load"),
        SHOW("show"),
        HIDE("hide"),
        CLICK(CampaignEx.JSON_NATIVE_VIDEO_CLICK),
        DESTROY("destroy"),
        SHOW_ERROR("show_error");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3679a;

        c(String str) {
            this.f3679a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3679a;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface d {
        void a(b bVar);
    }

    public g(k kVar) {
        this.f3677a = kVar;
        a();
    }

    public void a(q2 q2Var, c cVar) {
        synchronized (this.e) {
            try {
                String C = q2Var.C();
                b bVar = (b) this.d.get(C);
                if (bVar == null) {
                    if (cVar == c.DESTROY) {
                        return;
                    }
                    bVar = new b(q2Var, cVar);
                    this.d.put(C, bVar);
                } else if (bVar.i() == cVar) {
                    return;
                } else {
                    bVar.a(cVar);
                }
                if (cVar == c.DESTROY) {
                    this.d.remove(C);
                }
                a(bVar, cVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a() {
        synchronized (this.c) {
            try {
                for (c cVar : c.values()) {
                    this.b.put(cVar, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(d dVar, Set set) {
        synchronized (this.c) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    a((c) it.next()).add(dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(d dVar) {
        synchronized (this.c) {
            try {
                for (c cVar : this.b.keySet()) {
                    a(cVar).remove(dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Set a(c cVar) {
        synchronized (this.c) {
            try {
                Set set = (Set) this.b.get(cVar);
                if (g1.a(set)) {
                    return set;
                }
                return new HashSet();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(b bVar, c cVar) {
        synchronized (this.c) {
            try {
                for (d dVar : a(cVar)) {
                    dVar.a(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
