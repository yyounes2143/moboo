package com.google.ads.mediation.unity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import java.util.UUID;
/* compiled from: Proguard */
@Keep
/* loaded from: classes4.dex */
public class UnityMediationBannerAd implements MediationBannerAd, BannerView.IListener {
    static final String ERROR_MSG_INITIALIZATION_FAILED_FOR_GAME_ID = "Unity Ads initialization failed for game ID '%s' with error message: %s";
    static final String ERROR_MSG_NO_MATCHING_AD_SIZE = "There is no matching Unity Ads ad size for Google ad size: ";
    private String bannerPlacementId;
    private String gameId;
    @Nullable
    private MediationBannerAdCallback mediationBannerAdCallback;
    private final MediationBannerAdConfiguration mediationBannerAdConfiguration;
    private final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationBannerAdLoadCallback;
    private final UnityAdsLoader unityAdsLoader;
    private final UnityBannerViewFactory unityBannerViewFactory;
    @Nullable
    private UnityBannerViewWrapper unityBannerViewWrapper;
    private final UnityInitializer unityInitializer;

    public UnityMediationBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback, @NonNull UnityInitializer unityInitializer, @NonNull UnityBannerViewFactory unityBannerViewFactory, @NonNull UnityAdsLoader unityAdsLoader) {
        this.mediationBannerAdConfiguration = mediationBannerAdConfiguration;
        this.mediationBannerAdLoadCallback = mediationAdLoadCallback;
        this.unityBannerViewFactory = unityBannerViewFactory;
        this.unityInitializer = unityInitializer;
        this.unityAdsLoader = unityAdsLoader;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    @NonNull
    public View getView() {
        return this.unityBannerViewWrapper.getBannerView();
    }

    public void loadAd() {
        final Context context = this.mediationBannerAdConfiguration.getContext();
        Bundle serverParameters = this.mediationBannerAdConfiguration.getServerParameters();
        AdSize adSize = this.mediationBannerAdConfiguration.getAdSize();
        this.gameId = serverParameters.getString(AndroidGetAdPlayerContext.KEY_GAME_ID);
        String string = serverParameters.getString("zoneId");
        this.bannerPlacementId = string;
        if (!UnityAdsAdapterUtils.areValidIds(this.gameId, string)) {
            AdError adError = new AdError(101, "Missing or invalid server parameters.", "com.google.ads.mediation.unity");
            String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
            adError.toString();
            this.mediationBannerAdLoadCallback.onFailure(adError);
        } else if (!(context instanceof Activity)) {
            AdError adError2 = new AdError(105, "Unity Ads requires an Activity context to load ads.", "com.google.ads.mediation.unity");
            String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
            adError2.toString();
            this.mediationBannerAdLoadCallback.onFailure(adError2);
        } else {
            final Activity activity = (Activity) context;
            final UnityBannerSize unityBannerSize = UnityAdsAdapterUtils.getUnityBannerSize(context, adSize);
            if (unityBannerSize == null) {
                AdError adError3 = new AdError(110, ERROR_MSG_NO_MATCHING_AD_SIZE + adSize, "com.google.ads.mediation.unity");
                String str3 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
                adError3.toString();
                this.mediationBannerAdLoadCallback.onFailure(adError3);
                return;
            }
            final String bidResponse = this.mediationBannerAdConfiguration.getBidResponse();
            this.unityInitializer.initializeUnityAds(context, this.gameId, new IUnityAdsInitializationListener() { // from class: com.google.ads.mediation.unity.UnityMediationBannerAd.1
                @Override // com.unity3d.ads.IUnityAdsInitializationListener
                public void onInitializationComplete() {
                    String.format("Unity Ads is initialized for game ID '%s' and can now load banner ad with placement ID: %s", UnityMediationBannerAd.this.gameId, UnityMediationBannerAd.this.bannerPlacementId);
                    String str4 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
                    UnityAdsAdapterUtils.setCoppa(MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment(), context);
                    if (UnityMediationBannerAd.this.unityBannerViewWrapper == null) {
                        UnityMediationBannerAd unityMediationBannerAd = UnityMediationBannerAd.this;
                        unityMediationBannerAd.unityBannerViewWrapper = unityMediationBannerAd.unityBannerViewFactory.createBannerView(activity, UnityMediationBannerAd.this.bannerPlacementId, unityBannerSize);
                    }
                    UnityMediationBannerAd.this.unityBannerViewWrapper.setListener(UnityMediationBannerAd.this);
                    UnityAdsLoadOptions createUnityAdsLoadOptionsWithId = UnityMediationBannerAd.this.unityAdsLoader.createUnityAdsLoadOptionsWithId(UUID.randomUUID().toString());
                    createUnityAdsLoadOptionsWithId.set(MBridgeConstans.EXTRA_KEY_WM, UnityMediationBannerAd.this.mediationBannerAdConfiguration.getWatermark());
                    String str5 = bidResponse;
                    if (str5 != null) {
                        createUnityAdsLoadOptionsWithId.setAdMarkup(str5);
                    }
                    UnityMediationBannerAd.this.unityBannerViewWrapper.load(createUnityAdsLoadOptionsWithId);
                }

                @Override // com.unity3d.ads.IUnityAdsInitializationListener
                public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str4) {
                    AdError createSDKError = UnityAdsAdapterUtils.createSDKError(unityAdsInitializationError, String.format(UnityMediationBannerAd.ERROR_MSG_INITIALIZATION_FAILED_FOR_GAME_ID, UnityMediationBannerAd.this.gameId, str4));
                    String str5 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
                    createSDKError.toString();
                    UnityMediationBannerAd.this.mediationBannerAdLoadCallback.onFailure(createSDKError);
                }
            });
        }
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerClick(BannerView bannerView) {
        String.format("Unity Ads banner ad was clicked for placement ID: %s", bannerView.getPlacementId());
        String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback == null) {
            return;
        }
        mediationBannerAdCallback.reportAdClicked();
        this.mediationBannerAdCallback.onAdOpened();
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
        AdError createAdError = UnityAdsAdapterUtils.createAdError(UnityAdsAdapterUtils.getMediationErrorCode(bannerErrorInfo), bannerErrorInfo.errorMessage);
        String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        createAdError.toString();
        this.mediationBannerAdLoadCallback.onFailure(createAdError);
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerLeftApplication(BannerView bannerView) {
        String.format("Unity Ads banner ad left application for placement ID: %s", bannerView.getPlacementId());
        String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback == null) {
            return;
        }
        mediationBannerAdCallback.onAdLeftApplication();
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerLoaded(BannerView bannerView) {
        String.format("Unity Ads finished loading banner ad for placement ID: %s", bannerView.getPlacementId());
        String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        this.mediationBannerAdCallback = this.mediationBannerAdLoadCallback.onSuccess(this);
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerShown(BannerView bannerView) {
        String.format("Unity Ads banner ad was shown for placement ID: %s", bannerView.getPlacementId());
        String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationBannerAdCallback mediationBannerAdCallback = this.mediationBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.reportAdImpression();
        }
    }
}
