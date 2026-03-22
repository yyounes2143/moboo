package com.google.ads.mediation.vungle.renderers;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleFactory;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BaseAd;
import com.vungle.ads.InterstitialAd;
import com.vungle.ads.InterstitialAdListener;
import com.vungle.ads.VungleError;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0003\u001a\u00020\u0004H&J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010 \u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/google/ads/mediation/vungle/renderers/VungleAppOpenAd;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;", "Lcom/vungle/ads/InterstitialAdListener;", "mediationAppOpenAdConfiguration", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;", "mediationAdLoadCallback", "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;", "vungleFactory", "Lcom/google/ads/mediation/vungle/VungleFactory;", "<init>", "(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/vungle/VungleFactory;)V", "appOpenAd", "Lcom/vungle/ads/InterstitialAd;", "mediationAppOpenAdCallback", "render", "", "getAdMarkup", "", "maybeAddWatermarkToVungleAdConfig", "adConfig", "Lcom/vungle/ads/AdConfig;", "showAd", "context", "Landroid/content/Context;", "onAdLoaded", "baseAd", "Lcom/vungle/ads/BaseAd;", "onAdStart", "onAdEnd", "onAdClicked", "onAdLeftApplication", "onAdFailedToPlay", "adError", "Lcom/vungle/ads/VungleError;", "onAdFailedToLoad", "onAdImpression", "liftoffmonetize_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class VungleAppOpenAd implements MediationAppOpenAd, InterstitialAdListener {
    private InterstitialAd appOpenAd;
    @NotNull
    private final MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback;
    @Nullable
    private MediationAppOpenAdCallback mediationAppOpenAdCallback;
    @NotNull
    private final MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration;
    @NotNull
    private final VungleFactory vungleFactory;

    public VungleAppOpenAd(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NotNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback, @NotNull VungleFactory vungleFactory) {
        this.mediationAppOpenAdConfiguration = mediationAppOpenAdConfiguration;
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.vungleFactory = vungleFactory;
    }

    @Nullable
    public abstract String getAdMarkup(@NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration);

    public abstract void maybeAddWatermarkToVungleAdConfig(@NotNull AdConfig adConfig, @NotNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration);

    @Override // com.vungle.ads.BaseAdListener
    public void onAdClicked(@NotNull BaseAd baseAd) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.reportAdClicked();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdEnd(@NotNull BaseAd baseAd) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdClosed();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToLoad(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
        AdError adError = VungleMediationAdapter.getAdError(vungleError);
        String str = VungleMediationAdapter.TAG;
        adError.toString();
        this.mediationAdLoadCallback.onFailure(adError);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToPlay(@NotNull BaseAd baseAd, @NotNull VungleError vungleError) {
        AdError adError = VungleMediationAdapter.getAdError(vungleError);
        String str = VungleMediationAdapter.TAG;
        adError.toString();
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdFailedToShow(adError);
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdImpression(@NotNull BaseAd baseAd) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.reportAdImpression();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLoaded(@NotNull BaseAd baseAd) {
        this.mediationAppOpenAdCallback = this.mediationAdLoadCallback.onSuccess(this);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdStart(@NotNull BaseAd baseAd) {
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null && mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdOpened();
        }
    }

    public final void render() {
        final Bundle mediationExtras = this.mediationAppOpenAdConfiguration.getMediationExtras();
        Bundle serverParameters = this.mediationAppOpenAdConfiguration.getServerParameters();
        String string = serverParameters.getString("appid");
        if (string != null && string.length() != 0) {
            final String string2 = serverParameters.getString(VungleConstants.KEY_PLACEMENT_ID);
            if (string2 != null && string2.length() != 0) {
                final Context context = this.mediationAppOpenAdConfiguration.getContext();
                VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.google.ads.mediation.vungle.renderers.VungleAppOpenAd$render$1
                    @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                    public void onInitializeError(AdError adError) {
                        MediationAdLoadCallback mediationAdLoadCallback;
                        String str = VungleMediationAdapter.TAG;
                        adError.toString();
                        mediationAdLoadCallback = VungleAppOpenAd.this.mediationAdLoadCallback;
                        mediationAdLoadCallback.onFailure(adError);
                    }

                    @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                    public void onInitializeSuccess() {
                        VungleFactory vungleFactory;
                        MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration;
                        VungleFactory vungleFactory2;
                        InterstitialAd interstitialAd;
                        InterstitialAd interstitialAd2;
                        MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration2;
                        vungleFactory = VungleAppOpenAd.this.vungleFactory;
                        AdConfig createAdConfig = vungleFactory.createAdConfig();
                        if (mediationExtras.containsKey(VungleConstants.KEY_ORIENTATION)) {
                            createAdConfig.setAdOrientation(mediationExtras.getInt(VungleConstants.KEY_ORIENTATION, 2));
                        }
                        VungleAppOpenAd vungleAppOpenAd = VungleAppOpenAd.this;
                        mediationAppOpenAdConfiguration = vungleAppOpenAd.mediationAppOpenAdConfiguration;
                        vungleAppOpenAd.maybeAddWatermarkToVungleAdConfig(createAdConfig, mediationAppOpenAdConfiguration);
                        VungleAppOpenAd vungleAppOpenAd2 = VungleAppOpenAd.this;
                        vungleFactory2 = vungleAppOpenAd2.vungleFactory;
                        vungleAppOpenAd2.appOpenAd = vungleFactory2.createInterstitialAd(context, string2, createAdConfig);
                        interstitialAd = VungleAppOpenAd.this.appOpenAd;
                        InterstitialAd interstitialAd3 = null;
                        if (interstitialAd == null) {
                            interstitialAd = null;
                        }
                        interstitialAd.setAdListener(VungleAppOpenAd.this);
                        interstitialAd2 = VungleAppOpenAd.this.appOpenAd;
                        if (interstitialAd2 != null) {
                            interstitialAd3 = interstitialAd2;
                        }
                        VungleAppOpenAd vungleAppOpenAd3 = VungleAppOpenAd.this;
                        mediationAppOpenAdConfiguration2 = vungleAppOpenAd3.mediationAppOpenAdConfiguration;
                        interstitialAd3.load(vungleAppOpenAd3.getAdMarkup(mediationAppOpenAdConfiguration2));
                    }
                });
                return;
            }
            AdError adError = new AdError(101, "Failed to load app open ad from Liftoff Monetize. Missing or Invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
            this.mediationAdLoadCallback.onFailure(adError);
            return;
        }
        AdError adError2 = new AdError(101, "Failed to load app open ad from Liftoff Monetize. Missing or invalid App ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
        String str2 = VungleMediationAdapter.TAG;
        adError2.toString();
        this.mediationAdLoadCallback.onFailure(adError2);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAppOpenAd
    public void showAd(@NotNull Context context) {
        InterstitialAd interstitialAd = this.appOpenAd;
        InterstitialAd interstitialAd2 = null;
        if (interstitialAd == null) {
            interstitialAd = null;
        }
        if (interstitialAd.canPlayAd().booleanValue()) {
            InterstitialAd interstitialAd3 = this.appOpenAd;
            if (interstitialAd3 != null) {
                interstitialAd2 = interstitialAd3;
            }
            interstitialAd2.play(context);
            return;
        }
        AdError adError = new AdError(107, "Failed to show app open ad from Liftoff Monetize.", VungleMediationAdapter.ERROR_DOMAIN);
        String str = VungleMediationAdapter.TAG;
        adError.toString();
        MediationAppOpenAdCallback mediationAppOpenAdCallback = this.mediationAppOpenAdCallback;
        if (mediationAppOpenAdCallback != null) {
            mediationAppOpenAdCallback.onAdFailedToShow(adError);
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLeftApplication(@NotNull BaseAd baseAd) {
    }
}
