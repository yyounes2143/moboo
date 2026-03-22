package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d6 extends w4 {
    private final e7 g;
    private final AppLovinAdLoadListener h;

    public d6(e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskResolveVastWrapper", kVar);
        this.h = appLovinAdLoadListener;
        this.g = e7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        String a2 = m7.a(this.g);
        if (StringUtils.isValidString(a2)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Resolving VAST ad with depth " + this.g.d() + " at " + a2);
            }
            try {
                this.f3803a.q0().a(new a(com.applovin.impl.sdk.network.a.a(this.f3803a).b(a2).c("GET").a(b8.f).a(((Integer) this.f3803a.a(l4.v4)).intValue()).c(((Integer) this.f3803a.a(l4.w4)).intValue()).a(false).a(), this.f3803a));
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.b, "Unable to resolve VAST wrapper", th);
                }
                a(-1);
                return;
            }
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.b(this.b, "Resolving VAST failed. Could not find resolution URL");
        }
        a(-1);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, b8 b8Var, int i) {
            this.f3803a.q0().a(v5.a(b8Var, d6.this.g, d6.this.h, d6.this.f3803a));
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, b8 b8Var) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str3 = this.b;
                oVar.b(str3, "Unable to resolve VAST wrapper. Server returned " + i);
            }
            d6.this.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.b(str, "Failed to resolve VAST wrapper due to error code " + i);
        }
        if (i == -1009) {
            AppLovinAdLoadListener appLovinAdLoadListener = this.h;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i);
                return;
            }
            return;
        }
        m7.a(this.g, this.h, i == -1001 ? f7.TIMED_OUT : f7.GENERAL_WRAPPER_ERROR, i, this.f3803a);
    }
}
