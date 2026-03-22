package com.applovin.impl.mediation.ads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.f6;
import com.applovin.impl.g3;
import com.applovin.impl.h;
import com.applovin.impl.i;
import com.applovin.impl.l2;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.o1;
import com.applovin.impl.q2;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.a;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u2;
import com.applovin.impl.w4;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxNativeAdLoaderImpl extends com.applovin.impl.mediation.ads.a implements a.InterfaceC0020a, i.b {
    public static final String KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE = "ad_request_type";

    /* renamed from: a  reason: collision with root package name */
    private final c f3358a;
    private String b;
    private String c;
    private h d;
    private final Object e;
    private MaxNativeAdListener f;
    private final Map g;
    private final Set h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaxNativeAd f3359a;
        final /* synthetic */ List b;
        final /* synthetic */ ViewGroup c;

        public a(MaxNativeAd maxNativeAd, List list, ViewGroup viewGroup) {
            this.f3359a = maxNativeAd;
            this.b = list;
            this.c = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f3359a.prepareForInteraction(this.b, this.c)) {
                o.h(MaxNativeAdLoaderImpl.this.tag, "Failed to prepare native ad for interaction...");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MaxNativeAdView f3360a;
        final /* synthetic */ u2 b;
        final /* synthetic */ MaxNativeAd c;

        public b(MaxNativeAdView maxNativeAdView, u2 u2Var, MaxNativeAd maxNativeAd) {
            this.f3360a = maxNativeAdView;
            this.b = u2Var;
            this.c = maxNativeAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "Rendering native ad view: " + this.f3360a);
            }
            MaxNativeAdLoaderImpl.this.sdk.z().d(this.b);
            this.f3360a.render(this.b, MaxNativeAdLoaderImpl.this.f3358a, MaxNativeAdLoaderImpl.this.sdk);
            this.c.setNativeAdView(this.f3360a);
            if (!this.c.prepareForInteraction(this.f3360a.getClickableViews(), this.f3360a)) {
                this.c.prepareViewForInteraction(this.f3360a);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements a.InterfaceC0016a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Native ad loaded");
            }
            u2 u2Var = (u2) maxAd;
            u2Var.g(MaxNativeAdLoaderImpl.this.b);
            u2Var.f(MaxNativeAdLoaderImpl.this.c);
            synchronized (MaxNativeAdLoaderImpl.this.e) {
                MaxNativeAdLoaderImpl.this.h.add(u2Var);
            }
            MaxNativeAdView a2 = MaxNativeAdLoaderImpl.this.a(u2Var.J());
            if (a2 == null) {
                o oVar2 = MaxNativeAdLoaderImpl.this.logger;
                if (o.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl2 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl2.logger.a(maxNativeAdLoaderImpl2.tag, "No custom view provided, checking template");
                }
                String o0 = u2Var.o0();
                if (StringUtils.isValidString(o0)) {
                    o oVar3 = MaxNativeAdLoaderImpl.this.logger;
                    if (o.a()) {
                        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl3 = MaxNativeAdLoaderImpl.this;
                        o oVar4 = maxNativeAdLoaderImpl3.logger;
                        String str = maxNativeAdLoaderImpl3.tag;
                        oVar4.a(str, "Using template: " + o0 + "...");
                    }
                    a2 = new MaxNativeAdView(o0, k.o());
                }
            }
            if (a2 == null) {
                o oVar5 = MaxNativeAdLoaderImpl.this.logger;
                if (o.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl4 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl4.logger.a(maxNativeAdLoaderImpl4.tag, "No native ad view to render. Returning the native ad to be rendered later.");
                }
                o oVar6 = MaxNativeAdLoaderImpl.this.logger;
                if (o.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl5 = MaxNativeAdLoaderImpl.this;
                    o oVar7 = maxNativeAdLoaderImpl5.logger;
                    String str2 = maxNativeAdLoaderImpl5.tag;
                    oVar7.a(str2, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=null, nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
                }
                l2.a(MaxNativeAdLoaderImpl.this.f, (MaxNativeAdView) null, maxAd, true);
                MaxNativeAdLoaderImpl.this.a(u2Var);
                return;
            }
            a(a2);
            MaxNativeAdLoaderImpl.this.a(a2, u2Var, u2Var.getNativeAd());
            o oVar8 = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl6 = MaxNativeAdLoaderImpl.this;
                o oVar9 = maxNativeAdLoaderImpl6.logger;
                String str3 = maxNativeAdLoaderImpl6.tag;
                oVar9.a(str3, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=" + a2 + ", nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            l2.a(MaxNativeAdLoaderImpl.this.f, a2, maxAd, true);
            MaxNativeAdLoaderImpl.this.a(u2Var);
            MaxNativeAdLoaderImpl.this.a(a2);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "MaxNativeAdListener.onNativeAdClicked(nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            l2.a(MaxNativeAdLoaderImpl.this.f, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxNativeAdLoaderImpl.this.a(((MaxErrorImpl) maxError).getLoadTag());
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                o oVar2 = maxNativeAdLoaderImpl.logger;
                String str2 = maxNativeAdLoaderImpl.tag;
                oVar2.a(str2, "MaxNativeAdListener.onNativeAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            l2.a(MaxNativeAdLoaderImpl.this.f, str, maxError, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.Wwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MaxNativeAdLoaderImpl.c.this.a(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                o oVar2 = maxNativeAdLoaderImpl.logger;
                String str = maxNativeAdLoaderImpl.tag;
                oVar2.a(str, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.revenueListener);
            }
            l2.a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true);
        }

        public /* synthetic */ c(MaxNativeAdLoaderImpl maxNativeAdLoaderImpl, a aVar) {
            this();
        }

        private void a(MaxNativeAdView maxNativeAdView) {
            u2 b;
            com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
            if (adViewTracker == null || (b = adViewTracker.b()) == null) {
                return;
            }
            o oVar = MaxNativeAdLoaderImpl.this.logger;
            if (o.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Destroying previous ad");
            }
            MaxNativeAdLoaderImpl.this.destroy(b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }
    }

    public MaxNativeAdLoaderImpl(String str, k kVar) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", kVar);
        this.f3358a = new c(this, null);
        this.d = h.PUBLISHER_INITIATED;
        this.e = new Object();
        this.g = new HashMap();
        this.h = new HashSet();
        kVar.j().a(this);
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Created new MaxNativeAdLoader (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        this.f = null;
        this.sdk.j().b(this);
        synchronized (this.e) {
            this.g.clear();
            this.h.clear();
        }
        super.destroy();
    }

    public String getPlacement() {
        return this.b;
    }

    public void handleNativeAdViewRendered(MaxAd maxAd) {
        MaxNativeAd nativeAd = ((u2) maxAd).getNativeAd();
        if (nativeAd == null) {
            if (o.a()) {
                this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        com.applovin.impl.mediation.ads.b adViewTracker = nativeAd.getAdViewTracker();
        if (adViewTracker == null) {
            if (o.a()) {
                this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...).");
                return;
            }
            return;
        }
        adViewTracker.c();
    }

    public void loadAd(@Nullable MaxNativeAdView maxNativeAdView) {
        String str;
        if (o.a()) {
            o oVar = this.logger;
            String str2 = this.tag;
            oVar.a(str2, "Loading native ad for '" + this.adUnitId + "' into '" + maxNativeAdView + "' and notifying " + this.f3358a + "...");
        }
        Map<String, Object> map = this.extraParameters;
        if (maxNativeAdView != null) {
            str = "custom_ad_view";
        } else {
            str = "no_ad_view";
        }
        map.put("integration_type", str);
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        a(lowerCase, maxNativeAdView);
        this.sdk.X().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.d, this.localExtraParameters, this.extraParameters, k.o(), this.f3358a);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0020a
    public void onAdExpired(o1 o1Var) {
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Ad expired for ad unit id " + getAdUnitId());
        }
        if (o.a()) {
            o oVar2 = this.logger;
            String str2 = this.tag;
            oVar2.a(str2, "MaxNativeAdListener.onNativeAdExpired(nativeAd=" + o1Var + "), listener=" + this.f);
        }
        l2.b(this.f, (MaxAd) ((u2) o1Var), true);
    }

    @Override // com.applovin.impl.i.b
    public void onCreativeIdGenerated(String str, String str2) {
        u2 u2Var;
        Iterator it = this.h.iterator();
        while (true) {
            if (it.hasNext()) {
                u2Var = (u2) it.next();
                if (u2Var.O().equalsIgnoreCase(str)) {
                    break;
                }
            } else {
                u2Var = null;
                break;
            }
        }
        if (u2Var != null) {
            u2Var.h(str2);
            l2.b(this.adReviewListener, str2, u2Var);
            synchronized (this.e) {
                this.h.remove(u2Var);
            }
        }
    }

    public void registerClickableViews(List<View> list, ViewGroup viewGroup, MaxAd maxAd) {
        u2 u2Var = (u2) maxAd;
        MaxNativeAd nativeAd = u2Var.getNativeAd();
        if (nativeAd == null) {
            if (o.a()) {
                this.logger.b(this.tag, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        u2Var.a(viewGroup);
        this.sdk.z().d(u2Var);
        a((q2) u2Var);
        nativeAd.setClickableViews(list);
        nativeAd.setAdViewTracker(new com.applovin.impl.mediation.ads.b(u2Var, viewGroup, this.f3358a, this.sdk));
        a aVar = new a(nativeAd, list, viewGroup);
        if (nativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(aVar);
        } else {
            this.sdk.q0().a((w4) new f6(this.sdk, "renderMaxNativeAd", aVar), r5.b.MEDIATION);
        }
    }

    public boolean render(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!(maxAd instanceof u2)) {
            o.h(this.tag, "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render.");
            return false;
        } else if (maxNativeAdView == null) {
            o.h(this.tag, "Failed to render native ad. `adView` to render cannot be null.");
            return false;
        } else {
            u2 u2Var = (u2) maxAd;
            MaxNativeAd nativeAd = u2Var.getNativeAd();
            if (nativeAd == null) {
                if (o.a()) {
                    this.logger.b(this.tag, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                }
                return false;
            } else if (nativeAd.isExpired() && !((Boolean) this.sdk.a(g3.p7)).booleanValue()) {
                o.h(this.tag, "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
                return false;
            } else {
                a(maxNativeAdView, u2Var, nativeAd);
                a(maxNativeAdView);
                return true;
            }
        }
    }

    public void setCustomData(String str) {
        z6.b(str, this.tag);
        this.c = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setLocalExtraParameter(String str, Object obj) {
        super.setLocalExtraParameter(str, obj);
        if (KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE.equalsIgnoreCase(str) && (obj instanceof h)) {
            this.d = (h) obj;
        }
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        if (o.a()) {
            o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting native ad listener: " + maxNativeAdListener);
        }
        this.f = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.b = str;
    }

    @NonNull
    public String toString() {
        return "MaxNativeAdLoader{adUnitId='" + this.adUnitId + "', nativeAdListener=" + this.f + ", revenueListener=" + this.revenueListener + AbstractJsonLexerKt.END_OBJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(u2 u2Var) {
        if (u2Var.n0().get()) {
            return;
        }
        this.sdk.f().a(u2Var, this);
    }

    private void a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.e) {
            this.g.put(str, maxNativeAdView);
        }
    }

    public void destroy(MaxAd maxAd) {
        com.applovin.impl.mediation.ads.b adViewTracker;
        if (maxAd instanceof u2) {
            u2 u2Var = (u2) maxAd;
            if (u2Var.r0()) {
                if (o.a()) {
                    o oVar = this.logger;
                    String str = this.tag;
                    oVar.a(str, "Native ad (" + u2Var + ") has already been destroyed");
                    return;
                }
                return;
            }
            synchronized (this.e) {
                this.h.remove(u2Var);
            }
            MaxNativeAdView l0 = u2Var.l0();
            if (l0 != null && (adViewTracker = l0.getAdViewTracker()) != null && maxAd.equals(adViewTracker.b())) {
                l0.recycle();
            }
            MaxNativeAd nativeAd = u2Var.getNativeAd();
            if (nativeAd != null && nativeAd.getAdViewTracker() != null) {
                nativeAd.getAdViewTracker().a();
            }
            this.sdk.f().a(u2Var);
            this.sdk.X().destroyAd(u2Var);
            if (this.sdk.R() != null) {
                this.sdk.R().c(this.adUnitId, u2Var.J());
            } else {
                this.sdk.Q().c(this.adUnitId, u2Var.J());
            }
        } else if (o.a()) {
            o oVar2 = this.logger;
            String str2 = this.tag;
            oVar2.a(str2, "Destroy failed on non-native ad(" + maxAd + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView a(String str) {
        MaxNativeAdView maxNativeAdView;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.e) {
            maxNativeAdView = (MaxNativeAdView) this.g.remove(str);
        }
        return maxNativeAdView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView, u2 u2Var, MaxNativeAd maxNativeAd) {
        u2Var.a(maxNativeAdView);
        a((q2) u2Var);
        b bVar = new b(maxNativeAdView, u2Var, maxNativeAd);
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            this.sdk.q0().a((w4) new f6(this.sdk, "renderMaxNativeAd", bVar), r5.b.MEDIATION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView) {
        com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
        if (adViewTracker == null || !maxNativeAdView.isAttachedToWindow()) {
            return;
        }
        adViewTracker.c();
    }
}
