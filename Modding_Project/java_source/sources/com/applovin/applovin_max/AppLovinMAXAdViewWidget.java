package com.applovin.applovin_max;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxAdViewConfiguration;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinMAXAdViewWidget extends FrameLayout implements MaxAdListener, MaxAdViewAdListener, MaxAdRevenueListener {
    private final MaxAdView adView;
    @Nullable
    private AppLovinMAXAdView containerView;
    private final boolean shouldPreloadWidget;

    public AppLovinMAXAdViewWidget(String str, MaxAdFormat maxAdFormat, boolean z, Context context) {
        this(str, maxAdFormat, z, false, context);
    }

    public void attachAdView(AppLovinMAXAdView appLovinMAXAdView) {
        this.containerView = appLovinMAXAdView;
    }

    public void destroy() {
        detachAdView();
        this.adView.setListener(null);
        this.adView.setRevenueListener(null);
        this.adView.destroy();
    }

    public void detachAdView() {
        this.containerView = null;
    }

    public String getAdUnitId() {
        return this.adView.getAdUnitId();
    }

    public MaxAdView getAdView() {
        return this.adView;
    }

    public boolean hasContainerView() {
        if (this.containerView != null) {
            return true;
        }
        return false;
    }

    public void loadAd() {
        this.adView.loadAd();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(@NonNull MaxAd maxAd) {
        if (this.containerView != null) {
            Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(maxAd);
            adInfo.put("adViewId", Integer.valueOf(hashCode()));
            this.containerView.sendEvent("OnAdViewAdClickedEvent", adInfo);
        }
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(@NonNull MaxAd maxAd) {
        if (this.containerView != null) {
            Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(maxAd);
            adInfo.put("adViewId", Integer.valueOf(hashCode()));
            this.containerView.sendEvent("OnAdViewAdCollapsedEvent", adInfo);
        }
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(@NonNull MaxAd maxAd) {
        if (this.containerView != null) {
            Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(maxAd);
            adInfo.put("adViewId", Integer.valueOf(hashCode()));
            this.containerView.sendEvent("OnAdViewAdExpandedEvent", adInfo);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
        Map<String, Object> adLoadFailedInfo = AppLovinMAX.getInstance().getAdLoadFailedInfo(str, maxError);
        adLoadFailedInfo.put("adViewId", Integer.valueOf(hashCode()));
        if (this.shouldPreloadWidget) {
            AppLovinMAX.getInstance().fireCallback("OnWidgetAdViewAdLoadFailedEvent", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adLoadFailedInfo));
        }
        AppLovinMAXAdView appLovinMAXAdView = this.containerView;
        if (appLovinMAXAdView != null) {
            appLovinMAXAdView.sendEvent("OnAdViewAdLoadFailedEvent", adLoadFailedInfo);
        }
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(@NonNull MaxAd maxAd) {
        Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(maxAd);
        adInfo.put("adViewId", Integer.valueOf(hashCode()));
        if (this.shouldPreloadWidget) {
            AppLovinMAX.getInstance().fireCallback("OnWidgetAdViewAdLoadedEvent", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adInfo));
        }
        AppLovinMAXAdView appLovinMAXAdView = this.containerView;
        if (appLovinMAXAdView != null) {
            appLovinMAXAdView.sendEvent("OnAdViewAdLoadedEvent", adInfo);
        }
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        if (this.containerView != null) {
            Map<String, Object> adInfo = AppLovinMAX.getInstance().getAdInfo(maxAd);
            adInfo.put("adViewId", Integer.valueOf(hashCode()));
            this.containerView.sendEvent("OnAdViewAdRevenuePaidEvent", adInfo);
        }
    }

    public void setAutoRefreshEnabled(boolean z) {
        if (z) {
            this.adView.startAutoRefresh();
        } else {
            this.adView.stopAutoRefresh();
        }
    }

    public void setCustomData(@Nullable String str) {
        this.adView.setCustomData(str);
    }

    public void setExtraParameters(@Nullable Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                this.adView.setExtraParameter(entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public void setLocalExtraParameters(@Nullable Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                this.adView.setLocalExtraParameter(entry.getKey(), entry.getValue());
            }
        }
    }

    public void setPlacement(@Nullable String str) {
        this.adView.setPlacement(str);
    }

    public AppLovinMAXAdViewWidget(String str, MaxAdFormat maxAdFormat, boolean z, boolean z2, Context context) {
        super(context);
        this.shouldPreloadWidget = z2;
        MaxAdViewConfiguration.Builder builder = MaxAdViewConfiguration.builder();
        if (maxAdFormat.isBannerOrLeaderAd()) {
            if (z) {
                builder.setAdaptiveType(MaxAdViewConfiguration.AdaptiveType.ANCHORED);
            } else {
                builder.setAdaptiveType(MaxAdViewConfiguration.AdaptiveType.NONE);
            }
        }
        MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, builder.build());
        this.adView = maxAdView;
        maxAdView.setListener(this);
        maxAdView.setRevenueListener(this);
        maxAdView.setExtraParameter("allow_pause_auto_refresh_immediately", "true");
        maxAdView.stopAutoRefresh();
        addView(maxAdView);
        maxAdView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(@NonNull MaxAd maxAd) {
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(@NonNull MaxAd maxAd) {
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
    }
}
