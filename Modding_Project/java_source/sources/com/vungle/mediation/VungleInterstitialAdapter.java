package com.vungle.mediation;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BannerAdListener;
import com.vungle.ads.BaseAd;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleBannerView;
import com.vungle.ads.VungleError;
import j$.util.Objects;
/* compiled from: Proguard */
@Keep
/* loaded from: classes6.dex */
public class VungleInterstitialAdapter extends VungleMediationAdapter implements MediationInterstitialAdapter, MediationBannerAdapter {
    private VungleBannerView bannerAdView;
    private RelativeLayout bannerLayout;
    private InterstitialAd interstitialAd;
    private MediationBannerListener mediationBannerListener;
    private MediationInterstitialListener mediationInterstitialListener;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class VungleBannerListener implements BannerAdListener {
        @Override // com.vungle.ads.BaseAdListener
        public void onAdClicked(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdClicked(VungleInterstitialAdapter.this);
                VungleInterstitialAdapter.this.mediationBannerListener.onAdOpened(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLeftApplication(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdLeftApplication(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLoaded(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                VungleInterstitialAdapter.this.mediationBannerListener.onAdLoaded(VungleInterstitialAdapter.this);
            }
        }

        public VungleBannerListener() {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdEnd(@NonNull BaseAd baseAd) {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdImpression(@NonNull BaseAd baseAd) {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdStart(@NonNull BaseAd baseAd) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class VungleInterstitialListener implements InterstitialAdListener {
        @Override // com.vungle.ads.BaseAdListener
        public void onAdClicked(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdClicked(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdEnd(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdClosed(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
            AdError adError = VungleMediationAdapter.getAdError(vungleError);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLeftApplication(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdLeftApplication(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdLoaded(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdLoaded(VungleInterstitialAdapter.this);
            }
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdStart(@NonNull BaseAd baseAd) {
            if (VungleInterstitialAdapter.this.mediationInterstitialListener != null) {
                VungleInterstitialAdapter.this.mediationInterstitialListener.onAdOpened(VungleInterstitialAdapter.this);
            }
        }

        public VungleInterstitialListener() {
        }

        @Override // com.vungle.ads.BaseAdListener
        public void onAdImpression(@NonNull BaseAd baseAd) {
        }
    }

    @NonNull
    public static VungleAdSize getVungleBannerAdSizeFromGoogleAdSize(AdSize adSize, String str) {
        VungleAdSize validAdSizeFromSize = VungleAdSize.getValidAdSizeFromSize(adSize.getWidth(), adSize.getHeight(), str);
        adSize.toString();
        Objects.toString(validAdSizeFromSize);
        return validAdSizeFromSize;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @NonNull
    public View getBannerView() {
        hashCode();
        return this.bannerLayout;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        hashCode();
        if (this.bannerAdView != null) {
            this.bannerLayout.removeAllViews();
            this.bannerAdView.finishAd();
            this.bannerAdView = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@NonNull final Context context, @NonNull MediationBannerListener mediationBannerListener, @NonNull Bundle bundle, @NonNull final AdSize adSize, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        this.mediationBannerListener = mediationBannerListener;
        String string = bundle.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            adError.toString();
            mediationBannerListener.onAdFailedToLoad(this, adError);
            return;
        }
        VungleInitializer.getInstance().updateCoppaStatus(mediationAdRequest.taggedForChildDirectedTreatment());
        final String string2 = bundle.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load waterfall banner ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            adError2.toString();
            mediationBannerListener.onAdFailedToLoad(this, adError2);
            return;
        }
        final VungleAdSize vungleBannerAdSizeFromGoogleAdSize = getVungleBannerAdSizeFromGoogleAdSize(adSize, string2);
        hashCode();
        VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.vungle.mediation.VungleInterstitialAdapter.2
            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeError(AdError adError3) {
                String str = VungleMediationAdapter.TAG;
                adError3.toString();
                if (VungleInterstitialAdapter.this.mediationBannerListener != null) {
                    VungleInterstitialAdapter.this.mediationBannerListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError3);
                }
            }

            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeSuccess() {
                VungleInterstitialAdapter.this.bannerLayout = new RelativeLayout(context);
                int heightInPixels = adSize.getHeightInPixels(context);
                if (heightInPixels <= 0) {
                    heightInPixels = Math.round(vungleBannerAdSizeFromGoogleAdSize.getHeight() * context.getResources().getDisplayMetrics().density);
                }
                VungleInterstitialAdapter.this.bannerLayout.setLayoutParams(new RelativeLayout.LayoutParams(adSize.getWidthInPixels(context), heightInPixels));
                VungleInterstitialAdapter.this.bannerAdView = new VungleBannerView(context, string2, vungleBannerAdSizeFromGoogleAdSize);
                VungleInterstitialAdapter.this.bannerAdView.setAdListener(new VungleBannerListener());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(14, -1);
                layoutParams.addRule(15, -1);
                VungleInterstitialAdapter.this.bannerLayout.addView(VungleInterstitialAdapter.this.bannerAdView, layoutParams);
                VungleInterstitialAdapter.this.bannerAdView.load(null);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@NonNull final Context context, @NonNull final MediationInterstitialListener mediationInterstitialListener, @NonNull Bundle bundle, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        this.mediationInterstitialListener = mediationInterstitialListener;
        String string = bundle.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            adError.toString();
            mediationInterstitialListener.onAdFailedToLoad(this, adError);
            return;
        }
        final String string2 = bundle.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load waterfall interstitial ad from Liftoff Monetize. Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            adError2.toString();
            mediationInterstitialListener.onAdFailedToLoad(this, adError2);
            return;
        }
        VungleInitializer.getInstance().updateCoppaStatus(mediationAdRequest.taggedForChildDirectedTreatment());
        final AdConfig adConfig = new AdConfig();
        if (bundle2 != null && bundle2.containsKey(VungleConstants.KEY_ORIENTATION)) {
            adConfig.setAdOrientation(bundle2.getInt(VungleConstants.KEY_ORIENTATION, 2));
        }
        VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.vungle.mediation.VungleInterstitialAdapter.1
            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeError(AdError adError3) {
                mediationInterstitialListener.onAdFailedToLoad(VungleInterstitialAdapter.this, adError3);
                String str = VungleMediationAdapter.TAG;
                adError3.toString();
            }

            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeSuccess() {
                VungleInterstitialAdapter.this.interstitialAd = new InterstitialAd(context, string2, adConfig);
                VungleInterstitialAdapter.this.interstitialAd.setAdListener(new VungleInterstitialListener());
                VungleInterstitialAdapter.this.interstitialAd.load(null);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.play(null);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }
}
