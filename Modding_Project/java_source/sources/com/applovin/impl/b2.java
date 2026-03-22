package com.applovin.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.b2;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import j$.util.DesugarCollections;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b2 {
    protected final com.applovin.impl.sdk.k b;
    protected final AppLovinAdServiceImpl c;
    private AppLovinAd d;
    private String e;
    private SoftReference f;
    private volatile String h;
    private volatile double j;

    /* renamed from: a  reason: collision with root package name */
    public final Map f3077a = DesugarCollections.synchronizedMap(new HashMap());
    private final Object g = new Object();
    private volatile boolean i = false;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements AppLovinAdRewardListener {
        public a() {
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map map) {
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = b2.this.b.O();
                O.b("IncentivizedAdController", "User over quota: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = b2.this.b.O();
                O.b("IncentivizedAdController", "Reward rejected: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = b2.this.b.O();
                O.a("IncentivizedAdController", "Reward validated: " + map);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = b2.this.b.O();
                O.b("IncentivizedAdController", "Reward validation failed: " + i);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements f2, AppLovinAdVideoPlaybackListener, AppLovinAdRewardListener, AppLovinAdClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinAd f3080a;
        private final AppLovinAdDisplayListener b;
        private final AppLovinAdClickListener c;
        private final AppLovinAdVideoPlaybackListener d;
        private final AppLovinAdRewardListener e;

        public /* synthetic */ c(b2 b2Var, AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener, a aVar) {
            this(appLovinAd, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        }

        private void a(com.applovin.impl.sdk.ad.b bVar) {
            String str;
            int i;
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                b2.this.b.O().a("IncentivizedAdController", "Finishing direct ad...");
            }
            String b = b2.this.b();
            if (!StringUtils.isValidString(b) || !b2.this.i) {
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = b2.this.b.O();
                    O.b("IncentivizedAdController", "Invalid reward state - result: " + b + " and wasFullyEngaged: " + b2.this.i);
                }
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    b2.this.b.O().a("IncentivizedAdController", "Cancelling any incoming reward requests for this ad");
                }
                bVar.d();
                if (b2.this.i) {
                    b2.this.b.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        b2.this.b.O().b("IncentivizedAdController", "User closed the ad after fully watching but reward validation task did not return on time");
                    }
                    str = "network_timeout";
                    i = AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
                } else {
                    if (bVar.F() != null) {
                        str = bVar.F();
                    } else {
                        str = "unknown_early_dismissal_source";
                    }
                    b2.this.b.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = b2.this.b.O();
                        O2.b("IncentivizedAdController", "Ad closed prematurely from source: " + str);
                    }
                    i = AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO;
                }
                bVar.a(b4.a(str));
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    b2.this.b.O().a("IncentivizedAdController", "Notifying listener of reward validation failure");
                }
                l2.a(this.e, bVar, i);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("details", String.valueOf(b2.this.j));
                CollectionUtils.putStringIfValid("source", str, hashMap);
                b2.this.b.g().a(y1.w, bVar, hashMap);
            }
            if (!bVar.N0().getAndSet(true)) {
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    b2.this.b.O().a("IncentivizedAdController", "Scheduling report rewarded ad...");
                }
                b2.this.b.q0().a((w4) new a6(bVar, b2.this.b), r5.b.OTHER);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            l2.a(this.c, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            l2.a(this.b, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AppLovinAd appLovinAd2;
            String str;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
                appLovinAd2 = ((com.applovin.impl.sdk.ad.c) appLovinAd).f();
            } else {
                appLovinAd2 = appLovinAd;
            }
            if (appLovinAd2 instanceof com.applovin.impl.sdk.ad.b) {
                a((com.applovin.impl.sdk.ad.b) appLovinAd2);
            } else {
                if (appLovinAd2 == null) {
                    str = "null/expired ad";
                } else {
                    str = "invalid ad of type: " + appLovinAd2;
                }
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    b2.this.b.O().b("IncentivizedAdController", "Received `adHidden` callback for " + str);
                }
            }
            b2.this.a(appLovinAd2);
            b2.this.b.O();
            if (com.applovin.impl.sdk.o.a()) {
                b2.this.b.O().a("IncentivizedAdController", "Notifying listener of rewarded ad dismissal");
            }
            l2.b(this.b, appLovinAd);
        }

        @Override // com.applovin.impl.f2
        public void onAdDisplayFailed(String str) {
            String str2;
            String str3;
            AppLovinAd appLovinAd = this.f3080a;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
                appLovinAd = ((com.applovin.impl.sdk.ad.c) appLovinAd).f();
            }
            boolean z = this.b instanceof f2;
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.b) {
                a(appLovinAd);
            } else {
                if (appLovinAd == null) {
                    str2 = "null/expired ad";
                } else {
                    str2 = "invalid ad of type: " + appLovinAd;
                }
                b2.this.b.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = b2.this.b.O();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Received `");
                    if (z) {
                        str3 = "adDisplayFailed";
                    } else {
                        str3 = "adHidden";
                    }
                    sb.append(str3);
                    sb.append("` callback for ");
                    sb.append(str2);
                    O.b("IncentivizedAdController", sb.toString());
                }
            }
            b2.this.a(appLovinAd);
            if (z) {
                l2.a(this.b, str);
            } else {
                l2.b(this.b, this.f3080a);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map map) {
            b2.this.a("quota_exceeded");
            l2.b(this.e, appLovinAd, map);
            b2.this.b.g().a(y1.v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", "quota_exceeded"));
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
            b2.this.a("rejected");
            l2.a(this.e, appLovinAd, map);
            b2.this.b.g().a(y1.v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", "rejected"));
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
            b2.this.a("accepted");
            l2.c(this.e, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            b2.this.a("network_timeout");
            l2.a(this.e, appLovinAd, i);
            b2.this.b.g().a(y1.v, (com.applovin.impl.sdk.ad.b) appLovinAd, CollectionUtils.hashMap("error_message", "network_timeout"));
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            l2.a(this.d, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            l2.a(this.d, appLovinAd, d, z);
            b2.this.j = d;
            b2.this.i = z;
        }

        private c(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
            this.f3080a = appLovinAd;
            this.b = appLovinAdDisplayListener;
            this.c = appLovinAdClickListener;
            this.d = appLovinAdVideoPlaybackListener;
            this.e = appLovinAdRewardListener;
        }
    }

    public b2(String str, AppLovinSdk appLovinSdk) {
        this.b = appLovinSdk.a();
        this.c = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
        this.e = str;
    }

    private void e() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        SoftReference softReference = this.f;
        if (softReference != null && (appLovinAdLoadListener = (AppLovinAdLoadListener) softReference.get()) != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
        }
    }

    public boolean d() {
        if (this.d != null) {
            return true;
        }
        return false;
    }

    public String c() {
        return this.e;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements AppLovinAdLoadListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinAdLoadListener f3079a;

        public b(AppLovinAdLoadListener appLovinAdLoadListener) {
            this.f3079a = appLovinAdLoadListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(AppLovinAd appLovinAd) {
            try {
                this.f3079a.adReceived(appLovinAd);
            } catch (Throwable th) {
                com.applovin.impl.sdk.o.c("AppLovinIncentivizedInterstitial", "Unable to notify ad listener about a newly loaded ad", th);
                b2.this.b.E().a("IncentivizedAdController", "adLoaded", th);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(final AppLovinAd appLovinAd) {
            b2.this.d = appLovinAd;
            if (this.f3079a != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        b2.b.this.a(appLovinAd);
                    }
                });
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(final int i) {
            if (this.f3079a != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        b2.b.this.a(i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            try {
                this.f3079a.failedToReceiveAd(i);
            } catch (Throwable th) {
                com.applovin.impl.sdk.o.c("AppLovinIncentivizedInterstitial", "Unable to notify listener about ad load failure", th);
                b2.this.b.E().a("IncentivizedAdController", "adLoadFailed", th);
            }
        }
    }

    public void b(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.b.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.b.O().a("IncentivizedAdController", "User requested preload of incentivized ad...");
        }
        this.f = new SoftReference(appLovinAdLoadListener);
        if (d()) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.d);
                return;
            }
            return;
        }
        a(new b(appLovinAdLoadListener));
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.c.loadNextIncentivizedAd(this.e, appLovinAdLoadListener);
    }

    private void a(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl;
        if (appLovinAd != null) {
            appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        } else {
            appLovinAdImpl = (AppLovinAdImpl) this.d;
        }
        AppLovinAdImpl appLovinAdImpl2 = appLovinAdImpl;
        if (appLovinAdImpl2 != null) {
            a(appLovinAdImpl2, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        com.applovin.impl.sdk.o.h("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        e();
    }

    public void b(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener = a();
        }
        a(appLovinAd, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    public void b(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener = a();
        }
        a(appLovinAd, viewGroup, lifecycle, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    private void a(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl;
        if (appLovinAd != null) {
            appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        } else {
            appLovinAdImpl = (AppLovinAdImpl) this.d;
        }
        AppLovinAdImpl appLovinAdImpl2 = appLovinAdImpl;
        if (appLovinAdImpl2 != null) {
            a(appLovinAdImpl2, viewGroup, lifecycle, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        com.applovin.impl.sdk.o.h("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        String str;
        synchronized (this.g) {
            str = this.h;
        }
        return str;
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.b.q0().a((w4) new g6(bVar, appLovinAdRewardListener, this.b), r5.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.g) {
            this.h = str;
        }
    }

    public void a(String str, Object obj) {
        this.f3077a.put(str, obj);
    }

    private void a(AppLovinAdImpl appLovinAdImpl, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        Map a2 = a2.a(appLovinAdImpl);
        CollectionUtils.putStringIfValid("source", "showRewardedAd", a2);
        this.b.g().d(y1.p, a2);
        c cVar = new c(this, appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        AppLovinAd a3 = z6.a(appLovinAdImpl, this.b);
        String a4 = a(a3, appLovinAdImpl);
        if (StringUtils.isValidString(a4)) {
            a(appLovinAdImpl, a4, cVar, cVar);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.b.y0(), context);
        for (String str : this.f3077a.keySet()) {
            create.setExtraInfo(str, this.f3077a.get(str));
        }
        create.setAdDisplayListener(cVar);
        create.setAdVideoPlaybackListener(cVar);
        create.setAdClickListener(cVar);
        create.showAndRender(a3);
        a((com.applovin.impl.sdk.ad.b) a3, cVar);
    }

    private void a(AppLovinAdImpl appLovinAdImpl, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        Map a2 = a2.a(appLovinAdImpl);
        CollectionUtils.putStringIfValid("source", "showRewardedAdView", a2);
        this.b.g().d(y1.p, a2);
        c cVar = new c(this, appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        AppLovinAd a3 = z6.a(appLovinAdImpl, this.b);
        String a4 = a(a3, appLovinAdImpl);
        if (StringUtils.isValidString(a4)) {
            a(appLovinAdImpl, a4, cVar, cVar);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.b.y0(), context);
        for (String str : this.f3077a.keySet()) {
            create.setExtraInfo(str, this.f3077a.get(str));
        }
        create.setAdDisplayListener(cVar);
        create.setAdVideoPlaybackListener(cVar);
        create.setAdClickListener(cVar);
        create.showAndRender(a3, viewGroup, lifecycle);
        a((com.applovin.impl.sdk.ad.b) a3, cVar);
    }

    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2) {
        if (appLovinAd == null) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.: " + appLovinAd2);
            return "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.";
        } else if (appLovinAd2.getType() != AppLovinAdType.INCENTIVIZED) {
            com.applovin.impl.sdk.o.h("IncentivizedAdController", "Attempting to display ad with invalid ad type: " + appLovinAd2.getType());
            return "Attempting to display ad with invalid ad type";
        } else {
            return null;
        }
    }

    private void a(AppLovinAd appLovinAd, String str, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, f2 f2Var) {
        l2.a(appLovinAdVideoPlaybackListener, appLovinAd, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, false);
        l2.a(f2Var, str);
        Map a2 = a2.a((AppLovinAdImpl) appLovinAd);
        CollectionUtils.putStringIfValid("source", "rewardedAdShowFailed", a2);
        CollectionUtils.putStringIfValid("error_message", str, a2);
        this.b.g().d(y1.s, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAd2 = this.d;
        if (appLovinAd2 == null) {
            return;
        }
        if (!(appLovinAd2 instanceof com.applovin.impl.sdk.ad.c)) {
            if (appLovinAd == appLovinAd2) {
                this.d = null;
                return;
            }
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = (com.applovin.impl.sdk.ad.c) appLovinAd2;
        if (cVar.f() == null || appLovinAd == cVar.f()) {
            this.d = null;
        }
    }

    private AppLovinAdRewardListener a() {
        return new a();
    }
}
