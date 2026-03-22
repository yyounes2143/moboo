package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.r1;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h2 implements AppLovinInterstitialAdDialog {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f3139a;
    private final WeakReference b;
    private final Map c = DesugarCollections.synchronizedMap(new HashMap());
    private volatile AppLovinAdLoadListener d;
    private volatile AppLovinAdDisplayListener e;
    private volatile AppLovinAdVideoPlaybackListener f;
    private volatile AppLovinAdClickListener g;
    private volatile com.applovin.impl.sdk.ad.b h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements AppLovinAdLoadListener {
        public a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            h2.this.b(appLovinAd);
            h2.this.showAndRender(appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            h2.this.b(i);
        }
    }

    public h2(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk != null) {
            if (context != null) {
                this.f3139a = appLovinSdk.a();
                this.b = new WeakReference(context);
                return;
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private Context e() {
        return (Context) this.b.get();
    }

    private long g() {
        String str = this.f3139a.n0().getExtraParameters().get("fullscreen_ad_display_delay_enabled");
        if (str != null && !Boolean.parseBoolean(str)) {
            return 0L;
        }
        return Math.max(0L, ((Long) this.f3139a.a(l4.T1)).longValue());
    }

    public AppLovinAdDisplayListener c() {
        return this.e;
    }

    public AppLovinAdVideoPlaybackListener d() {
        return this.f;
    }

    public com.applovin.impl.sdk.ad.b f() {
        return this.h;
    }

    public Map h() {
        return this.c;
    }

    public boolean i() {
        final com.applovin.impl.sdk.ad.b bVar = this.h;
        if (bVar == null) {
            return false;
        }
        bVar.B0();
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.a(bVar);
            }
        });
        return true;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.g = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.e = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.d = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setExtraInfo(String str, Object obj) {
        if (str != null) {
            this.c.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        a(new a());
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        if (appLovinAd.getType() != AppLovinAdType.INCENTIVIZED) {
            Map a2 = a2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "showInterstitialAd", a2);
            this.f3139a.g().d(y1.p, a2);
        }
        AppLovinAd a3 = z6.a(appLovinAd, this.f3139a);
        Context e = e();
        String a4 = a(a3, appLovinAd, e);
        if (StringUtils.isValidString(a4)) {
            a(appLovinAd, a4);
        } else {
            a((com.applovin.impl.sdk.ad.b) a3, e);
        }
    }

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }

    public AppLovinAdClickListener b() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.applovin.impl.sdk.ad.b bVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        appLovinFullscreenAdViewObserver.onDestroy();
        a(bVar, appLovinAdDisplayListener, str, th, (AppLovinFullscreenActivity) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Lifecycle lifecycle, AppLovinAd appLovinAd, ViewGroup viewGroup, Activity activity) {
        a((com.applovin.impl.sdk.ad.b) appLovinAd, viewGroup, new AppLovinFullscreenAdViewObserver(lifecycle, this), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(Context context) {
        Intent intent = new Intent(context, AppLovinFullscreenActivity.class);
        intent.putExtra("com.applovin.interstitial.sdk_key", this.f3139a.i0());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        if (this.f3139a.e().a() == null && ((Boolean) this.f3139a.a(l4.s2)).booleanValue()) {
            intent.addFlags(8388608);
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th, AppLovinFullscreenActivity appLovinFullscreenActivity) {
        com.applovin.impl.sdk.o.c("InterstitialAdDialogWrapper", str, th);
        if (appLovinAdDisplayListener instanceof f2) {
            l2.a(appLovinAdDisplayListener, str);
        } else {
            l2.b(appLovinAdDisplayListener, bVar);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss("failed_to_display_ad");
        }
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, final ViewGroup viewGroup, final Lifecycle lifecycle) {
        if (appLovinAd.getType() != AppLovinAdType.INCENTIVIZED) {
            Map a2 = a2.a((AppLovinAdImpl) appLovinAd);
            CollectionUtils.putStringIfValid("source", "showInterstitialAdView", a2);
            this.f3139a.g().d(y1.p, a2);
        }
        if (viewGroup != null && lifecycle != null) {
            final AppLovinAd a3 = z6.a(appLovinAd, this.f3139a);
            final Activity u0 = this.f3139a.u0();
            String a4 = a(a3, appLovinAd, u0);
            if (StringUtils.isValidString(a4)) {
                a(appLovinAd, a4);
                return;
            } else {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkk
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.this.a(lifecycle, a3, viewGroup, u0);
                    }
                });
                return;
            }
        }
        com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
        a(appLovinAd, "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
    }

    public void a() {
        this.g = null;
        this.d = null;
        this.f = null;
        this.e = null;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements r1.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f3141a;
        final /* synthetic */ AppLovinFullscreenAdViewObserver b;
        final /* synthetic */ ViewGroup c;

        public b(Activity activity, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, ViewGroup viewGroup) {
            this.f3141a = activity;
            this.b = appLovinFullscreenAdViewObserver;
            this.c = viewGroup;
        }

        @Override // com.applovin.impl.r1.f
        public void a(r1 r1Var) {
            if (d.a(this.f3141a)) {
                com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad when parent activity is finishing");
                h2.b(h2.this.h, h2.this.e, "Failed to show interstitial: attempting to show ad when parent activity is finishing", null, this.b);
                HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "invalidActivity");
                CollectionUtils.putStringIfValid("error_message", "Failed to show interstitial: attempting to show ad when parent activity is finishing", hashMap);
                h2.this.f3139a.g().a(y1.s, h2.this.h, hashMap);
                return;
            }
            this.b.setPresenter(r1Var);
            try {
                r1Var.a(this.c);
            } catch (Throwable th) {
                String str = "Failed to show interstitial: presenter threw exception " + th;
                com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", str);
                h2.b(h2.this.h, h2.this.e, str, th, this.b);
                HashMap<String, String> hashMap2 = CollectionUtils.hashMap("source", "presentContainerView");
                CollectionUtils.putStringIfValid("error_message", str, hashMap2);
                CollectionUtils.putStringIfValid("top_main_method", th.toString(), hashMap2);
                h2.this.f3139a.g().a(y1.s, h2.this.h, hashMap2);
            }
        }

        @Override // com.applovin.impl.r1.f
        public void a(String str, Throwable th) {
            h2.b(h2.this.h, h2.this.e, str, th, this.b);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", "renderInterstitialAdView");
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), hashMap);
            h2.this.f3139a.g().a(y1.s, h2.this.h, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar) {
        this.f3139a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3139a.O().a("InterstitialAdDialogWrapper", "Re-showing the current ad after app launch.");
        }
        showAndRender(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.a(appLovinAd);
            }
        });
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f3139a.k().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.a(i);
            }
        });
    }

    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Failed to show interstitial: stale activity reference provided");
            return "Failed to show interstitial: stale activity reference provided";
        } else if (appLovinAd == null) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Unable to retrieve the loaded ad: " + appLovinAd2);
            return "Unable to retrieve the loaded ad";
        } else if (((AppLovinAdImpl) appLovinAd).hasShown() && ((Boolean) this.f3139a.a(l4.G1)).booleanValue()) {
            com.applovin.impl.sdk.o.h("InterstitialAdDialogWrapper", "Attempting to show ad again: " + appLovinAd);
            return "Attempting to show ad again";
        } else {
            return null;
        }
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.f3139a.f().a(bVar);
        this.h = bVar;
        long g = g();
        this.f3139a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3139a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad with delay " + g + "ms...");
        }
        if (((Boolean) this.f3139a.a(l4.T0)).booleanValue()) {
            this.f3139a.h().a(this.h);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.a(context);
            }
        }, g);
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, final Activity activity) {
        this.f3139a.f().a(bVar);
        this.h = bVar;
        long g = g();
        this.f3139a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3139a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad with delay " + g + "ms...");
        }
        if (((Boolean) this.f3139a.a(l4.T0)).booleanValue()) {
            this.f3139a.h().a(this.h);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                h2.this.a(viewGroup, activity, appLovinFullscreenAdViewObserver);
            }
        }, g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Activity activity, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        this.f3139a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3139a.O();
            O.a("InterstitialAdDialogWrapper", "Presenting ad in a containerView(" + viewGroup + ")");
        }
        viewGroup.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        r1.a(this.h, this.g, this.e, this.f, this.c, this.f3139a, activity, new b(activity, appLovinFullscreenAdViewObserver, viewGroup));
    }

    private void a(AppLovinAd appLovinAd, String str) {
        if (this.e != null) {
            if (this.e instanceof f2) {
                ((f2) this.e).onAdDisplayFailed(str);
            } else {
                this.e.adHidden(appLovinAd);
            }
        }
        Map a2 = a2.a((AppLovinAdImpl) appLovinAd);
        CollectionUtils.putStringIfValid("source", "interstitialAdShowFailed", a2);
        CollectionUtils.putStringIfValid("error_message", str, a2);
        this.f3139a.g().d(y1.s, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.d != null) {
            this.d.adReceived(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        if (this.d != null) {
            this.d.failedToReceiveAd(i);
        }
    }
}
