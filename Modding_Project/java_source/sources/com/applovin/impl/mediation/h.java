package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.a3;
import com.applovin.impl.f6;
import com.applovin.impl.g3;
import com.applovin.impl.g4;
import com.applovin.impl.l4;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.h;
import com.applovin.impl.q2;
import com.applovin.impl.r4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.t2;
import com.applovin.impl.w4;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.internal.Constants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h {
    private final k b;
    private final o c;
    private final String d;
    private final a3 e;
    private final String f;
    private MaxAdapter g;
    private String h;
    private q2 i;
    private View j;
    private MaxNativeAd k;
    private MaxNativeAdView l;
    private ViewGroup m;
    private MaxAdapterResponseParameters o;
    private final boolean s;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3437a = new Handler(Looper.getMainLooper());
    private final b n = new b(this, null);
    private final AtomicBoolean p = new AtomicBoolean(true);
    private final AtomicBoolean q = new AtomicBoolean(false);
    private final AtomicBoolean r = new AtomicBoolean(false);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements MaxSignalCollectionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r4 f3438a;
        final /* synthetic */ g4 b;

        public a(r4 r4Var, g4 g4Var) {
            this.f3438a = r4Var;
            this.b = g4Var;
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollected(String str) {
            if (this.f3438a.x() && TextUtils.isEmpty(str)) {
                this.b.a(new MaxErrorImpl("Signal is not a valid string"));
            } else {
                this.b.b(str);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollectionFailed(String str) {
            this.b.a(new MaxErrorImpl(str));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements MaxInterstitialAdapterListener, MaxAppOpenAdapterListener, MaxRewardedAdapterListener, MaxAdViewAdapterListener, MaxNativeAdAdapterListener {

        /* renamed from: a  reason: collision with root package name */
        private MediationServiceImpl.b f3439a;

        private b() {
        }

        private void b(String str, final Bundle bundle) {
            if (h.this.i.w().compareAndSet(false, true)) {
                a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkkkk
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.this.i(bundle);
                    }
                });
            }
        }

        private void c(String str, final Bundle bundle) {
            if (h.this.i.w().get()) {
                o unused = h.this.c;
                if (o.a()) {
                    o oVar = h.this.c;
                    oVar.b("MediationAdapterWrapper", h.this.f + ": blocking ad loaded callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
                return;
            }
            h.this.r.set(true);
            a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Www
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.j(bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Bundle bundle) {
            this.f3439a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Bundle bundle) {
            this.f3439a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Bundle bundle) {
            this.f3439a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Bundle bundle) {
            this.f3439a.c(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Bundle bundle) {
            this.f3439a.c(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(Bundle bundle) {
            this.f3439a.e(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(Bundle bundle) {
            if (h.this.q.compareAndSet(false, true)) {
                this.f3439a.f(h.this.i, bundle);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            onAdViewAdCollapsed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAdViewAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            onAdViewAdExpanded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAppOpenAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            onNativeAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": native ad displayed with extra info: " + bundle);
            }
            a("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": native ad loaded with extra info: " + bundle);
            }
            h.this.k = maxNativeAd;
            c("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            onUserRewarded(maxReward, null);
        }

        public /* synthetic */ b(h hVar, a aVar) {
            this();
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": adview ad failed to display with error: " + maxAdapterError);
            }
            a("onAdViewAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad displayed with extra info: " + bundle);
            }
            a("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.b(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad hidden with extra info: " + bundle);
            }
            b("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": adview ad loaded with extra info: " + bundle);
            }
            h.this.j = view;
            c("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.c(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": app open ad display failed with error: " + maxAdapterError);
            }
            a("onAppOpenAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": app open ad displayed with extra info: " + bundle);
            }
            a("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": app open ad hidden with extra info: " + bundle);
            }
            b("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": app open ad loaded with extra info: " + bundle);
            }
            c("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.d(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            a("onInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": interstitial ad displayed with extra info: " + bundle);
            }
            a("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": interstitial ad hidden with extra info " + bundle);
            }
            b("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": interstitial ad loaded with extra info: " + bundle);
            }
            c("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": native ad clicked");
            }
            a("onNativeAdClicked", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.e(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(final Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.f(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.k("MediationAdapterWrapper", h.this.f + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": rewarded ad displayed with extra info: " + bundle);
            }
            a("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": rewarded ad hidden with extra info: " + bundle);
            }
            b("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            o unused = h.this.c;
            if (o.a()) {
                o oVar = h.this.c;
                oVar.d("MediationAdapterWrapper", h.this.f + ": rewarded ad loaded with extra info: " + bundle);
            }
            c("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(final MaxReward maxReward, final Bundle bundle) {
            if (h.this.i instanceof t2) {
                final t2 t2Var = (t2) h.this.i;
                if (t2Var.m0().compareAndSet(false, true)) {
                    o unused = h.this.c;
                    if (o.a()) {
                        o oVar = h.this.c;
                        oVar.d("MediationAdapterWrapper", h.this.f + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkk
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.b.this.a(t2Var, maxReward, bundle);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Bundle bundle) {
            this.f3439a.d(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.b bVar) {
            if (bVar != null) {
                this.f3439a = bVar;
                return;
            }
            throw new IllegalArgumentException("No listener specified");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Bundle bundle) {
            this.f3439a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (h.this.i.w().get()) {
                o unused = h.this.c;
                if (o.a()) {
                    o oVar = h.this.c;
                    oVar.b("MediationAdapterWrapper", h.this.f + ": blocking ad load failed callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
                return;
            }
            a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Wwww
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(maxError);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError) {
            if (h.this.q.compareAndSet(false, true)) {
                this.f3439a.onAdLoadFailed(h.this.h, maxError);
            }
        }

        private void a(String str, final Bundle bundle) {
            if (h.this.i.w().get()) {
                o unused = h.this.c;
                if (o.a()) {
                    o oVar = h.this.c;
                    oVar.b("MediationAdapterWrapper", h.this.f + ": blocking ad displayed callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
            } else if (!((Boolean) h.this.b.a(g3.O7)).booleanValue()) {
                if (h.this.i.u().compareAndSet(false, true)) {
                    a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkk
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.b.this.h(bundle);
                        }
                    });
                }
            } else {
                a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkk
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.this.g(bundle);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError, final Bundle bundle) {
            if (h.this.i.w().get()) {
                o unused = h.this.c;
                if (o.a()) {
                    o oVar = h.this.c;
                    oVar.b("MediationAdapterWrapper", h.this.f + ": blocking ad display failed callback for " + h.this.i + " since onAdHidden() has been called");
                }
                h.this.b.u().a(h.this.i, str);
                return;
            }
            a(str, this.f3439a, new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(maxError, bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError, Bundle bundle) {
            this.f3439a.a(h.this.i, maxError, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(t2 t2Var, MaxReward maxReward, Bundle bundle) {
            this.f3439a.a(t2Var, maxReward, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Bundle bundle) {
            this.f3439a.a(h.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            this.f3439a.onAdCollapsed(h.this.i);
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            h.this.f3437a.post(new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.b.this.a(runnable, maxAdListener, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, MaxAdListener maxAdListener, String str) {
            try {
                runnable.run();
            } catch (Throwable th) {
                String name = maxAdListener != null ? maxAdListener.getClass().getName() : null;
                o.c("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + name, th);
                h.this.b.E().a("MediationAdapterWrapper", str, th, CollectionUtils.hashMap("adapter_class", h.this.e.b()));
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c implements MaxAdapter.OnCompletionListener {

        /* renamed from: a  reason: collision with root package name */
        private final k f3440a;
        private final a3 b;
        private final long c;
        private final MaxAdapter.OnCompletionListener d;

        public c(k kVar, a3 a3Var, long j, MaxAdapter.OnCompletionListener onCompletionListener) {
            this.f3440a = kVar;
            this.b = a3Var;
            this.c = j;
            this.d = onCompletionListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
            this.f3440a.S().a(this.b, SystemClock.elapsedRealtime() - this.c, initializationStatus, str);
            MaxAdapter.OnCompletionListener onCompletionListener = this.d;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(initializationStatus, str);
            }
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Kkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    h.c.this.a(initializationStatus, str);
                }
            }, this.b.h());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d extends w4 {
        private final WeakReference g;

        public /* synthetic */ d(h hVar, a aVar) {
            this();
        }

        private void b(q2 q2Var) {
            if (q2Var != null) {
                this.f3803a.Z().a(q2Var);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!h.this.q.get()) {
                if (o.a()) {
                    o oVar = this.c;
                    String str = this.b;
                    oVar.b(str, h.this.f + " is timing out " + h.this.i + "...");
                }
                b(h.this.i);
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-5101, "Adapter timed out");
                b bVar = (b) this.g.get();
                if (bVar != null) {
                    bVar.a(this.b, maxErrorImpl);
                }
            }
        }

        private d() {
            super("TaskTimeoutMediatedAd", h.this.b);
            this.g = new WeakReference(h.this.n);
        }
    }

    public h(a3 a3Var, MaxAdapter maxAdapter, boolean z, k kVar) {
        if (a3Var != null) {
            if (maxAdapter != null) {
                if (kVar != null) {
                    this.d = a3Var.c();
                    this.g = maxAdapter;
                    this.b = kVar;
                    this.c = kVar.O();
                    this.e = a3Var;
                    this.f = maxAdapter.getClass().getSimpleName();
                    this.s = z;
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No adapter specified");
        }
        throw new IllegalArgumentException("No adapter name specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        a("destroy");
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter != null) {
            this.g = null;
            maxAdapter.onDestroy();
        } else if (o.a()) {
            o oVar = this.c;
            oVar.k("MediationAdapterWrapper", "Mediation adapter '" + this.f + "' is already destroyed");
        }
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    public boolean k() {
        return this.p.get();
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f + "'" + AbstractJsonLexerKt.END_OBJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxAppOpenAdapter) this.g).loadAppOpenAd(maxAdapterResponseParameters, activity, this.n);
    }

    public MediationServiceImpl.b c() {
        return this.n.f3439a;
    }

    public View d() {
        return this.j;
    }

    public MaxNativeAd e() {
        return this.k;
    }

    public MaxNativeAdView f() {
        return this.l;
    }

    public String g() {
        return this.d;
    }

    public ViewGroup h() {
        return this.m;
    }

    public String i() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getSdkVersion();
            } catch (Throwable th) {
                o.c("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.d, th);
                this.b.E().a("MediationAdapterWrapper", "sdk_version", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
                a("sdk_version");
                this.b.T().a(this.e.b(), "sdk_version", this.i);
                return null;
            }
        }
        return null;
    }

    public boolean j() {
        return this.q.get() && this.r.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedAdapter) this.g).loadRewardedAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MediationAdapterBase) this.g).loadNativeAd(maxAdapterResponseParameters, activity, this.n);
    }

    public void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        b(MobileAdsBridgeBase.initializeMethodName, new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(onCompletionListener, maxAdapterInitializationParameters, activity);
            }
        });
    }

    public void b(q2 q2Var, final Activity activity) {
        Runnable runnable;
        if (a(q2Var, activity)) {
            if (q2Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(activity);
                    }
                };
            } else if (q2Var.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(activity);
                    }
                };
            } else if (q2Var.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.c(activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + q2Var + ": " + q2Var.getFormat() + " is not a supported ad format");
            }
            a(runnable, q2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapter.OnCompletionListener onCompletionListener, MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (o.a()) {
            o oVar = this.c;
            oVar.a("MediationAdapterWrapper", "Initializing " + this.f + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + this.e.r());
        }
        this.g.initialize(maxAdapterInitializationParameters, activity, new c(this.b, this.e, elapsedRealtime, onCompletionListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        ((MaxRewardedAdapter) this.g).showRewardedAd(this.o, activity, this.n);
    }

    public void a(String str, q2 q2Var) {
        this.h = str;
        this.i = q2Var;
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.l = maxNativeAdView;
    }

    public void a(ViewGroup viewGroup) {
        this.m = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity) {
        ((MaxAppOpenAdapter) this.g).showAppOpenAd(this.o, activity, this.n);
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final q2 q2Var, final Activity activity, MediationServiceImpl.b bVar) {
        final Runnable runnable;
        if (q2Var != null) {
            if (!this.p.get()) {
                String str2 = "Mediation adapter '" + this.f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
                o.h("MediationAdapterWrapper", str2);
                bVar.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
                return;
            }
            this.o = maxAdapterResponseParameters;
            this.n.a(bVar);
            final MaxAdFormat format = q2Var.getFormat();
            if (format == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.c(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format == MaxAdFormat.NATIVE) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.d(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (format.isAdViewAd()) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxAdapterResponseParameters, format, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to load " + q2Var + ": " + q2Var.getFormat() + " is not a supported ad format");
            }
            a(Constants.LOAD_AD, format, new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    h.this.a(q2Var, runnable);
                }
            });
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxRewardedAdViewAdapter) this.g).showRewardedAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    public String b() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getAdapterVersion();
            } catch (Throwable th) {
                o.c("MediationAdapterWrapper", "Failed to get adapter version for " + this.d, th);
                this.b.E().a("MediationAdapterWrapper", "adapter_version", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
                a("adapter_version");
                this.b.T().a(this.e.b(), "adapter_version", this.i);
                return null;
            }
        }
        return null;
    }

    private void b(String str, Runnable runnable) {
        a(str, (MaxAdFormat) null, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxInterstitialAdapter) this.g).loadInterstitialAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity) {
        ((MaxAdViewAdapter) this.g).loadAdViewAd(maxAdapterResponseParameters, maxAdFormat, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(q2 q2Var, Runnable runnable) {
        a(this.e, q2Var);
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start loading ad for " + this.d + " due to: " + th;
            o.h("MediationAdapterWrapper", str);
            this.n.a(Constants.LOAD_AD, new MaxErrorImpl(-1, str));
            this.b.E().a("MediationAdapterWrapper", Constants.LOAD_AD, th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a(Constants.LOAD_AD);
            this.b.T().a(this.e.b(), Constants.LOAD_AD, this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        ((MaxInterstitialAdapter) this.g).showInterstitialAd(this.o, activity, this.n);
    }

    public void a(q2 q2Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (a(q2Var, activity)) {
            if (q2Var.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(viewGroup, lifecycle, activity);
                    }
                };
            } else if (q2Var.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.Wwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.b(viewGroup, lifecycle, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + q2Var + ": " + q2Var.getFormat() + " is not a supported ad format");
            }
            a(runnable, q2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxInterstitialAdViewAdapter) this.g).showInterstitialAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    private boolean a(q2 q2Var, Activity activity) {
        if (q2Var != null) {
            if (q2Var.A() == null) {
                o.h("MediationAdapterWrapper", "Adapter has been garbage collected");
                this.n.a("ad_show", new MaxErrorImpl(-1, "Adapter has been garbage collected"), (Bundle) null);
                return false;
            } else if (q2Var.A() == this) {
                if (activity != null || MaxAdFormat.APP_OPEN == q2Var.getFormat()) {
                    if (!this.p.get()) {
                        String str = "Mediation adapter '" + this.f + "' is disabled. Showing ads with this adapter is disabled.";
                        o.h("MediationAdapterWrapper", str);
                        this.n.a("ad_show", new MaxErrorImpl(-1, str), (Bundle) null);
                        return false;
                    } else if (j()) {
                        return true;
                    } else {
                        throw new IllegalStateException("Mediation adapter '" + this.f + "' does not have an ad loaded. Please load an ad first");
                    }
                }
                throw new IllegalArgumentException("No activity specified");
            } else {
                throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
            }
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    private void a(final Runnable runnable, q2 q2Var) {
        a("show_ad", q2Var.getFormat(), new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start displaying ad for " + this.d + " due to: " + th;
            o.h("MediationAdapterWrapper", str);
            this.n.a("show_ad", new MaxErrorImpl(-1, str), (Bundle) null);
            this.b.E().a("MediationAdapterWrapper", "show_ad", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("show_ad");
            this.b.T().a(this.e.b(), "show_ad", this.i);
        }
    }

    public void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final r4 r4Var, final Activity activity, final g4 g4Var) {
        if (g4Var != null) {
            if (!this.p.get()) {
                o.h("MediationAdapterWrapper", "Mediation adapter '" + this.f + "' is disabled. Signal collection ads with this adapter is disabled.");
                g4Var.a(new MaxErrorImpl("The adapter (" + this.f + ") is disabled"));
                return;
            }
            MaxAdapter maxAdapter = this.g;
            if (maxAdapter instanceof MaxSignalProvider) {
                final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
                b("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.a(maxSignalProvider, maxAdapterSignalCollectionParameters, activity, r4Var, g4Var);
                    }
                });
                return;
            }
            g4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED, "The adapter (" + this.f + ") does not support signal collection"));
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, r4 r4Var, g4 g4Var) {
        try {
            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new a(r4Var, g4Var));
        } catch (Throwable th) {
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl("Failed signal collection for " + this.d + " due to: " + th);
            o.h("MediationAdapterWrapper", maxErrorImpl.getMessage());
            g4Var.a(maxErrorImpl);
            this.b.E().a("MediationAdapterWrapper", "collect_signal", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("collect_signal");
            this.b.T().a(this.e.b(), "collect_signal", this.i);
        }
        if (!g4Var.c() && r4Var.m() == 0) {
            if (o.a()) {
                o oVar = this.c;
                oVar.a("MediationAdapterWrapper", "Failing signal collection " + r4Var + " since it has 0 timeout");
            }
            g4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + this.f + ") has 0 timeout"));
        }
    }

    public void a() {
        if (this.s) {
            return;
        }
        b("destroy", new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                h.this.l();
            }
        });
    }

    private void a(a3 a3Var, q2 q2Var) {
        a(new d(this, null), a3Var, q2Var);
    }

    private void a(w4 w4Var, a3 a3Var, q2 q2Var) {
        long m = a3Var.m();
        if (m <= 0) {
            if (o.a()) {
                o oVar = this.c;
                StringBuilder sb = new StringBuilder();
                sb.append("Non-positive timeout set for ");
                if (q2Var != null) {
                    a3Var = q2Var;
                }
                sb.append(a3Var);
                sb.append(", not scheduling a timeout");
                oVar.a("MediationAdapterWrapper", sb.toString());
                return;
            }
            return;
        }
        if (o.a()) {
            o oVar2 = this.c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Setting timeout ");
            sb2.append(m);
            sb2.append("ms for ");
            if (q2Var != null) {
                a3Var = q2Var;
            }
            sb2.append(a3Var);
            oVar2.a("MediationAdapterWrapper", sb2.toString());
        }
        this.b.q0().a(w4Var, r5.b.TIMEOUT, m);
    }

    private void a(String str) {
        if (o.a()) {
            o oVar = this.c;
            oVar.d("MediationAdapterWrapper", "Marking " + this.f + " as disabled due to: " + str);
        }
        this.p.set(false);
    }

    private void a(final String str, MaxAdFormat maxAdFormat, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                h.this.a(str, runnable);
            }
        };
        if (a(str, maxAdFormat)) {
            this.f3437a.post(runnable2);
            return;
        }
        f6 f6Var = new f6(this.b, str + ":" + this.e.c(), runnable2);
        if (((Boolean) this.b.a(l4.X)).booleanValue()) {
            this.b.q0().a(f6Var, this.e);
        } else {
            this.b.q0().a(f6Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (o.a()) {
                o oVar = this.c;
                oVar.a("MediationAdapterWrapper", this.f + ": running " + str + "...");
            }
            runnable.run();
            if (o.a()) {
                o oVar2 = this.c;
                oVar2.a("MediationAdapterWrapper", this.f + ": finished " + str + "");
            }
        } catch (Throwable th) {
            o.c("MediationAdapterWrapper", "Failed operation " + str + " for " + this.d, th);
            StringBuilder sb = new StringBuilder();
            sb.append("fail_");
            sb.append(str);
            a(sb.toString());
            if (!str.equals("destroy")) {
                this.b.T().a(this.e.b(), str, this.i);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("is_wrapper", "true");
            CollectionUtils.putStringIfValid("adapter_class", this.e.b(), hashMap);
            this.b.E().a("MediationAdapterWrapper", str, th, hashMap);
        }
    }

    private boolean a(String str, MaxAdFormat maxAdFormat) {
        Boolean Z;
        Boolean b0;
        Boolean a0;
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return this.e.r();
        }
        if (MobileAdsBridgeBase.initializeMethodName.equals(str)) {
            Boolean shouldInitializeOnUiThread = maxAdapter.shouldInitializeOnUiThread();
            if (shouldInitializeOnUiThread != null) {
                return shouldInitializeOnUiThread.booleanValue();
            }
        } else if ("collect_signal".equals(str)) {
            Boolean shouldCollectSignalsOnUiThread = maxAdapter.shouldCollectSignalsOnUiThread();
            if (shouldCollectSignalsOnUiThread != null) {
                return shouldCollectSignalsOnUiThread.booleanValue();
            }
        } else if (Constants.LOAD_AD.equals(str) && maxAdFormat != null) {
            q2 q2Var = this.i;
            if (q2Var != null && (a0 = q2Var.a0()) != null) {
                return a0.booleanValue();
            }
            Boolean shouldLoadAdsOnUiThread = maxAdapter.shouldLoadAdsOnUiThread(maxAdFormat);
            if (shouldLoadAdsOnUiThread != null) {
                return shouldLoadAdsOnUiThread.booleanValue();
            }
        } else if ("show_ad".equals(str) && maxAdFormat != null) {
            q2 q2Var2 = this.i;
            if (q2Var2 != null && (b0 = q2Var2.b0()) != null) {
                return b0.booleanValue();
            }
            Boolean shouldShowAdsOnUiThread = maxAdapter.shouldShowAdsOnUiThread(maxAdFormat);
            if (shouldShowAdsOnUiThread != null) {
                return shouldShowAdsOnUiThread.booleanValue();
            }
        } else if ("destroy".equals(str)) {
            q2 q2Var3 = this.i;
            if (q2Var3 != null && (Z = q2Var3.Z()) != null) {
                return Z.booleanValue();
            }
            Boolean shouldDestroyOnUiThread = maxAdapter.shouldDestroyOnUiThread();
            if (shouldDestroyOnUiThread != null) {
                return shouldDestroyOnUiThread.booleanValue();
            }
            return true;
        }
        return this.e.r();
    }
}
