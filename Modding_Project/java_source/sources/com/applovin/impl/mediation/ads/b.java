package com.applovin.impl.mediation.ads;

import android.view.ViewGroup;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.r7;
import com.applovin.impl.s7;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.u2;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b implements s7.a {

    /* renamed from: a  reason: collision with root package name */
    private final k f3415a;
    private final u2 b;
    private final s7 c;
    private final r7 d;
    private final a.InterfaceC0016a e;

    public b(u2 u2Var, ViewGroup viewGroup, a.InterfaceC0016a interfaceC0016a, k kVar) {
        this.f3415a = kVar;
        this.b = u2Var;
        this.e = interfaceC0016a;
        this.d = new r7(viewGroup, kVar);
        s7 s7Var = new s7(viewGroup, kVar, this);
        this.c = s7Var;
        s7Var.a(u2Var);
        kVar.O();
        if (o.a()) {
            o O = kVar.O();
            O.a("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
        }
    }

    public void a() {
        this.c.b();
    }

    public u2 b() {
        return this.b;
    }

    public void c() {
        this.f3415a.O();
        if (o.a()) {
            this.f3415a.O().a("MaxNativeAdView", "Handling view attached to window");
        }
        if (this.b.n0().compareAndSet(false, true)) {
            this.f3415a.O();
            if (o.a()) {
                this.f3415a.O().a("MaxNativeAdView", "Scheduling impression for ad manually...");
            }
            if (this.b.getNativeAd().isExpired()) {
                o.h("MaxNativeAdView", "Attempting to display an expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            } else {
                this.f3415a.f().a(this.b);
            }
            this.f3415a.X().processRawAdImpression(this.b, this.e);
        }
    }

    @Override // com.applovin.impl.s7.a
    public void onLogVisibilityImpression() {
        a(this.d.a(this.b));
    }

    private void a(long j) {
        if (this.b.p0().compareAndSet(false, true)) {
            this.f3415a.O();
            if (o.a()) {
                this.f3415a.O().a("MaxNativeAdView", "Scheduling viewability impression for ad...");
            }
            this.f3415a.X().processViewabilityAdImpressionPostback(this.b, j, this.e);
        }
    }
}
