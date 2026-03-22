package com.google.ads.mediation.vungle.rtb;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.ads.mediation.vungle.VungleFactory;
import com.google.ads.mediation.vungle.VungleInitializer;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.vungle.ads.BaseAd;
import com.vungle.ads.NativeAd;
import com.vungle.ads.NativeAdListener;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.ui.view.MediaView;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class VungleRtbNativeAd extends UnifiedNativeAdMapper implements NativeAdListener {
    private final MediationNativeAdConfiguration adConfiguration;
    private final MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> adLoadCallback;
    private String adMarkup;
    private MediaView mediaView;
    private NativeAd nativeAd;
    private MediationNativeAdCallback nativeAdCallback;
    private final VungleFactory vungleFactory;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class VungleNativeMappedImage extends NativeAd.Image {
        private Uri imageUri;

        public VungleNativeMappedImage(Uri uri) {
            this.imageUri = uri;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return null;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return this.imageUri;
        }
    }

    public VungleRtbNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, VungleFactory vungleFactory) {
        this.adConfiguration = mediationNativeAdConfiguration;
        this.adLoadCallback = mediationAdLoadCallback;
        this.vungleFactory = vungleFactory;
    }

    private void mapNativeAd() {
        setHeadline(this.nativeAd.getAdTitle());
        setBody(this.nativeAd.getAdBodyText());
        setCallToAction(this.nativeAd.getAdCallToActionText());
        Double adStarRating = this.nativeAd.getAdStarRating();
        if (adStarRating != null) {
            setStarRating(adStarRating);
        }
        setAdvertiser(this.nativeAd.getAdSponsoredText());
        setMediaView(this.mediaView);
        String appIcon = this.nativeAd.getAppIcon();
        if (!TextUtils.isEmpty(appIcon) && appIcon.startsWith(AdPayload.FILE_SCHEME)) {
            setIcon(new VungleNativeMappedImage(Uri.parse(appIcon)));
        }
        if (TextUtils.isEmpty(this.adMarkup)) {
            setOverrideImpressionRecording(true);
        }
        setOverrideClickHandling(true);
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdClicked(@NonNull BaseAd baseAd) {
        MediationNativeAdCallback mediationNativeAdCallback = this.nativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdClicked();
            this.nativeAdCallback.onAdOpened();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToLoad(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
        this.adLoadCallback.onFailure(VungleMediationAdapter.getAdError(vungleError));
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdFailedToPlay(@NonNull BaseAd baseAd, @NonNull VungleError vungleError) {
        AdError adError = VungleMediationAdapter.getAdError(vungleError);
        String str = VungleMediationAdapter.TAG;
        adError.toString();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdImpression(@NonNull BaseAd baseAd) {
        MediationNativeAdCallback mediationNativeAdCallback = this.nativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.reportAdImpression();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLeftApplication(@NonNull BaseAd baseAd) {
        MediationNativeAdCallback mediationNativeAdCallback = this.nativeAdCallback;
        if (mediationNativeAdCallback != null) {
            mediationNativeAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdLoaded(@NonNull BaseAd baseAd) {
        mapNativeAd();
        this.nativeAdCallback = this.adLoadCallback.onSuccess(this);
    }

    public void render() {
        int i;
        final int i2;
        Bundle serverParameters = this.adConfiguration.getServerParameters();
        NativeAdOptions nativeAdOptions = this.adConfiguration.getNativeAdOptions();
        final Context context = this.adConfiguration.getContext();
        String string = serverParameters.getString("appid");
        if (TextUtils.isEmpty(string)) {
            AdError adError = new AdError(101, "Failed to load bidding native ad from Liftoff Monetize. Missing or invalid app ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            String str = VungleMediationAdapter.TAG;
            adError.toString();
            this.adLoadCallback.onFailure(adError);
            return;
        }
        final String string2 = serverParameters.getString(VungleConstants.KEY_PLACEMENT_ID);
        if (TextUtils.isEmpty(string2)) {
            AdError adError2 = new AdError(101, "Failed to load bidding native ad from Liftoff Monetize. Missing or Invalid placement ID configured for this ad source instance in the AdMob or Ad Manager UI.", VungleMediationAdapter.ERROR_DOMAIN);
            String str2 = VungleMediationAdapter.TAG;
            adError2.toString();
            this.adLoadCallback.onFailure(adError2);
            return;
        }
        this.adMarkup = this.adConfiguration.getBidResponse();
        int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
        if (adChoicesPlacement != 0) {
            i = 3;
            if (adChoicesPlacement != 2) {
                if (adChoicesPlacement != 3) {
                    i = 1;
                } else {
                    i2 = 2;
                    final String watermark = this.adConfiguration.getWatermark();
                    VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.google.ads.mediation.vungle.rtb.VungleRtbNativeAd.1
                        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                        public void onInitializeError(AdError adError3) {
                            String str3 = VungleMediationAdapter.TAG;
                            adError3.toString();
                            VungleRtbNativeAd.this.adLoadCallback.onFailure(adError3);
                        }

                        @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
                        public void onInitializeSuccess() {
                            VungleRtbNativeAd vungleRtbNativeAd = VungleRtbNativeAd.this;
                            vungleRtbNativeAd.nativeAd = vungleRtbNativeAd.vungleFactory.createNativeAd(context, string2);
                            VungleRtbNativeAd.this.nativeAd.setAdOptionsPosition(i2);
                            VungleRtbNativeAd.this.nativeAd.setAdListener(VungleRtbNativeAd.this);
                            VungleRtbNativeAd.this.mediaView = new MediaView(context);
                            if (!TextUtils.isEmpty(watermark)) {
                                VungleRtbNativeAd.this.nativeAd.getAdConfig().setWatermark(watermark);
                            }
                            VungleRtbNativeAd.this.nativeAd.load(VungleRtbNativeAd.this.adMarkup);
                        }
                    });
                }
            }
        } else {
            i = 0;
        }
        i2 = i;
        final String watermark2 = this.adConfiguration.getWatermark();
        VungleInitializer.getInstance().initialize(string, context, new VungleInitializer.VungleInitializationListener() { // from class: com.google.ads.mediation.vungle.rtb.VungleRtbNativeAd.1
            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeError(AdError adError3) {
                String str3 = VungleMediationAdapter.TAG;
                adError3.toString();
                VungleRtbNativeAd.this.adLoadCallback.onFailure(adError3);
            }

            @Override // com.google.ads.mediation.vungle.VungleInitializer.VungleInitializationListener
            public void onInitializeSuccess() {
                VungleRtbNativeAd vungleRtbNativeAd = VungleRtbNativeAd.this;
                vungleRtbNativeAd.nativeAd = vungleRtbNativeAd.vungleFactory.createNativeAd(context, string2);
                VungleRtbNativeAd.this.nativeAd.setAdOptionsPosition(i2);
                VungleRtbNativeAd.this.nativeAd.setAdListener(VungleRtbNativeAd.this);
                VungleRtbNativeAd.this.mediaView = new MediaView(context);
                if (!TextUtils.isEmpty(watermark2)) {
                    VungleRtbNativeAd.this.nativeAd.getAdConfig().setWatermark(watermark2);
                }
                VungleRtbNativeAd.this.nativeAd.load(VungleRtbNativeAd.this.adMarkup);
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
        super.trackViews(view, map, map2);
        String str = VungleMediationAdapter.TAG;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            com.vungle.ads.NativeAd nativeAd = this.nativeAd;
            if (nativeAd != null && nativeAd.canPlayAd().booleanValue()) {
                View childAt = viewGroup.getChildAt(viewGroup.getChildCount() - 1);
                if (!(childAt instanceof FrameLayout)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ImageView imageView = null;
                KeyEvent.Callback callback = null;
                for (Map.Entry<String, View> entry : map.entrySet()) {
                    arrayList.add(entry.getValue());
                    if (entry.getKey().equals("3003")) {
                        callback = (View) entry.getValue();
                    }
                }
                if (callback instanceof ImageView) {
                    imageView = (ImageView) callback;
                } else {
                    String str2 = VungleMediationAdapter.TAG;
                }
                this.nativeAd.registerViewForInteraction((FrameLayout) childAt, this.mediaView, imageView, arrayList);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(@NonNull View view) {
        super.untrackView(view);
        String str = VungleMediationAdapter.TAG;
        com.vungle.ads.NativeAd nativeAd = this.nativeAd;
        if (nativeAd == null) {
            return;
        }
        nativeAd.unregisterView();
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdEnd(@NonNull BaseAd baseAd) {
    }

    @Override // com.vungle.ads.BaseAdListener
    public void onAdStart(@NonNull BaseAd baseAd) {
    }
}
