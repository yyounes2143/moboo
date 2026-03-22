package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdView;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class FlutterBannerAd extends FlutterAd implements FlutterAdLoadedListener {
    @NonNull
    private final String adUnitId;
    @Nullable
    private AdView adView;
    @NonNull
    private final BannerAdCreator bannerAdCreator;
    @NonNull
    private final AdInstanceManager manager;
    @NonNull
    private final FlutterAdRequest request;
    @NonNull
    private final FlutterAdSize size;

    public FlutterBannerAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @NonNull FlutterAdRequest flutterAdRequest, @NonNull FlutterAdSize flutterAdSize, @NonNull BannerAdCreator bannerAdCreator) {
        super(i);
        Preconditions.checkNotNull(adInstanceManager);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(flutterAdRequest);
        Preconditions.checkNotNull(flutterAdSize);
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.request = flutterAdRequest;
        this.size = flutterAdSize;
        this.bannerAdCreator = bannerAdCreator;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void dispose() {
        AdView adView = this.adView;
        if (adView != null) {
            adView.destroy();
            this.adView = null;
        }
    }

    @Nullable
    public FlutterAdSize getAdSize() {
        AdView adView = this.adView;
        if (adView != null && adView.getAdSize() != null) {
            return new FlutterAdSize(this.adView.getAdSize());
        }
        return null;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    @Nullable
    public PlatformView getPlatformView() {
        AdView adView = this.adView;
        if (adView == null) {
            return null;
        }
        return new FlutterPlatformView(adView);
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void load() {
        AdView createAdView = this.bannerAdCreator.createAdView();
        this.adView = createAdView;
        createAdView.setAdUnitId(this.adUnitId);
        this.adView.setAdSize(this.size.getAdSize());
        this.adView.setOnPaidEventListener(new FlutterPaidEventListener(this.manager, this));
        this.adView.setAdListener(new FlutterBannerAdListener(this.adId, this.manager, this));
        this.adView.loadAd(this.request.asAdRequest(this.adUnitId));
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAdLoadedListener
    public void onAdLoaded() {
        AdView adView = this.adView;
        if (adView != null) {
            this.manager.onAdLoaded(this.adId, adView.getResponseInfo());
        }
    }
}
