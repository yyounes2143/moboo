package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.impl.f6;
import com.applovin.impl.g3;
import com.applovin.impl.h;
import com.applovin.impl.i;
import com.applovin.impl.k0;
import com.applovin.impl.l2;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.q2;
import com.applovin.impl.q7;
import com.applovin.impl.r;
import com.applovin.impl.r5;
import com.applovin.impl.r7;
import com.applovin.impl.s2;
import com.applovin.impl.s7;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w4;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdViewConfiguration;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements f.a, s7.a, i.b {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;

    /* renamed from: a  reason: collision with root package name */
    private final Context f3353a;
    private final MaxAdView b;
    private final String c;
    private final View d;
    private long e;
    private s2 f;
    private String g;
    private String h;
    private final MaxAdViewConfiguration i;
    private final b j;
    private final d k;
    private final f l;
    private final r7 m;
    private final s7 n;
    private final Object o;
    private final Object p;
    private s2 q;
    private MaxAd r;
    private boolean s;
    private boolean t;
    private boolean u;
    private final AtomicBoolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends c {
        private b() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            o oVar = MaxAdViewImpl.this.logger;
            if (o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            l2.a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.a()) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.X().destroyAd(maxAd);
                return;
            }
            s2 s2Var = (s2) maxAd;
            s2Var.g(MaxAdViewImpl.this.g);
            s2Var.f(MaxAdViewImpl.this.h);
            if (s2Var.y() != null) {
                if (s2Var.p0()) {
                    long k0 = s2Var.k0();
                    MaxAdViewImpl.this.sdk.O();
                    if (o.a()) {
                        o O = MaxAdViewImpl.this.sdk.O();
                        String str2 = MaxAdViewImpl.this.tag;
                        O.a(str2, "Scheduling banner ad refresh " + k0 + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                    }
                    MaxAdViewImpl.this.l.a(k0);
                    if (MaxAdViewImpl.this.l.g() || MaxAdViewImpl.this.u) {
                        o oVar3 = MaxAdViewImpl.this.logger;
                        if (o.a()) {
                            MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                            maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                        }
                        MaxAdViewImpl.this.l.j();
                    }
                }
                o oVar4 = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                    o oVar5 = maxAdViewImpl3.logger;
                    String str3 = maxAdViewImpl3.tag;
                    oVar5.a(str3, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.f(MaxAdViewImpl.this.adListener, maxAd, true);
                MaxAdViewImpl.this.d(s2Var);
                return;
            }
            MaxAdViewImpl.this.sdk.X().destroyAd(s2Var);
            onAdLoadFailed(s2Var.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public abstract class c implements MaxAdListener, MaxAdViewAdListener, MaxAdRevenueListener, a.InterfaceC0016a {
        private c() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.a(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(((Boolean) MaxAdViewImpl.this.sdk.a(g3.x7)).booleanValue() ? MaxAdViewImpl.this.r : MaxAdViewImpl.this.q)) {
                MaxAdViewImpl.this.r = null;
                if ((MaxAdViewImpl.this.q.q0() || MaxAdViewImpl.this.B) && MaxAdViewImpl.this.s) {
                    MaxAdViewImpl.this.s = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdViewAdListener.onAdCollapsed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                if (((Boolean) MaxAdViewImpl.this.sdk.a(g3.x7)).booleanValue()) {
                    MaxAdViewImpl.this.r = maxAd;
                }
                if ((MaxAdViewImpl.this.q.q0() || MaxAdViewImpl.this.B) && !MaxAdViewImpl.this.l.g()) {
                    MaxAdViewImpl.this.s = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdViewAdListener.onAdExpanded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.q)) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                l2.e(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            o oVar = MaxAdViewImpl.this.logger;
            if (o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxAdViewImpl.this.requestListener);
            }
            l2.a(MaxAdViewImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            o oVar = MaxAdViewImpl.this.logger;
            if (o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                o oVar2 = maxAdViewImpl.logger;
                String str = maxAdViewImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.revenueListener);
            }
            l2.a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d extends c {
        private d() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            o oVar = MaxAdViewImpl.this.logger;
            if (o.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                o oVar2 = maxAdViewImpl.logger;
                String str2 = maxAdViewImpl.tag;
                oVar2.a(str2, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.x) {
                o oVar = MaxAdViewImpl.this.logger;
                if (o.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    o oVar2 = maxAdViewImpl.logger;
                    String str = maxAdViewImpl.tag;
                    oVar2.a(str, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.X().destroyAd(maxAd);
                return;
            }
            o oVar3 = MaxAdViewImpl.this.logger;
            if (o.a()) {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Successfully precached ad for refresh");
            }
            if (!((Boolean) MaxAdViewImpl.this.sdk.a(g3.d7)).booleanValue()) {
                MaxAdViewImpl.this.a(maxAd);
            } else {
                MaxAdViewImpl.this.b(maxAd);
            }
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdViewConfiguration maxAdViewConfiguration, MaxAdView maxAdView, View view, Context context) {
        super(str, maxAdFormat, "MaxAdView", AppLovinSdk.getInstance(context).a());
        this.c = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.e = Long.MAX_VALUE;
        this.o = new Object();
        this.p = new Object();
        this.q = null;
        this.r = null;
        this.v = new AtomicBoolean();
        this.x = false;
        this.f3353a = context.getApplicationContext();
        this.b = maxAdView;
        this.d = view;
        this.j = new b();
        this.k = new d();
        this.l = new f(this.sdk, this);
        this.m = new r7(maxAdView, this.sdk);
        this.n = new s7(maxAdView, this.sdk, this);
        this.i = maxAdViewConfiguration;
        this.sdk.j().a(this);
        if (maxAdViewConfiguration != null && maxAdViewConfiguration.getAdaptiveType() != MaxAdViewConfiguration.AdaptiveType.NONE) {
            setExtraParameter("adaptive_banner", Boolean.toString(true));
            setLocalExtraParameter("adaptive_banner_type", maxAdViewConfiguration.getAdaptiveType().toString());
            int adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth();
            if (adaptiveWidth > 0) {
                setLocalExtraParameter("adaptive_banner_width", Integer.valueOf(adaptiveWidth));
            }
            int inlineMaximumHeight = maxAdViewConfiguration.getInlineMaximumHeight();
            if (inlineMaximumHeight > 0) {
                setLocalExtraParameter("inline_adaptive_banner_max_height", Integer.valueOf(inlineMaximumHeight));
            }
        }
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Created new MaxAdView (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        if (((Boolean) this.sdk.a(g3.e7)).booleanValue()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdViewImpl.this.g();
                }
            });
        } else {
            g();
        }
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.g;
    }

    public void loadAd() {
        loadAd(h.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onAdRefresh() {
        if (((Boolean) this.sdk.a(g3.d7)).booleanValue()) {
            f();
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.i.b
    public void onCreativeIdGenerated(String str, String str2) {
        s2 s2Var = this.q;
        if (s2Var != null && s2Var.O().equalsIgnoreCase(str)) {
            this.q.h(str2);
            l2.b(this.adReviewListener, str2, this.q);
            return;
        }
        s2 s2Var2 = this.f;
        if (s2Var2 != null && s2Var2.O().equalsIgnoreCase(str)) {
            this.f.h(str2);
        }
    }

    @Override // com.applovin.impl.s7.a
    public void onLogVisibilityImpression() {
        a(this.q, this.m.a(this.q));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.a(g3.a7)).booleanValue() && this.l.h()) {
            if (q7.b(i)) {
                if (o.a()) {
                    this.logger.a(this.tag, "Ad view visible");
                }
                this.l.d();
                return;
            }
            if (o.a()) {
                this.logger.a(this.tag, "Ad view hidden");
            }
            this.l.c();
        }
    }

    public void setCustomData(String str) {
        if (this.q != null && o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.k(str2, "Setting custom data (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        z6.b(str, this.tag);
        this.h = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.q != null && o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.k(str2, "Setting placement (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        this.g = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.e = i;
    }

    public void startAutoRefresh() {
        this.u = false;
        if (this.l.g()) {
            this.l.m();
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Resumed auto-refresh with remaining time: " + this.l.b() + "ms");
            }
        } else if (o.a()) {
            this.logger.a(this.tag, "Ignoring call to startAutoRefresh() - ad refresh is not paused");
        }
    }

    public void stopAutoRefresh() {
        if (this.q != null) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Pausing auto-refresh with remaining time: " + this.l.b() + "ms");
            }
            this.l.j();
        } else if (!this.y && !((Boolean) this.sdk.a(g3.c7)).booleanValue()) {
            o.j(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
        } else {
            this.u = true;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MaxAdView{adUnitId='");
        sb.append(this.adUnitId);
        sb.append('\'');
        sb.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.b) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", isDestroyed=");
        sb.append(a());
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final s2 s2Var) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.b(s2Var);
            }
        });
    }

    private void e() {
        this.v.set(false);
        if (this.f != null) {
            i();
        } else if (b()) {
            if (this.t) {
                if (o.a()) {
                    this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                }
                loadAd(h.REFRESH);
                return;
            }
            if (o.a()) {
                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.v.set(true);
        } else {
            if (o.a()) {
                this.logger.a(this.tag, "Refreshing ad from network...");
            }
            loadAd(h.REFRESH);
        }
    }

    private void f() {
        boolean z;
        boolean z2;
        synchronized (this.p) {
            try {
                z = false;
                this.v.set(false);
                z2 = this.f != null;
                if (!z2) {
                    if (b()) {
                        if (this.t) {
                            if (o.a()) {
                                this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                            }
                        } else {
                            if (o.a()) {
                                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
                            }
                            this.v.set(true);
                        }
                    } else if (o.a()) {
                        this.logger.a(this.tag, "Refreshing ad from network...");
                    }
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            i();
        } else if (z) {
            loadAd(h.REFRESH);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        h();
        if (this.f != null) {
            this.sdk.X().destroyAd(this.f);
        }
        synchronized (this.o) {
            this.x = true;
        }
        this.l.a();
        this.sdk.j().b(this);
        if (this.sdk.R() != null) {
            this.sdk.R().c(this.adUnitId, this.c);
        } else {
            this.sdk.Q().c(this.adUnitId, this.c);
        }
        super.destroy();
    }

    private void h() {
        s2 s2Var;
        MaxAdView maxAdView = this.b;
        if (maxAdView != null) {
            r.a(maxAdView, this.d);
        }
        this.n.b();
        synchronized (this.o) {
            s2Var = this.q;
        }
        MaxAd maxAd = this.r;
        if (maxAd != null && maxAd.equals(s2Var)) {
            if (o.a()) {
                this.logger.a(this.tag, "Collapsing ad manually for removed ad.");
            }
            l2.b(this.j, maxAd);
        }
        if (s2Var != null) {
            this.sdk.X().destroyAd(s2Var);
        }
    }

    private void i() {
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Rendering for cached ad: " + this.f + "...");
        }
        this.j.onAdLoaded(this.f);
        this.f = null;
    }

    public void loadAd(h hVar) {
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "" + this + " Loading ad for " + this.adUnitId + "...");
        }
        boolean z = this.y || ((Boolean) this.sdk.a(g3.c7)).booleanValue();
        if (z && !this.l.g() && this.l.h()) {
            String str2 = this.tag;
            o.h(str2, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.l.b()) + " seconds.");
        } else if (z) {
            if (this.f != null) {
                if (o.a()) {
                    this.logger.a(this.tag, "Rendering cached ad");
                }
                i();
            } else if (this.w) {
                if (o.a()) {
                    this.logger.a(this.tag, "Waiting for precache ad to load to render");
                }
                this.v.set(true);
            } else {
                if (o.a()) {
                    this.logger.a(this.tag, "Loading ad...");
                }
                a(hVar, this.j);
            }
        } else {
            if (o.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(hVar, this.j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final s2 s2Var) {
        View y = s2Var.y();
        String str = y == null ? "MaxAdView does not have a loaded ad view" : null;
        MaxAdView maxAdView = this.b;
        if (maxAdView == null) {
            str = "MaxAdView does not have a parent view";
        }
        if (str != null) {
            if (o.a()) {
                this.logger.b(this.tag, str);
            }
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, str);
            if (o.a()) {
                o oVar = this.logger;
                String str2 = this.tag;
                oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + s2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            l2.a(this.adListener, (MaxAd) s2Var, (MaxError) maxErrorImpl, true);
            this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, s2Var);
            return;
        }
        h();
        a((q2) s2Var);
        if (s2Var.j0()) {
            this.n.a(s2Var);
        }
        maxAdView.setDescendantFocusability(393216);
        if (s2Var.l0() != Long.MAX_VALUE) {
            this.d.setBackgroundColor((int) s2Var.l0());
        } else {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.d.setBackgroundColor((int) j);
            } else {
                this.d.setBackgroundColor(0);
            }
        }
        maxAdView.addView(y);
        a(y, s2Var);
        this.sdk.z().d(s2Var);
        c(s2Var);
        synchronized (this.o) {
            this.q = s2Var;
        }
        if (o.a()) {
            this.logger.a(this.tag, "Scheduling impression for ad manually...");
        }
        this.sdk.X().processRawAdImpression(s2Var, this.j);
        if (StringUtils.isValidString(this.q.getAdReviewCreativeId())) {
            l2.a(this.adReviewListener, this.q.getAdReviewCreativeId(), (MaxAd) this.q, true);
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.a(s2Var);
            }
        }, s2Var.n0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        if (o.a()) {
            this.logger.a(this.tag, "Loading ad for precache request...");
        }
        a(h.SEQUENTIAL_OR_PRECACHE, this.k);
    }

    private void d() {
        if (b()) {
            if (o.a()) {
                this.logger.a(this.tag, "Scheduling refresh precache request now");
            }
            this.w = true;
            this.sdk.q0().a((w4) new f6(this.sdk, "loadMaxAdForPrecacheRequest", new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdViewImpl.this.c();
                }
            }), r5.b.MEDIATION);
        }
    }

    private void c(s2 s2Var) {
        int height = this.b.getHeight();
        int width = this.b.getWidth();
        if (height > 0 || width > 0) {
            int pxToDp = AppLovinSdkUtils.pxToDp(this.f3353a, height);
            int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f3353a, width);
            MaxAdFormat format = s2Var.getFormat();
            int height2 = (this.D ? format.getAdaptiveSize(pxToDp2, this.b.getContext()) : format.getSize()).getHeight();
            int min = Math.min(format.getSize().getWidth(), k0.b(this.f3353a).x);
            if (pxToDp < height2 || pxToDp2 < min) {
                StringBuilder sb = new StringBuilder();
                sb.append("\n**************************************************\n`MaxAdView` size ");
                sb.append(pxToDp2);
                sb.append("x");
                sb.append(pxToDp);
                sb.append(" dp smaller than required ");
                sb.append(this.D ? "adaptive " : "");
                sb.append("size: ");
                sb.append(min);
                sb.append("x");
                sb.append(height2);
                sb.append(" dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n");
                String sb2 = sb.toString();
                if (o.a()) {
                    this.logger.b("AppLovinSdk", sb2);
                }
            }
        }
    }

    private void a(final h hVar, final a.InterfaceC0016a interfaceC0016a) {
        if (a()) {
            boolean c2 = z6.c(this.sdk);
            this.sdk.E().a(y1.u0, "attemptingToLoadDestroyedAdView", CollectionUtils.hashMap("details", "debug=" + c2));
            if (!c2) {
                o.h(this.tag, "Failed to load new ad - this instance is already destroyed");
                return;
            }
            throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
        }
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdViewImpl.this.a(interfaceC0016a, hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a.InterfaceC0016a interfaceC0016a, h hVar) {
        int adaptiveWidth;
        s2 s2Var = this.q;
        if (s2Var != null) {
            long a2 = this.m.a(s2Var);
            this.extraParameters.put("visible_ad_ad_unit_id", this.q.getAdUnitId());
            this.extraParameters.put("viewability_flags", Long.valueOf(a2));
        } else {
            this.extraParameters.remove("visible_ad_ad_unit_id");
            this.extraParameters.remove("viewability_flags");
        }
        int pxToDp = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getWidth());
        int pxToDp2 = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getHeight());
        this.extraParameters.put("viewport_width", Integer.valueOf(pxToDp));
        this.extraParameters.put("viewport_height", Integer.valueOf(pxToDp2));
        this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(this.l.g() || this.u));
        this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(this.z));
        MaxAdViewConfiguration maxAdViewConfiguration = this.i;
        if (maxAdViewConfiguration != null && (adaptiveWidth = maxAdViewConfiguration.getAdaptiveWidth()) > 0 && pxToDp != adaptiveWidth) {
            String str = this.tag;
            o.j(str, "The requested adaptive ad view width (" + adaptiveWidth + " dp) is different from the MaxAdView width (" + pxToDp + " dp).");
        }
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Loading " + this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + this.adUnitId + "' and notifying " + interfaceC0016a + "...");
        }
        this.sdk.X().loadAd(this.adUnitId, this.c, this.adFormat, hVar, this.localExtraParameters, this.extraParameters, this.f3353a, interfaceC0016a);
    }

    private void a(String str, String str2) {
        if ("allow_pause_auto_refresh_immediately".equalsIgnoreCase(str)) {
            if (o.a()) {
                o oVar = this.logger;
                String str3 = this.tag;
                oVar.a(str3, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.y = Boolean.parseBoolean(str2);
        } else if ("disable_auto_retries".equalsIgnoreCase(str)) {
            if (o.a()) {
                o oVar2 = this.logger;
                String str4 = this.tag;
                oVar2.a(str4, "Updated disable auto-retries to: " + str2);
            }
            this.z = Boolean.parseBoolean(str2);
        } else if ("disable_precache".equalsIgnoreCase(str)) {
            if (o.a()) {
                o oVar3 = this.logger;
                String str5 = this.tag;
                oVar3.a(str5, "Updated precached disabled to: " + str2);
            }
            this.A = Boolean.parseBoolean(str2);
        } else if ("should_stop_auto_refresh_on_ad_expand".equals(str)) {
            if (o.a()) {
                o oVar4 = this.logger;
                String str6 = this.tag;
                oVar4.a(str6, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.B = Boolean.parseBoolean(str2);
        } else if ("force_precache".equals(str)) {
            if (o.a()) {
                o oVar5 = this.logger;
                String str7 = this.tag;
                oVar5.a(str7, "Updated force precache to: " + str2);
            }
            this.C = Boolean.parseBoolean(str2);
        } else if ("adaptive_banner".equalsIgnoreCase(str)) {
            if (o.a()) {
                o oVar6 = this.logger;
                String str8 = this.tag;
                oVar6.a(str8, "Updated is adaptive banner to: " + str2);
            }
            if (this.i == null) {
                o.h(this.tag, "You configured adaptive banners incorrectly by setting extra parameters to the MaxAdView! Please configure adaptive banners via MaxAdViewConfiguration instead. Learn more: https://developers.applovin.com/en/max/android/ad-formats/banner-and-mrec-ads#adaptive-banners");
            }
            this.D = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxAd maxAd) {
        boolean compareAndSet;
        this.w = false;
        synchronized (this.p) {
            try {
                compareAndSet = this.v.compareAndSet(true, false);
                if (!compareAndSet) {
                    if (o.a()) {
                        this.logger.a(this.tag, "Saving precache ad...");
                    }
                    s2 s2Var = (s2) maxAd;
                    this.f = s2Var;
                    s2Var.g(this.g);
                    this.f.f(this.h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (compareAndSet) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.j.onAdLoaded(maxAd);
        }
    }

    private boolean b() {
        if (this.A) {
            return false;
        }
        return ((Boolean) this.sdk.a(g3.j7)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(s2 s2Var) {
        long a2 = this.m.a(s2Var);
        if (!s2Var.j0()) {
            a(s2Var, a2);
        }
        a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        if (a()) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Ad load failure with ad unit ID '" + this.adUnitId + "' occured after MaxAdView was destroyed.");
            }
        } else if (this.sdk.c(g3.W6).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.O();
            if (o.a()) {
                o O = this.sdk.O();
                String str2 = this.tag;
                O.a(str2, "Ignoring banner ad refresh for error code " + maxError.getCode());
            }
        } else if (!this.u && !this.l.g()) {
            this.t = true;
            this.w = false;
            long longValue = ((Long) this.sdk.a(g3.V6)).longValue();
            if (longValue >= 0) {
                this.sdk.O();
                if (o.a()) {
                    o O2 = this.sdk.O();
                    String str3 = this.tag;
                    O2.a(str3, "Scheduling failed banner ad refresh " + longValue + " milliseconds from now for '" + this.adUnitId + "'...");
                }
                this.l.a(longValue);
            }
        } else {
            if (this.w) {
                if (o.a()) {
                    this.logger.a(this.tag, "Refresh precache failed when auto-refresh is stopped");
                }
                this.w = false;
            }
            if (this.v.get()) {
                if (o.a()) {
                    o oVar2 = this.logger;
                    String str4 = this.tag;
                    oVar2.a(str4, "Refresh precache failed - MaxAdListener.onAdLoadFailed(adUnitId=" + this.adUnitId + ", error=" + maxError + "), listener=" + this.adListener);
                }
                l2.a(this.adListener, this.adUnitId, maxError, true);
            }
        }
    }

    private void a(View view, s2 s2Var) {
        int o0 = s2Var.o0();
        int m0 = s2Var.m0();
        int dpToPx = o0 == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), o0);
        int dpToPx2 = m0 != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), m0) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, dpToPx2);
        } else {
            layoutParams.width = dpToPx;
            layoutParams.height = dpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            if (o.a()) {
                this.logger.a(this.tag, "Pinning ad view to MAX ad view with width: " + dpToPx + " and height: " + dpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i : q7.a(this.b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    private void a(s2 s2Var, long j) {
        if (o.a()) {
            this.logger.a(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.X().processViewabilityAdImpressionPostback(s2Var, j, this.j);
    }

    private void a(long j) {
        if (z6.a(j, ((Long) this.sdk.a(g3.i7)).longValue()) && !this.C) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
            }
            if (o.a()) {
                this.logger.a(this.tag, "Waiting for refresh timer to manually fire request");
            }
            this.t = true;
            return;
        }
        if (o.a()) {
            this.logger.a(this.tag, "No undesired viewability flags matched or forcing precache - scheduling viewability");
        }
        this.t = false;
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.w = false;
        if (this.v.compareAndSet(true, false)) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.j.onAdLoaded(maxAd);
            return;
        }
        if (o.a()) {
            this.logger.a(this.tag, "Saving precache ad...");
        }
        s2 s2Var = (s2) maxAd;
        this.f = s2Var;
        s2Var.g(this.g);
        this.f.f(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        boolean z;
        synchronized (this.o) {
            z = this.x;
        }
        return z;
    }
}
