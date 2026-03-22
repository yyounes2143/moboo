package com.applovin.impl;

import com.applovin.impl.a7;
import com.applovin.impl.r5;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class y5 extends w4 {
    private final e7 g;
    private final AppLovinAdLoadListener h;

    public y5(e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskRenderVastAd", kVar);
        this.h = appLovinAdLoadListener;
        this.g = e7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "Rendering VAST ad...");
        }
        int size = this.g.a().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String str2 = "";
        j7 j7Var = null;
        n7 n7Var = null;
        d7 d7Var = null;
        c7 c7Var = null;
        String str3 = "";
        for (b8 b8Var : this.g.a()) {
            if (m7.b(b8Var)) {
                str = "Wrapper";
            } else {
                str = "InLine";
            }
            b8 b = b8Var.b(str);
            if (b != null) {
                b8 b2 = b.b("AdSystem");
                if (b2 != null) {
                    j7Var = j7.a(b2, j7Var, this.f3803a);
                }
                str2 = m7.a(b, "AdTitle", str2);
                str3 = m7.a(b, "Description", str3);
                m7.a(b.a("Impression"), hashSet, this.g, this.f3803a);
                b8 c = b.c("ViewableImpression");
                if (c != null) {
                    m7.a(c.a("Viewable"), hashSet, this.g, this.f3803a);
                }
                b8 b3 = b.b("AdVerifications");
                if (b3 != null) {
                    c7Var = c7.a(b3, c7Var, this.g, this.f3803a);
                }
                m7.a(b.a("Error"), hashSet2, this.g, this.f3803a);
                b8 c2 = b.c("Creatives");
                if (c2 != null) {
                    for (b8 b8Var2 : c2.b()) {
                        b8 c3 = b8Var2.c("Linear");
                        if (c3 != null) {
                            n7Var = n7.a(c3, n7Var, this.g, this.f3803a);
                        } else {
                            b8 b4 = b8Var2.b("CompanionAds");
                            if (b4 != null) {
                                b8 b5 = b4.b("Companion");
                                if (b5 != null) {
                                    d7Var = d7.a(b5, d7Var, this.g, this.f3803a);
                                }
                            } else if (com.applovin.impl.sdk.o.a()) {
                                this.c.b(this.b, "Received and will skip rendering for an unidentified creative: " + b8Var2);
                            }
                        }
                    }
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                this.c.b(this.b, "Did not find wrapper or inline response for node: " + b8Var);
            }
        }
        a7 a2 = new a7.b().a(this.f3803a).a(this.g.b()).b(this.g.e()).a(this.g.c()).b(str2).a(str3).a(j7Var).a(n7Var).a(d7Var).a(c7Var).b(hashSet).a(c7Var).a(hashSet2).a();
        f7 c4 = m7.c(a2);
        if (c4 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Finished rendering VAST ad: " + a2);
            }
            a2.getAdEventTracker().e();
            this.f3803a.q0().a((w4) new b5(a2, this.f3803a, this.h), r5.b.CACHING);
            return;
        }
        m7.a(this.g, this.h, c4, -6, this.f3803a);
    }
}
