package com.google.ads.mediation.unity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class UnityInterstitialAd implements MediationInterstitialAd, IUnityAdsLoadListener, IUnityAdsShowListener {
    static final String ERROR_MSG_INTERSTITIAL_INITIALIZATION_FAILED = "Unity Ads initialization failed for game ID '%s' with error message: %s";
    private final MediationInterstitialAdConfiguration adConfiguration;
    private final MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> adLoadCallback;
    @Nullable
    private MediationInterstitialAdCallback interstitialAdCallback;
    private String objectId;
    private String placementId;
    private final UnityAdsLoader unityAdsLoader;
    private final UnityInitializer unityInitializer;

    public UnityInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, @NonNull UnityInitializer unityInitializer, @NonNull UnityAdsLoader unityAdsLoader) {
        this.adConfiguration = mediationInterstitialAdConfiguration;
        this.adLoadCallback = mediationAdLoadCallback;
        this.unityInitializer = unityInitializer;
        this.unityAdsLoader = unityAdsLoader;
    }

    public void loadAd() {
        final Context context = this.adConfiguration.getContext();
        Bundle serverParameters = this.adConfiguration.getServerParameters();
        final String string = serverParameters.getString(AndroidGetAdPlayerContext.KEY_GAME_ID);
        String string2 = serverParameters.getString("zoneId");
        this.placementId = string2;
        if (!UnityAdsAdapterUtils.areValidIds(string, string2)) {
            this.adLoadCallback.onFailure(new AdError(101, "Missing or invalid server parameters.", "com.google.ads.mediation.unity"));
            return;
        }
        final String bidResponse = this.adConfiguration.getBidResponse();
        this.unityInitializer.initializeUnityAds(context, string, new IUnityAdsInitializationListener() { // from class: com.google.ads.mediation.unity.UnityInterstitialAd.1
            @Override // com.unity3d.ads.IUnityAdsInitializationListener
            public void onInitializationComplete() {
                String.format("Unity Ads is initialized for game ID '%s' and can now load interstitial ad with placement ID: %s", string, UnityInterstitialAd.this.placementId);
                String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
                UnityAdsAdapterUtils.setCoppa(MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment(), context);
                UnityInterstitialAd.this.objectId = UUID.randomUUID().toString();
                UnityAdsLoadOptions createUnityAdsLoadOptionsWithId = UnityInterstitialAd.this.unityAdsLoader.createUnityAdsLoadOptionsWithId(UnityInterstitialAd.this.objectId);
                String str2 = bidResponse;
                if (str2 != null) {
                    createUnityAdsLoadOptionsWithId.setAdMarkup(str2);
                }
                UnityInterstitialAd.this.unityAdsLoader.load(UnityInterstitialAd.this.placementId, createUnityAdsLoadOptionsWithId, UnityInterstitialAd.this);
            }

            @Override // com.unity3d.ads.IUnityAdsInitializationListener
            public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str) {
                AdError createSDKError = UnityAdsAdapterUtils.createSDKError(unityAdsInitializationError, String.format(UnityInterstitialAd.ERROR_MSG_INTERSTITIAL_INITIALIZATION_FAILED, string, str));
                String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
                createSDKError.toString();
                UnityInterstitialAd.this.adLoadCallback.onFailure(createSDKError);
            }
        });
    }

    @Override // com.unity3d.ads.IUnityAdsLoadListener
    public void onUnityAdsAdLoaded(String str) {
        String.format("Unity Ads interstitial ad successfully loaded for placement ID: %s", str);
        String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        this.placementId = str;
        this.interstitialAdCallback = this.adLoadCallback.onSuccess(this);
    }

    @Override // com.unity3d.ads.IUnityAdsLoadListener
    public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
        this.placementId = str;
        AdError createSDKError = UnityAdsAdapterUtils.createSDKError(unityAdsLoadError, str2);
        String str3 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        createSDKError.toString();
        this.adLoadCallback.onFailure(createSDKError);
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowClick(String str) {
        String.format("Unity Ads interstitial ad was clicked for placement ID: %s", str);
        String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback == null) {
            return;
        }
        mediationInterstitialAdCallback.reportAdClicked();
        this.interstitialAdCallback.onAdLeftApplication();
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
        String.format("Unity Ads interstitial ad finished playing for placement ID: %s", str);
        String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdClosed();
        }
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
        AdError createSDKError = UnityAdsAdapterUtils.createSDKError(unityAdsShowError, str2);
        String str3 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        createSDKError.toString();
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdFailedToShow(createSDKError);
        }
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowStart(String str) {
        String.format("Unity Ads interstitial ad started for placement ID: %s", str);
        String str2 = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.interstitialAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        if (this.placementId == null) {
            String str = UnityMediationAdapter.ADAPTER_ERROR_DOMAIN;
        }
        UnityAdsShowOptions createUnityAdsShowOptionsWithId = this.unityAdsLoader.createUnityAdsShowOptionsWithId(this.objectId);
        createUnityAdsShowOptionsWithId.set(MBridgeConstans.EXTRA_KEY_WM, this.adConfiguration.getWatermark());
        this.unityAdsLoader.show((Activity) context, this.placementId, createUnityAdsShowOptionsWithId, this);
    }
}
