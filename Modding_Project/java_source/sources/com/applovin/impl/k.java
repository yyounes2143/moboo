package com.applovin.impl;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.DTBAdResponse;
import com.applovin.impl.d;
import com.applovin.impl.k2;
import com.applovin.impl.l;
import com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton;
import com.applovin.impl.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
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
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class k extends d3 implements AdControlButton.a, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, v.a {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3164a;
    private m b;
    private u7 c;
    private l d;
    private MaxAdView e;
    private MaxInterstitialAd f;
    private MaxAppOpenAd g;
    private MaxRewardedAd h;
    private MaxNativeAdView i;
    private MaxNativeAdLoader j;
    private MaxAd k;
    private q l;
    private List m;
    private ListView n;
    private View o;
    private AdControlButton p;
    private TextView q;
    private v r;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends MaxNativeAdListener {
        public a() {
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdClicked(MaxAd maxAd) {
            k.this.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoadFailed(String str, MaxError maxError) {
            k.this.onAdLoadFailed(str, maxError);
        }

        @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
        public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
            if (k.this.k != null) {
                k.this.j.destroy(k.this.k);
            }
            k.this.k = maxAd;
            if (maxNativeAdView != null) {
                k.this.i = maxNativeAdView;
            } else {
                k kVar = k.this;
                com.applovin.impl.sdk.k unused = k.this.f3164a;
                kVar.i = new MaxNativeAdView(MaxNativeAdView.MEDIUM_TEMPLATE_1, com.applovin.impl.sdk.k.o());
                k.this.j.render(k.this.i, maxAd);
            }
            k.this.onAdLoaded(maxAd);
        }
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3164a;
    }

    public void initialize(final m mVar, @Nullable final n nVar, @Nullable u7 u7Var, final com.applovin.impl.sdk.k kVar) {
        List a2;
        this.f3164a = kVar;
        this.b = mVar;
        this.c = u7Var;
        this.m = kVar.s0().b();
        l lVar = new l(mVar, nVar, u7Var, this);
        this.d = lVar;
        lVar.a(new k2.a() { // from class: com.applovin.impl.Kkkkkk
            @Override // com.applovin.impl.k2.a
            public final void a(d2 d2Var, j2 j2Var) {
                k.this.a(kVar, mVar, nVar, d2Var, j2Var);
            }
        });
        b();
        if (mVar.f().f()) {
            if ((u7Var == null || u7Var.b().d().D()) && (a2 = kVar.U().a(mVar.c())) != null && !a2.isEmpty()) {
                this.r = new v(a2, mVar.a(), getApplicationContext(), this);
            }
        }
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
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        this.p.setControlState(AdControlButton.b.LOAD);
        this.q.setText("");
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
        this.p.setControlState(AdControlButton.b.LOAD);
        this.q.setText("");
        if (204 == maxError.getCode()) {
            z6.a("No Fill", "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live.", this);
            return;
        }
        z6.a("", "Failed to load with error code: " + maxError.getCode(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        TextView textView = this.q;
        textView.setText(maxAd.getNetworkName() + " ad loaded");
        this.p.setControlState(AdControlButton.b.SHOW);
        if (maxAd.getFormat().isAdViewAd()) {
            a(this.e, maxAd.getFormat().getSize());
        } else if (MaxAdFormat.NATIVE == this.b.a()) {
            a(this.i, MaxAdFormat.MREC.getSize());
        }
    }

    @Override // com.applovin.impl.v.a
    public void onAdResponseLoaded(DTBAdResponse dTBAdResponse, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.e.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.j.setLocalExtraParameter("amazon_ad_response", dTBAdResponse);
        }
        a(maxAdFormat);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        z6.a("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton.a
    public void onClick(AdControlButton adControlButton) {
        if (this.f3164a.s0().c()) {
            z6.a("Not Supported", "Ad loads are not supported while Test Mode is enabled. Please restart the app.", this);
        } else if (this.d.j() != this.b.f()) {
            z6.a("Not Supported", "You cannot load an ad from this waterfall because it does not target the current device. To load an ad, please select the targeted waterfall.", this);
        } else {
            MaxAdFormat a2 = this.b.a();
            AdControlButton.b bVar = AdControlButton.b.LOAD;
            if (bVar == adControlButton.getControlState()) {
                adControlButton.setControlState(AdControlButton.b.LOADING);
                v vVar = this.r;
                if (vVar != null) {
                    vVar.a();
                } else {
                    a(a2);
                }
            } else if (AdControlButton.b.SHOW == adControlButton.getControlState()) {
                if (!a2.isAdViewAd() && a2 != MaxAdFormat.NATIVE) {
                    adControlButton.setControlState(bVar);
                }
                b(a2);
            }
        }
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_ad_unit_detail_activity);
        setTitle(this.d.k());
        this.n = (ListView) findViewById(R.id.listView);
        this.o = findViewById(R.id.ad_presenter_view);
        this.p = (AdControlButton) findViewById(R.id.ad_control_button);
        this.q = (TextView) findViewById(R.id.status_textview);
        this.n.setAdapter((ListAdapter) this.d);
        this.q.setText(a());
        this.q.setTypeface(Typeface.DEFAULT_BOLD);
        this.p.setOnClickListener(this);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setPadding(0, 10, 0, 0);
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.getPaint().setShadowLayer(10, 0.0f, -10, 855638016);
        shapeDrawable.setShape(new RectShape());
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable});
        layerDrawable.setLayerInset(0, 0, 10, 0, 0);
        this.o.setBackground(layerDrawable);
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            this.f3164a.s0().a(this.m);
        }
        MaxAdView maxAdView = this.e;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxAppOpenAd maxAppOpenAd = this.g;
        if (maxAppOpenAd != null) {
            maxAppOpenAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.h;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.j;
        if (maxNativeAdLoader != null) {
            MaxAd maxAd = this.k;
            if (maxAd != null) {
                maxNativeAdLoader.destroy(maxAd);
            }
            this.j.destroy();
        }
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
        z6.a("onUserRewarded", maxAd, this);
    }

    private void b() {
        String c = this.b.c();
        if (this.b.a().isAdViewAd()) {
            MaxAdView maxAdView = new MaxAdView(c, this.b.a(), this.f3164a.y0(), this);
            this.e = maxAdView;
            maxAdView.setExtraParameter("adaptive_banner", "false");
            this.e.setExtraParameter("disable_auto_retries", "true");
            this.e.setExtraParameter("disable_precache", "true");
            this.e.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
            this.e.stopAutoRefresh();
            this.e.setListener(this);
        } else if (MaxAdFormat.INTERSTITIAL == this.b.a()) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(c, this.f3164a.y0(), this);
            this.f = maxInterstitialAd;
            maxInterstitialAd.setExtraParameter("disable_auto_retries", "true");
            this.f.setListener(this);
        } else if (MaxAdFormat.APP_OPEN == this.b.a()) {
            MaxAppOpenAd maxAppOpenAd = new MaxAppOpenAd(c, this.f3164a.y0());
            this.g = maxAppOpenAd;
            maxAppOpenAd.setExtraParameter("disable_auto_retries", "true");
            this.g.setListener(this);
        } else if (MaxAdFormat.REWARDED == this.b.a()) {
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(c, this.f3164a.y0(), this);
            this.h = maxRewardedAd;
            maxRewardedAd.setExtraParameter("disable_auto_retries", "true");
            this.h.setListener(this);
        } else if (MaxAdFormat.NATIVE == this.b.a()) {
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(c, this.f3164a.y0(), this);
            this.j = maxNativeAdLoader;
            maxNativeAdLoader.setExtraParameter("disable_auto_retries", "true");
            this.j.setNativeAdListener(new a());
            this.j.setRevenueListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final com.applovin.impl.sdk.k kVar, final m mVar, final n nVar, d2 d2Var, final j2 j2Var) {
        if (j2Var instanceof l.b) {
            d.a(this, MaxDebuggerAdUnitDetailActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.Kkkkkkk
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    k.a(j2.this, mVar, nVar, kVar, (MaxDebuggerAdUnitDetailActivity) activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(j2 j2Var, m mVar, n nVar, com.applovin.impl.sdk.k kVar, MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
        maxDebuggerAdUnitDetailActivity.initialize(mVar, nVar, ((l.b) j2Var).v(), kVar);
    }

    @Override // com.applovin.impl.v.a
    public void onAdLoadFailed(AdError adError, MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            this.e.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.APP_OPEN == maxAdFormat) {
            this.g.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.REWARDED == maxAdFormat) {
            this.h.setLocalExtraParameter("amazon_ad_error", adError);
        } else if (MaxAdFormat.NATIVE == maxAdFormat) {
            this.j.setLocalExtraParameter("amazon_ad_error", adError);
        }
        a(maxAdFormat);
    }

    private void a(MaxAdFormat maxAdFormat) {
        StringBuilder sb = new StringBuilder();
        sb.append("Loading live ");
        sb.append(maxAdFormat.getDisplayName());
        sb.append(" Ad from ");
        u7 u7Var = this.c;
        sb.append(u7Var != null ? u7Var.b().a() : this.d.j().c());
        com.applovin.impl.sdk.o.g("MaxDebuggerAdUnitDetailActivity", sb.toString());
        if (this.c != null) {
            this.f3164a.s0().a(this.c.b().b());
        }
        if (maxAdFormat.isAdViewAd()) {
            this.e.setPlacement("[Mediation Debugger Live Ad]");
            this.e.loadAd();
        } else if (MaxAdFormat.INTERSTITIAL == this.b.a()) {
            this.f.loadAd();
        } else if (MaxAdFormat.APP_OPEN == this.b.a()) {
            this.g.loadAd();
        } else if (MaxAdFormat.REWARDED == this.b.a()) {
            this.h.loadAd();
        } else if (MaxAdFormat.NATIVE == this.b.a()) {
            this.j.setPlacement("[Mediation Debugger Live Ad]");
            this.j.loadAd();
        } else {
            z6.a("Live ads currently unavailable for ad format", this);
        }
    }

    private void a(ViewGroup viewGroup, AppLovinSdkUtils.Size size) {
        if (this.l != null) {
            return;
        }
        q qVar = new q(viewGroup, size, this);
        this.l = qVar;
        qVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.Kkkkk
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                k.this.a(dialogInterface);
            }
        });
        this.l.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        this.l = null;
    }

    private void b(MaxAdFormat maxAdFormat) {
        StringBuilder sb = new StringBuilder();
        sb.append("Showing live ");
        sb.append(maxAdFormat.getDisplayName());
        sb.append(" Ad from ");
        u7 u7Var = this.c;
        sb.append(u7Var != null ? u7Var.b().a() : this.d.j().c());
        com.applovin.impl.sdk.o.g("MaxDebuggerAdUnitDetailActivity", sb.toString());
        if (maxAdFormat.isAdViewAd()) {
            a(this.e, maxAdFormat.getSize());
        } else if (MaxAdFormat.INTERSTITIAL == this.b.a()) {
            this.f.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.APP_OPEN == this.b.a()) {
            this.g.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED == this.b.a()) {
            this.h.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.NATIVE == this.b.a()) {
            a(this.i, MaxAdFormat.MREC.getSize());
        }
    }

    private String a() {
        if (this.f3164a.s0().c()) {
            return "Not supported while Test Mode is enabled";
        }
        if (this.d.j() != this.b.f()) {
            return "This waterfall is not targeted for the current device";
        }
        return "Tap to load an ad";
    }
}
