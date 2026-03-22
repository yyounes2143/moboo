package com.applovin.impl.mediation.debugger.ui.testmode;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.d3;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v;
import com.applovin.impl.v2;
import com.applovin.impl.w;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxAppOpenAd;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class a extends d3 implements MaxRewardedAdListener, MaxAdViewAdListener, AdControlButton.a, MaxAdRevenueListener, v.a {

    /* renamed from: a  reason: collision with root package name */
    private v2 f3428a;
    private k b;
    private MaxAdView c;
    private MaxAdView d;
    private MaxInterstitialAd e;
    private MaxAppOpenAd f;
    private MaxRewardedAd g;
    private MaxAd h;
    private MaxNativeAdLoader i;
    private List j;
    private String k;
    private AdControlButton l;
    private AdControlButton m;
    private AdControlButton n;
    private AdControlButton o;
    private AdControlButton p;
    private AdControlButton q;
    private Button r;
    private Button s;
    private FrameLayout t;
    private FrameLayout u;
    private Switch v;
    private Switch w;
    private Map x;

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0017a extends MaxNativeAdListener {
        public C0017a() {
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            a.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            a.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (a.this.h != null) {
                a.this.i.destroy(a.this.h);
            }
            a.this.h = maxAd;
            a.this.u.removeAllViews();
            a.this.u.addView(maxNativeAdView);
            a.this.onAdLoaded(maxAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void d(View view) {
        this.d.removeAllViews();
        this.m.setControlState(AdControlButton.b.LOAD);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void e() {
        List r = this.f3428a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.REWARDED;
        if (r.contains(maxAdFormat)) {
            String str = "test_mode_rewarded_" + this.f3428a.m();
            this.k = str;
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(str, this.b.y0(), this);
            this.g = maxRewardedAd;
            maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
            this.g.setListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.rewarded_control_button);
            this.p = adControlButton;
            adControlButton.setOnClickListener(this);
            this.p.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.rewarded_control_view).setVisibility(8);
    }

    @Override // com.applovin.impl.d3
    public k getSdk() {
        return this.b;
    }

    public String getTestModeNetwork(MaxAdFormat maxAdFormat) {
        if (this.f3428a.x() != null && this.f3428a.x().containsKey(maxAdFormat)) {
            return (String) this.f3428a.x().get(maxAdFormat);
        }
        return this.f3428a.m();
    }

    public void initialize(v2 v2Var) {
        this.f3428a = v2Var;
        this.b = v2Var.o();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(@NonNull MaxAd maxAd) {
        z6.a("onAdClicked", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(@NonNull MaxAd maxAd) {
        z6.a("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
        a(maxAd.getAdUnitId()).setControlState(AdControlButton.b.LOAD);
        z6.a("Failed to display " + maxAd.getFormat().getDisplayName(), "MAX Error\nCode: " + maxError.getCode() + "\nMessage: " + maxError.getMessage() + "\n\n" + maxAd.getNetworkName() + " Display Error\nCode: " + maxError.getMediatedNetworkErrorCode() + "\nMessage: " + maxError.getMediatedNetworkErrorMessage(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(@NonNull MaxAd maxAd) {
        z6.a("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(@NonNull MaxAd maxAd) {
        z6.a("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(@NonNull MaxAd maxAd) {
        z6.a("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
        AdControlButton a2 = a(str);
        a2.setControlState(AdControlButton.b.LOAD);
        z6.a(maxError, a2.getFormat().getLabel(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        AdControlButton a2 = a(maxAd.getAdUnitId());
        if (!maxAd.getFormat().isAdViewAd() && !maxAd.getFormat().equals(MaxAdFormat.NATIVE)) {
            a2.setControlState(AdControlButton.b.SHOW);
        } else {
            a2.setControlState(AdControlButton.b.LOAD);
        }
    }

    @Override // com.applovin.impl.v.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER != maxAdFormat && MaxAdFormat.LEADER != maxAdFormat) {
            if (MaxAdFormat.MREC == maxAdFormat) {
                this.d.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
                this.e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
                this.f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.REWARDED == maxAdFormat) {
                this.g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            } else if (MaxAdFormat.NATIVE == maxAdFormat) {
                this.i.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
            }
        } else {
            this.c.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        z6.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        MaxAdFormat format = adControlButton.getFormat();
        AdControlButton.b bVar = AdControlButton.b.LOAD;
        if (bVar == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.b.LOADING);
            Map map = this.x;
            if (map != null && map.get(format) != null) {
                ((v) this.x.get(format)).a();
            } else {
                a(format);
            }
        } else if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
            adControlButton.setControlState(bVar);
            b(format);
        }
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f3428a == null) {
            o.h("MaxDebuggerMultiAdActivity", "Failed to initialize activity with a network model.");
            return;
        }
        setContentView(R.layout.mediation_debugger_multi_ad_activity);
        setTitle(this.f3428a.g() + " Test Ads");
        this.j = this.b.s0().b();
        a();
        c();
        b();
        e();
        d();
        findViewById(R.id.app_open_ad_control_view).setVisibility(8);
        this.r = (Button) findViewById(R.id.show_mrec_button);
        this.s = (Button) findViewById(R.id.show_native_button);
        if (this.f3428a.J() && this.f3428a.r().contains(MaxAdFormat.MREC)) {
            this.u.setVisibility(8);
            this.r.setBackgroundColor(-1);
            this.s.setBackgroundColor(-3355444);
            this.r.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.a(view);
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.b(view);
                }
            });
        } else {
            this.r.setVisibility(8);
            this.s.setVisibility(8);
        }
        this.v = (Switch) findViewById(R.id.native_banner_switch);
        this.w = (Switch) findViewById(R.id.native_mrec_switch);
        if (this.f3428a.K()) {
            this.v.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.c(view);
                }
            });
            this.w.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.d(view);
                }
            });
        } else {
            this.v.setVisibility(8);
            this.w.setVisibility(8);
        }
        if (StringUtils.isValidString(this.f3428a.e()) && this.f3428a.d() != null && this.f3428a.d().size() > 0) {
            AdRegistration.getInstance(this.f3428a.e(), this);
            AdRegistration.enableTesting(true);
            AdRegistration.enableLogging(true);
            HashMap hashMap = new HashMap(this.f3428a.d().size());
            for (MaxAdFormat maxAdFormat : this.f3428a.d().keySet()) {
                hashMap.put(maxAdFormat, new v((w) this.f3428a.d().get(maxAdFormat), maxAdFormat, getApplicationContext(), this));
            }
            this.x = hashMap;
        }
        try {
            setRequestedOrientation(7);
        } catch (Throwable th) {
            o.c("AppLovinSdk", "Failed to set portrait orientation", th);
        }
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.b.s0().a(this.j);
        MaxAdView maxAdView = this.c;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxAdView maxAdView2 = this.d;
        if (maxAdView2 != null) {
            maxAdView2.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.e;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.g;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.i;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.h;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.i.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
        z6.a("onUserRewarded", maxAd, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void b(View view) {
        this.u.setVisibility(0);
        this.t.setVisibility(8);
        this.s.setBackgroundColor(-1);
        this.r.setBackgroundColor(-3355444);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void c(View view) {
        this.c.removeAllViews();
        this.l.setControlState(AdControlButton.b.LOAD);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void a(View view) {
        this.t.setVisibility(0);
        this.u.setVisibility(8);
        this.r.setBackgroundColor(-1);
        this.s.setBackgroundColor(-3355444);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void d() {
        this.u = (FrameLayout) findViewById(R.id.native_ad_view_container);
        if (this.f3428a.J()) {
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader("test_mode_native", this.b.y0(), this);
            this.i = maxNativeAdLoader;
            maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
            this.i.setNativeAdListener(new C0017a());
            this.i.setRevenueListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.native_control_button);
            this.q = adControlButton;
            adControlButton.setOnClickListener(this);
            this.q.setFormat(MaxAdFormat.NATIVE);
            return;
        }
        findViewById(R.id.native_control_view).setVisibility(8);
        this.u.setVisibility(8);
    }

    private void c() {
        this.t = (FrameLayout) findViewById(R.id.mrec_ad_view_container);
        List r = this.f3428a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.MREC;
        if (r.contains(maxAdFormat)) {
            MaxAdView maxAdView = new MaxAdView("test_mode_mrec", maxAdFormat, this.b.y0(), this);
            this.d = maxAdView;
            maxAdView.setExtraParameter("disable_auto_retries", "true");
            this.d.setExtraParameter("disable_precache", "true");
            this.d.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.d.stopAutoRefresh();
            this.d.setListener(this);
            this.t.addView(this.d, new FrameLayout.LayoutParams(-1, -1));
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.mrec_control_button);
            this.m = adControlButton;
            adControlButton.setOnClickListener(this);
            this.m.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.mrec_control_view).setVisibility(8);
        this.t.setVisibility(8);
    }

    @Override // com.applovin.impl.v.a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.BANNER != maxAdFormat && MaxAdFormat.LEADER != maxAdFormat) {
            if (MaxAdFormat.MREC == maxAdFormat) {
                this.d.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
                this.e.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
                this.f.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.REWARDED == maxAdFormat) {
                this.g.setLocalExtraParameter("amazon_ad_error", adError);
            } else if (MaxAdFormat.NATIVE == maxAdFormat) {
                this.i.setLocalExtraParameter("amazon_ad_error", adError);
            }
        } else {
            this.c.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    private void b() {
        List r = this.f3428a.r();
        MaxAdFormat maxAdFormat = MaxAdFormat.INTERSTITIAL;
        if (r.contains(maxAdFormat)) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd("test_mode_interstitial", this.b.y0(), this);
            this.e = maxInterstitialAd;
            maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
            this.e.setListener(this);
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.interstitial_control_button);
            this.n = adControlButton;
            adControlButton.setOnClickListener(this);
            this.n.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.interstitial_control_view).setVisibility(8);
    }

    private void a() {
        MaxAdFormat maxAdFormat;
        String str;
        boolean isTablet = AppLovinSdkUtils.isTablet(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.banner_ad_view_container);
        if (isTablet) {
            maxAdFormat = MaxAdFormat.LEADER;
            ((TextView) findViewById(R.id.banner_label)).setText("Leader");
            str = "test_mode_leader";
        } else {
            maxAdFormat = MaxAdFormat.BANNER;
            str = "test_mode_banner";
        }
        if (this.f3428a.r().contains(maxAdFormat)) {
            MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, this.b.y0(), this);
            this.c = maxAdView;
            maxAdView.setExtraParameter("adaptive_banner", "false");
            this.c.setExtraParameter("disable_auto_retries", "true");
            this.c.setExtraParameter("disable_precache", "true");
            this.c.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.c.stopAutoRefresh();
            this.c.setListener(this);
            frameLayout.addView(this.c, new FrameLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getWidth()), AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getHeight())));
            AdControlButton adControlButton = (AdControlButton) findViewById(R.id.banner_control_button);
            this.l = adControlButton;
            adControlButton.setOnClickListener(this);
            this.l.setFormat(maxAdFormat);
            return;
        }
        findViewById(R.id.banner_control_view).setVisibility(8);
        frameLayout.setVisibility(8);
    }

    private void b(MaxAdFormat maxAdFormat) {
        o.g("MaxDebuggerMultiAdActivity", "Showing test " + maxAdFormat.getDisplayName() + " Ad from " + this.f3428a.g());
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.e.showAd();
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f.showAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.g.showAd();
        }
    }

    private void a(MaxAdFormat maxAdFormat) {
        o.g("MaxDebuggerMultiAdActivity", "Loading test " + maxAdFormat.getDisplayName() + " Ad from " + this.f3428a.g());
        MaxAdFormat maxAdFormat2 = MaxAdFormat.BANNER;
        boolean z = false;
        boolean z2 = (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) && this.v.isChecked();
        MaxAdFormat maxAdFormat3 = MaxAdFormat.MREC;
        if (maxAdFormat3 == maxAdFormat && this.w.isChecked()) {
            z = true;
        }
        if (!z2 && !z) {
            this.b.s0().a(getTestModeNetwork(maxAdFormat));
        } else {
            this.b.s0().a(this.f3428a.w());
        }
        if (maxAdFormat2 == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            this.c.loadAd();
        } else if (maxAdFormat3 == maxAdFormat) {
            this.d.loadAd();
            this.r.callOnClick();
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.e.loadAd();
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.f.loadAd();
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.g.loadAd();
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.i.loadAd();
            this.s.callOnClick();
        }
    }

    private AdControlButton a(String str) {
        if (!str.equals("test_mode_banner") && !str.equals("test_mode_leader")) {
            if (str.equals("test_mode_mrec")) {
                return this.m;
            }
            if (str.equals("test_mode_interstitial")) {
                return this.n;
            }
            if (str.equals("test_mode_app_open")) {
                return this.o;
            }
            if (str.equals(this.k)) {
                return this.p;
            }
            if (str.equals("test_mode_native")) {
                return this.q;
            }
            throw new IllegalArgumentException("Invalid test mode ad unit identifier provided " + str);
        }
        return this.l;
    }
}
