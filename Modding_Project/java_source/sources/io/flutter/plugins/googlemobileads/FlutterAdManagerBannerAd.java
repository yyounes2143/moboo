package io.flutter.plugins.googlemobileads;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.util.Preconditions;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterAdManagerBannerAd extends FlutterAd implements FlutterAdLoadedListener {
    @NonNull
    private final String adUnitId;
    @Nullable
    protected AdManagerAdView adView;
    @NonNull
    private final BannerAdCreator bannerAdCreator;
    @NonNull
    protected final AdInstanceManager manager;
    @NonNull
    private final FlutterAdManagerAdRequest request;
    @NonNull
    private final List<FlutterAdSize> sizes;

    public FlutterAdManagerBannerAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @NonNull List<FlutterAdSize> list, @NonNull FlutterAdManagerAdRequest flutterAdManagerAdRequest, @NonNull BannerAdCreator bannerAdCreator) {
        super(i);
        Preconditions.checkNotNull(adInstanceManager);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(flutterAdManagerAdRequest);
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.sizes = list;
        this.request = flutterAdManagerAdRequest;
        this.bannerAdCreator = bannerAdCreator;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void dispose() {
        AdManagerAdView adManagerAdView = this.adView;
        if (adManagerAdView != null) {
            adManagerAdView.destroy();
            this.adView = null;
        }
    }

    @Nullable
    public FlutterAdSize getAdSize() {
        AdManagerAdView adManagerAdView = this.adView;
        if (adManagerAdView != null && adManagerAdView.getAdSize() != null) {
            return new FlutterAdSize(this.adView.getAdSize());
        }
        return null;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    @Nullable
    public PlatformView getPlatformView() {
        AdManagerAdView adManagerAdView = this.adView;
        if (adManagerAdView == null) {
            return null;
        }
        return new FlutterPlatformView(adManagerAdView);
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void load() {
        AdManagerAdView createAdManagerAdView = this.bannerAdCreator.createAdManagerAdView();
        this.adView = createAdManagerAdView;
        if (this instanceof FluidAdManagerBannerAd) {
            createAdManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        }
        this.adView.setAdUnitId(this.adUnitId);
        this.adView.setAppEventListener(new AppEventListener() { // from class: io.flutter.plugins.googlemobileads.FlutterAdManagerBannerAd.1
            @Override // com.google.android.gms.ads.admanager.AppEventListener
            public void onAppEvent(String str, String str2) {
                FlutterAdManagerBannerAd flutterAdManagerBannerAd = FlutterAdManagerBannerAd.this;
                flutterAdManagerBannerAd.manager.onAppEvent(flutterAdManagerBannerAd.adId, str, str2);
            }
        });
        AdSize[] adSizeArr = new AdSize[this.sizes.size()];
        for (int i = 0; i < this.sizes.size(); i++) {
            adSizeArr[i] = this.sizes.get(i).getAdSize();
        }
        this.adView.setAdSizes(adSizeArr);
        this.adView.setAdListener(new FlutterBannerAdListener(this.adId, this.manager, this));
        this.adView.loadAd(this.request.asAdManagerAdRequest(this.adUnitId));
    }

    public void onAdLoaded() {
        AdManagerAdView adManagerAdView = this.adView;
        if (adManagerAdView != null) {
            this.manager.onAdLoaded(this.adId, adManagerAdView.getResponseInfo());
        }
    }
}
