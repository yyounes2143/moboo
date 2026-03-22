package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.f6;
import com.applovin.impl.g3;
import com.applovin.impl.h;
import com.applovin.impl.i;
import com.applovin.impl.l2;
import com.applovin.impl.m3;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o1;
import com.applovin.impl.q2;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.a;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.t2;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxFullscreenAdImpl extends com.applovin.impl.mediation.ads.a implements a.InterfaceC0020a, i.b {

    /* renamed from: a  reason: collision with root package name */
    private final a f3355a;
    private final WeakReference b;
    private final b c;
    private final com.applovin.impl.mediation.b d;
    private final Object e;
    private t2 f;
    private c g;
    private final AtomicBoolean h;
    private final AtomicBoolean i;
    private boolean j;
    private boolean k;
    private String l;
    private String m;
    private WeakReference n;
    private WeakReference o;
    private WeakReference p;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        Activity getActivity();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, a aVar, String str2, k kVar, Context context) {
        super(str, maxAdFormat, str2, kVar);
        this.e = new Object();
        this.f = null;
        this.g = c.IDLE;
        this.h = new AtomicBoolean();
        this.i = new AtomicBoolean();
        this.n = new WeakReference(null);
        this.o = new WeakReference(null);
        this.p = new WeakReference(null);
        this.f3355a = aVar;
        this.c = createAdListenerWrapper();
        this.d = new com.applovin.impl.mediation.b(kVar);
        this.b = new WeakReference(context);
        kVar.j().a(this);
        o.g(str2, "Created new " + str2 + " (" + this + ")");
    }

    public b createAdListenerWrapper() {
        return new b();
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a(c.DESTROYED, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxFullscreenAdImpl.this.b();
            }
        });
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.e) {
            try {
                t2 t2Var = this.f;
                if (t2Var != null && t2Var.U() && this.g == c.READY) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            this.sdk.I().c(this.adUnitId);
        }
        return z;
    }

    public void loadAd() {
        loadAd(h.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0020a
    public void onAdExpired(o1 o1Var) {
        Activity activity;
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Ad expired " + getAdUnitId());
        }
        this.h.set(true);
        a aVar = this.f3355a;
        if (aVar != null) {
            activity = aVar.getActivity();
        } else {
            activity = null;
        }
        if (activity == null && (activity = this.sdk.e().b()) == null) {
            c();
            this.c.onAdLoadFailed(this.adUnitId, MaxAdapterError.MISSING_ACTIVITY);
            return;
        }
        this.extraParameters.put("expired_ad_ad_unit_id", getAdUnitId());
        this.sdk.X().loadAd(this.adUnitId, null, this.adFormat, h.EXPIRED, this.localExtraParameters, this.extraParameters, activity, this.c);
    }

    @Override // com.applovin.impl.i.b
    public void onCreativeIdGenerated(String str, String str2) {
        t2 t2Var = this.f;
        if (t2Var != null && t2Var.O().equalsIgnoreCase(str)) {
            this.f.h(str2);
            l2.b(this.adReviewListener, str2, this.f);
        }
    }

    public void showAd(final String str, final String str2, final Activity activity) {
        t2 t2Var;
        List b2 = this.sdk.s0().b();
        if (this.sdk.s0().d() && b2 != null && (t2Var = this.f) != null && !b2.contains(t2Var.c())) {
            final String str3 = "Attempting to show ad from <" + this.f.c() + "> which is not in the list of selected ad networks " + b2;
            o.h(this.tag, str3);
            a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.this.b(str3);
                }
            });
            return;
        }
        if (activity == null) {
            activity = this.sdk.u0();
        }
        if (a(activity, str)) {
            a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.this.a(str, str2, activity);
                }
            });
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tag);
        sb.append("{adUnitId='");
        sb.append(this.adUnitId);
        sb.append('\'');
        sb.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.f3355a) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", revenueListener=");
        sb.append(this.revenueListener);
        sb.append(", requestListener");
        sb.append(this.requestListener);
        sb.append(", adReviewListener");
        sb.append(this.adReviewListener);
        sb.append(", isReady=");
        sb.append(isReady());
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements MaxAdListener, MaxAdRevenueListener, a.InterfaceC0016a {
        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, MaxError maxError) {
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str2 = maxFullscreenAdImpl.tag;
                oVar2.a(str2, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.a(MaxFullscreenAdImpl.this.adListener, str, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(MaxAd maxAd) {
            if (MaxFullscreenAdImpl.this.k) {
                MaxFullscreenAdImpl.this.d();
                return;
            }
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.f(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.a(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(final MaxAd maxAd, final MaxError maxError) {
            final boolean z = MaxFullscreenAdImpl.this.k;
            MaxFullscreenAdImpl.this.k = false;
            final t2 t2Var = (t2) maxAd;
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(maxAd, z, t2Var, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            final t2 t2Var = (t2) maxAd;
            MaxFullscreenAdImpl.this.k = false;
            MaxFullscreenAdImpl.this.sdk.f().a(t2Var);
            Integer num = (Integer) MaxFullscreenAdImpl.this.sdk.a(g3.L7);
            if (num.intValue() > 0) {
                MaxFullscreenAdImpl.this.sdk.q0().b(new f6(MaxFullscreenAdImpl.this.sdk, "ReportAdHiddenCallbackNotCalled", new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.b.this.a(t2Var);
                    }
                }), r5.b.TIMEOUT, TimeUnit.SECONDS.toMillis(num.intValue()));
            }
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.c(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.k = false;
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, final MaxError maxError) {
            MaxFullscreenAdImpl.this.c();
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxFullscreenAdImpl.b.this.a(str, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            t2 t2Var;
            synchronized (MaxFullscreenAdImpl.this.e) {
                t2Var = MaxFullscreenAdImpl.this.f;
            }
            MaxFullscreenAdImpl.this.sdk.I().a(MaxFullscreenAdImpl.this.adUnitId);
            MaxFullscreenAdImpl.this.a((t2) maxAd);
            if (!MaxFullscreenAdImpl.this.h.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.a(c.READY, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.b.this.b(maxAd);
                    }
                });
                return;
            }
            MaxFullscreenAdImpl.this.extraParameters.remove("expired_ad_ad_unit_id");
            if (MaxFullscreenAdImpl.this.i.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.d();
            }
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onExpiredAdReloaded(expiredAd=" + t2Var + ", newAd=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.expirationListener);
            }
            l2.a(MaxFullscreenAdImpl.this.expirationListener, (MaxAd) t2Var, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str2 = maxFullscreenAdImpl.tag;
                oVar2.a(str2, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxFullscreenAdImpl.this.requestListener);
            }
            l2.a(MaxFullscreenAdImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.revenueListener);
            }
            l2.a(MaxFullscreenAdImpl.this.revenueListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(t2 t2Var) {
            if (t2Var.w().get()) {
                return;
            }
            MaxFullscreenAdImpl.this.sdk.P().a(y1.c0, t2Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.a(maxAd);
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.e(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd, boolean z, t2 t2Var, MaxError maxError) {
            boolean d;
            MaxFullscreenAdImpl.this.a(maxAd);
            if (MaxFullscreenAdImpl.this.sdk.R() != null) {
                d = MaxFullscreenAdImpl.this.sdk.R().e(MaxFullscreenAdImpl.this.adUnitId);
            } else {
                d = MaxFullscreenAdImpl.this.sdk.Q().d(MaxFullscreenAdImpl.this.adUnitId);
            }
            if (!z && t2Var.q0() && d) {
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.b.this.a();
                    }
                });
                return;
            }
            o oVar = MaxFullscreenAdImpl.this.logger;
            if (o.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                o oVar2 = maxFullscreenAdImpl.logger;
                String str = maxFullscreenAdImpl.tag;
                oVar2.a(str, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            l2.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            MaxFullscreenAdImpl.this.k = true;
            MaxFullscreenAdImpl.this.loadAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        synchronized (this.e) {
            try {
                if (this.f != null) {
                    if (o.a()) {
                        o oVar = this.logger;
                        String str = this.tag;
                        oVar.a(str, "Destroying ad for '" + this.adUnitId + "'; current ad: " + this.f + "...");
                    }
                    this.sdk.X().destroyAd(this.f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.sdk.j().b(this);
        this.d.a();
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        t2 t2Var = this.f;
        a((MaxAd) t2Var);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + t2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        l2.a(this.adListener, (MaxAd) t2Var, (MaxError) maxErrorImpl, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, t2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Activity activity = (Activity) this.n.get();
        if (activity == null) {
            activity = this.sdk.u0();
        }
        Activity activity2 = activity;
        if (this.j) {
            showAd(this.l, this.m, (ViewGroup) this.o.get(), (Lifecycle) this.p.get(), activity2);
        } else {
            showAd(this.l, this.m, activity2);
        }
    }

    public void loadAd(final h hVar) {
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Loading ad for '" + this.adUnitId + "'...");
        }
        if (this.g == c.DESTROYED) {
            boolean c2 = z6.c(this.sdk);
            this.sdk.E().a(y1.u0, "attemptingToLoadDestroyedAd", CollectionUtils.hashMap("details", "debug=" + c2));
            if (c2) {
                throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (isReady()) {
            if (o.a()) {
                o oVar2 = this.logger;
                String str2 = this.tag;
                oVar2.a(str2, "An ad is already loaded for '" + this.adUnitId + "'");
            }
            if (o.a()) {
                o oVar3 = this.logger;
                String str3 = this.tag;
                oVar3.a(str3, "MaxAdListener.onAdLoaded(ad=" + this.f + "), listener=" + this.adListener);
            }
            l2.f(this.adListener, (MaxAd) this.f, true);
            return;
        }
        a aVar = this.f3355a;
        final Activity activity = aVar != null ? aVar.getActivity() : null;
        final Context context = (Context) this.b.get();
        a(c.LOADING, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MaxFullscreenAdImpl.this.a(activity, context, hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(android.app.Activity r10, android.content.Context r11, com.applovin.impl.h r12) {
        /*
            r9 = this;
            if (r10 == 0) goto L4
        L2:
            r7 = r10
            goto L1c
        L4:
            if (r11 == 0) goto L8
            r7 = r11
            goto L1c
        L8:
            com.applovin.impl.sdk.k r10 = r9.sdk
            android.app.Activity r10 = r10.u0()
            if (r10 == 0) goto L17
            com.applovin.impl.sdk.k r10 = r9.sdk
            android.app.Activity r10 = r10.u0()
            goto L2
        L17:
            android.content.Context r10 = com.applovin.impl.sdk.k.o()
            goto L2
        L1c:
            com.applovin.impl.sdk.k r10 = r9.sdk
            com.applovin.impl.mediation.MediationServiceImpl r0 = r10.X()
            java.lang.String r1 = r9.adUnitId
            com.applovin.mediation.MaxAdFormat r3 = r9.adFormat
            java.util.Map<java.lang.String, java.lang.Object> r5 = r9.localExtraParameters
            java.util.Map<java.lang.String, java.lang.Object> r6 = r9.extraParameters
            com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$b r8 = r9.c
            r2 = 0
            r4 = r12
            r0.loadAd(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a(android.app.Activity, android.content.Context, com.applovin.impl.h):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        t2 t2Var;
        if (this.h.compareAndSet(true, false)) {
            synchronized (this.e) {
                t2Var = this.f;
                this.f = null;
            }
            this.sdk.X().destroyAd(t2Var);
            this.extraParameters.remove("expired_ad_ad_unit_id");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity) {
        a(str, str2);
        this.j = false;
        this.n = new WeakReference(activity);
        this.sdk.X().showFullscreenAd(this.f, activity, this.c);
    }

    public void showAd(final String str, final String str2, final ViewGroup viewGroup, final Lifecycle lifecycle, Activity activity) {
        t2 t2Var;
        if (viewGroup != null && lifecycle != null) {
            if (!viewGroup.isShown() && ((Boolean) this.sdk.a(g3.G7)).booleanValue()) {
                o.h(this.tag, "Attempting to show ad when containerView and/or its ancestors are not visible");
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, "Attempting to show ad when containerView and/or its ancestors are not visible");
                l2.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl, true);
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
                return;
            }
            List b2 = this.sdk.s0().b();
            if (this.sdk.s0().d() && b2 != null && (t2Var = this.f) != null && !b2.contains(t2Var.c())) {
                final String str3 = "Attempting to show ad from <" + this.f.c() + "> which is not in the list of selected ad networks " + b2;
                o.h(this.tag, str3);
                a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.c(str3);
                    }
                });
                return;
            }
            if (activity == null) {
                activity = this.sdk.u0();
            }
            final Activity activity2 = activity;
            if (a(activity2, str)) {
                a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.a(str, str2, activity2, viewGroup, lifecycle);
                    }
                });
                return;
            }
            return;
        }
        o.h(this.tag, "Attempting to show ad with null containerView or lifecycle.");
        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle.");
        if (o.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
        }
        l2.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl2, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        t2 t2Var = this.f;
        a((MaxAd) t2Var);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + t2Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        l2.a(this.adListener, (MaxAd) t2Var, (MaxError) maxErrorImpl, true);
        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, t2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity, ViewGroup viewGroup, Lifecycle lifecycle) {
        a(str, str2);
        this.j = true;
        this.n = new WeakReference(activity);
        this.o = new WeakReference(viewGroup);
        this.p = new WeakReference(lifecycle);
        this.sdk.X().showFullscreenAd(this.f, viewGroup, lifecycle, activity, this.c);
    }

    private boolean a(Activity activity, final String str) {
        if (activity != null || MaxAdFormat.APP_OPEN == this.adFormat) {
            if (this.g == c.DESTROYED) {
                boolean c2 = z6.c(this.sdk);
                this.sdk.E().a(y1.u0, "attemptingToShowDestroyedAd", CollectionUtils.hashMap("details", "debug=" + c2));
                if (c2) {
                    throw new IllegalStateException("Attempting to show ad that is destroyed for ad unit ID: " + this.adUnitId);
                }
            }
            if (!isReady()) {
                String str2 = "Attempting to show ad before it is ready - please check ad readiness using " + this.tag + "#isReady()";
                o.h(this.tag, str2);
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, str2);
                m3 m3Var = new m3(this.adUnitId, this.adFormat, str);
                if (o.a()) {
                    this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + m3Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
                }
                l2.a(this.adListener, (MaxAd) m3Var, (MaxError) maxErrorImpl, true);
                if (this.f != null) {
                    this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
                }
                return false;
            }
            Long l = (Long) this.sdk.a(g3.r7);
            Long l2 = (Long) this.sdk.a(g3.k7);
            if (l.longValue() > 0 && (this.f.getTimeToLiveMillis() < l2.longValue() || this.h.get())) {
                this.i.set(true);
                this.sdk.q0().a(new f6(this.sdk, "handleShowOnLoadTimeoutError", new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaxFullscreenAdImpl.this.a(str);
                    }
                }), r5.b.TIMEOUT, l.longValue());
                return false;
            }
            if (z6.a(k.o()) != 0 && this.sdk.n0().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
                if (!z6.c(this.sdk)) {
                    if (((Boolean) this.sdk.a(g3.F7)).booleanValue()) {
                        o.h(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                        if (o.a()) {
                            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
                        }
                        l2.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl2, true);
                        this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f);
                        return false;
                    }
                } else {
                    throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                }
            }
            if (this.sdk.I().d() || this.sdk.I().c()) {
                o.h(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
                MaxErrorImpl maxErrorImpl3 = new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing");
                if (o.a()) {
                    this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl3 + "), listener=" + this.adListener);
                }
                l2.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl3, true);
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl3, this.f);
                return false;
            }
            return true;
        }
        throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (this.i.compareAndSet(true, false)) {
            o.h(this.tag, "Failed to show an ad. Failed to load an ad in time to show.");
            this.sdk.I().c(this.adUnitId);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, "Failed to show an ad. Failed to load an ad in time to show.");
            m3 m3Var = new m3(this.adUnitId, this.adFormat, str);
            if (o.a()) {
                o oVar = this.logger;
                String str2 = this.tag;
                oVar.a(str2, "MaxAdListener.onAdDisplayFailed(ad=" + m3Var + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            l2.a(this.adListener, (MaxAd) m3Var, (MaxError) maxErrorImpl, true);
            if (this.f != null) {
                this.sdk.X().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
            }
        }
    }

    private void a(String str, String str2) {
        this.d.e(this.f);
        this.f.g(str);
        this.f.f(str2);
        this.l = str;
        this.m = str2;
        this.sdk.z().d(this.f);
        if (o.a()) {
            o oVar = this.logger;
            String str3 = this.tag;
            oVar.a(str3, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.f + "...");
        }
        a((q2) this.f);
    }

    private void a() {
        t2 t2Var;
        synchronized (this.e) {
            t2Var = this.f;
            this.f = null;
        }
        this.sdk.X().destroyAd(t2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(t2 t2Var) {
        if (this.sdk.f().a(t2Var, this)) {
            if (o.a()) {
                o oVar = this.logger;
                String str = this.tag;
                oVar.a(str, "Handle ad loaded for regular ad: " + t2Var);
            }
            this.f = t2Var;
            return;
        }
        if (o.a()) {
            this.logger.a(this.tag, "Loaded an expired ad, running expire logic...");
        }
        onAdExpired(t2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, Runnable runnable) {
        boolean z;
        c cVar2 = this.g;
        synchronized (this.e) {
            try {
                c cVar3 = c.IDLE;
                if (cVar2 == cVar3) {
                    if (cVar != c.LOADING && cVar != c.DESTROYED) {
                        if (cVar == c.SHOWING) {
                            o.h(this.tag, "No ad is loading or loaded");
                        } else if (o.a()) {
                            o oVar = this.logger;
                            String str = this.tag;
                            oVar.b(str, "Unable to transition to: " + cVar);
                        }
                        z = false;
                    }
                    z = true;
                } else {
                    c cVar4 = c.LOADING;
                    if (cVar2 == cVar4) {
                        if (cVar != cVar3) {
                            if (cVar == cVar4) {
                                o.h(this.tag, "An ad is already loading");
                            } else if (cVar != c.READY) {
                                if (cVar == c.SHOWING) {
                                    o.h(this.tag, "An ad is not ready to be shown yet");
                                } else if (cVar != c.DESTROYED) {
                                    if (o.a()) {
                                        o oVar2 = this.logger;
                                        String str2 = this.tag;
                                        oVar2.b(str2, "Unable to transition to: " + cVar);
                                    }
                                }
                            }
                            z = false;
                        }
                        z = true;
                    } else {
                        c cVar5 = c.READY;
                        if (cVar2 == cVar5) {
                            if (cVar != cVar3) {
                                if (cVar == cVar4) {
                                    o.h(this.tag, "An ad is already loaded");
                                } else if (cVar == cVar5) {
                                    if (o.a()) {
                                        this.logger.b(this.tag, "An ad is already marked as ready");
                                    }
                                } else if (cVar != c.SHOWING && cVar != c.DESTROYED) {
                                    if (o.a()) {
                                        o oVar3 = this.logger;
                                        String str3 = this.tag;
                                        oVar3.b(str3, "Unable to transition to: " + cVar);
                                    }
                                }
                                z = false;
                            }
                            z = true;
                        } else {
                            c cVar6 = c.SHOWING;
                            if (cVar2 == cVar6) {
                                if (cVar != cVar3) {
                                    if (cVar == cVar4) {
                                        o.h(this.tag, "Can not load another ad while the ad is showing");
                                    } else if (cVar == cVar5) {
                                        if (o.a()) {
                                            this.logger.b(this.tag, "An ad is already showing, ignoring");
                                        }
                                    } else if (cVar == cVar6) {
                                        o.h(this.tag, "The ad is already showing, not showing another one");
                                    } else if (cVar != c.DESTROYED) {
                                        if (o.a()) {
                                            o oVar4 = this.logger;
                                            String str4 = this.tag;
                                            oVar4.b(str4, "Unable to transition to: " + cVar);
                                        }
                                    }
                                }
                                z = true;
                            } else if (cVar2 == c.DESTROYED) {
                                o.h(this.tag, "No operations are allowed on a destroyed instance");
                            } else if (o.a()) {
                                o oVar5 = this.logger;
                                String str5 = this.tag;
                                oVar5.b(str5, "Unknown state: " + this.g);
                            }
                            z = false;
                        }
                    }
                }
                if (z) {
                    if (o.a()) {
                        o oVar6 = this.logger;
                        String str6 = this.tag;
                        oVar6.a(str6, "Transitioning from " + this.g + " to " + cVar + "...");
                    }
                    this.g = cVar;
                } else if (o.a()) {
                    o oVar7 = this.logger;
                    String str7 = this.tag;
                    oVar7.k(str7, "Not allowed to transition from " + this.g + " to " + cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.sdk.f().a((t2) maxAd);
        this.d.a();
        a();
        this.sdk.a0().a((q2) maxAd);
    }
}
