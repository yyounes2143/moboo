package com.google.ads.mediation.applovin;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.google.ads.mediation.applovin.AppLovinInitializer;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class AppLovinWaterfallInterstitialAd extends AppLovinInterstitialRenderer implements MediationInterstitialAd {
    @VisibleForTesting
    protected static final HashMap<String, WeakReference<AppLovinWaterfallInterstitialAd>> appLovinWaterfallInterstitialAds = new HashMap<>();
    private Context context;
    private boolean enableMultipleAdLoading;
    private Bundle networkExtras;
    private AppLovinSdk sdk;

    public AppLovinWaterfallInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback, @NonNull AppLovinInitializer appLovinInitializer, @NonNull AppLovinAdFactory appLovinAdFactory) {
        super(mediationInterstitialAdConfiguration, mediationAdLoadCallback, appLovinInitializer, appLovinAdFactory);
        this.enableMultipleAdLoading = false;
    }

    @Override // com.google.ads.mediation.applovin.AppLovinInterstitialRenderer, com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        unregister();
        super.adHidden(appLovinAd);
    }

    @Override // com.google.ads.mediation.applovin.AppLovinInterstitialRenderer, com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        if (this.enableMultipleAdLoading) {
            unregister();
        }
        super.adReceived(appLovinAd);
    }

    @Override // com.google.ads.mediation.applovin.AppLovinInterstitialRenderer, com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        unregister();
        super.failedToReceiveAd(i);
    }

    @Override // com.google.ads.mediation.applovin.AppLovinInterstitialRenderer
    public void loadAd() {
        this.context = this.interstitialAdConfiguration.getContext();
        final Bundle serverParameters = this.interstitialAdConfiguration.getServerParameters();
        String string = serverParameters.getString(AppLovinUtils.ServerParameterKeys.SDK_KEY);
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(110, "Missing or invalid SDK Key.", AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN);
            adError.getMessage();
            this.interstitialAdLoadCallback.onFailure(adError);
            return;
        }
        if (AppLovinUtils.isMultiAdsEnabled()) {
            this.enableMultipleAdLoading = true;
        }
        this.appLovinInitializer.initialize(this.context, string, new AppLovinInitializer.OnInitializeSuccessListener() { // from class: com.google.ads.mediation.applovin.AppLovinWaterfallInterstitialAd.1
            @Override // com.google.ads.mediation.applovin.AppLovinInitializer.OnInitializeSuccessListener
            public void onInitializeSuccess() {
                AppLovinWaterfallInterstitialAd.this.zoneId = AppLovinUtils.retrieveZoneId(serverParameters);
                HashMap<String, WeakReference<AppLovinWaterfallInterstitialAd>> hashMap = AppLovinWaterfallInterstitialAd.appLovinWaterfallInterstitialAds;
                if (hashMap.containsKey(AppLovinWaterfallInterstitialAd.this.zoneId) && hashMap.get(AppLovinWaterfallInterstitialAd.this.zoneId).get() != null) {
                    AdError adError2 = new AdError(105, AppLovinInterstitialRenderer.ERROR_MSG_MULTIPLE_INTERSTITIAL_AD, AppLovinMediationAdapter.ERROR_DOMAIN);
                    String str = AppLovinInterstitialRenderer.ERROR_MSG_MULTIPLE_INTERSTITIAL_AD;
                    adError2.getMessage();
                    AppLovinWaterfallInterstitialAd.this.interstitialAdLoadCallback.onFailure(adError2);
                    return;
                }
                hashMap.put(AppLovinWaterfallInterstitialAd.this.zoneId, new WeakReference<>(AppLovinWaterfallInterstitialAd.this));
                AppLovinWaterfallInterstitialAd appLovinWaterfallInterstitialAd = AppLovinWaterfallInterstitialAd.this;
                appLovinWaterfallInterstitialAd.sdk = appLovinWaterfallInterstitialAd.appLovinInitializer.retrieveSdk(appLovinWaterfallInterstitialAd.context);
                AppLovinWaterfallInterstitialAd appLovinWaterfallInterstitialAd2 = AppLovinWaterfallInterstitialAd.this;
                appLovinWaterfallInterstitialAd2.networkExtras = appLovinWaterfallInterstitialAd2.networkExtras;
                String str2 = AppLovinInterstitialRenderer.ERROR_MSG_MULTIPLE_INTERSTITIAL_AD;
                String str3 = AppLovinWaterfallInterstitialAd.this.zoneId;
                if (!TextUtils.isEmpty(AppLovinWaterfallInterstitialAd.this.zoneId)) {
                    AppLovinAdService adService = AppLovinWaterfallInterstitialAd.this.sdk.getAdService();
                    AppLovinWaterfallInterstitialAd appLovinWaterfallInterstitialAd3 = AppLovinWaterfallInterstitialAd.this;
                    adService.loadNextAdForZoneId(appLovinWaterfallInterstitialAd3.zoneId, appLovinWaterfallInterstitialAd3);
                    return;
                }
                AppLovinWaterfallInterstitialAd.this.sdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, AppLovinWaterfallInterstitialAd.this);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.sdk.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.networkExtras));
        AppLovinInterstitialAdDialog createInterstitialAdDialog = this.appLovinAdFactory.createInterstitialAdDialog(this.sdk, context);
        createInterstitialAdDialog.setAdDisplayListener(this);
        createInterstitialAdDialog.setAdClickListener(this);
        createInterstitialAdDialog.setAdVideoPlaybackListener(this);
        if (this.appLovinInterstitialAd == null) {
            if (TextUtils.isEmpty(this.zoneId)) {
                createInterstitialAdDialog.show();
                return;
            }
            return;
        }
        createInterstitialAdDialog.showAndRender(this.appLovinInterstitialAd);
    }

    public void unregister() {
        if (!TextUtils.isEmpty(this.zoneId)) {
            HashMap<String, WeakReference<AppLovinWaterfallInterstitialAd>> hashMap = appLovinWaterfallInterstitialAds;
            if (hashMap.containsKey(this.zoneId) && equals(hashMap.get(this.zoneId).get())) {
                hashMap.remove(this.zoneId);
            }
        }
    }
}
