package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a5 extends z4 {
    private final com.applovin.impl.sdk.ad.a l;
    private boolean m;
    private boolean n;

    public a5(com.applovin.impl.sdk.ad.a aVar, com.applovin.impl.sdk.k kVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, kVar, appLovinAdLoadListener);
        this.l = aVar;
    }

    private String d(String str) {
        if (z6.h(com.applovin.impl.sdk.k.o())) {
            str = z6.c(str);
        }
        if (this.l.isOpenMeasurementEnabled()) {
            return this.f3803a.d0().a(str, a2.a((AppLovinAdImpl) this.g));
        }
        return str;
    }

    private void l() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "Caching non-optional HTML resources...");
        }
        this.l.d(d(a(this.l.o1(), this.l.c0(), this.l)));
        this.l.b(true);
        a(this.l);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Finish caching non-optional HTML resources for ad #" + this.l.getAdIdNumber());
        }
        com.applovin.impl.sdk.o oVar2 = this.c;
        String str2 = this.b;
        oVar2.f(str2, "Ad HTML updated to reference locally cached non-optional resources = " + this.l.o1());
    }

    private void m() {
        Uri c;
        if (!k() && (c = c(this.l.s1())) != null) {
            this.l.u1();
            this.l.d(c);
        }
    }

    private void n() {
        List<String> R = this.l.R();
        if (!CollectionUtils.isEmpty(R)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Caching optional HTML resources...");
            }
            String o1 = this.l.o1();
            for (String str : R) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str2 = this.b;
                    oVar.a(str2, "Caching optional resource: " + str);
                }
                String a2 = this.f3803a.H().a(com.applovin.impl.sdk.k.o(), str, this.l.getCachePrefix(), this.l.c0(), true, true, this.f3803a.H().a(str, this.g), this.l.i0(), a2.a((AppLovinAdImpl) this.g));
                if (StringUtils.isValidString(a2)) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar2 = this.c;
                        String str3 = this.b;
                        oVar2.a(str3, "Updating HTML with cached optional resource: " + a2);
                    }
                    this.l.a(Uri.parse(a2));
                    o1 = o1.replace(str, a2);
                    this.l.d(o1);
                } else {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar3 = this.c;
                        String str4 = this.b;
                        oVar3.b(str4, "Failed to cache optional resource: " + str);
                    }
                    this.f3803a.E().a(y1.p0, "cacheOptionalHtmlResource", CollectionUtils.hashMap("url", str));
                }
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar4 = this.c;
                String str5 = this.b;
                oVar4.a(str5, "Finish caching optional HTML resources for ad #" + this.l.getAdIdNumber());
            }
        }
    }

    public void b(boolean z) {
        this.n = z;
    }

    public void c(boolean z) {
        this.m = z;
    }

    @Override // com.applovin.impl.z4, java.lang.Runnable
    public void run() {
        super.run();
        boolean Q0 = this.l.Q0();
        boolean z = this.n;
        if (!Q0 && !z) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Begin processing for non-streaming ad #" + this.l.getAdIdNumber() + "...");
            }
            i();
            l();
            m();
            e();
            n();
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str2 = this.b;
                oVar2.a(str2, "Begin caching for streaming ad #" + this.l.getAdIdNumber() + "...");
            }
            i();
            if (Q0) {
                if (this.m) {
                    e();
                }
                l();
                if (!this.m) {
                    e();
                }
                m();
            } else {
                e();
                l();
            }
        }
        j();
    }
}
