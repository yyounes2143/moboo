package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import com.google.android.gms.ads.admanager.AppEventListener;
import io.flutter.plugins.googlemobileads.FlutterAd;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterAdManagerInterstitialAd extends FlutterAd.FlutterOverlayAd {
    private static final String TAG = "FltGAMInterstitialAd";
    @Nullable
    private AdManagerInterstitialAd ad;
    @NonNull
    private final String adUnitId;
    @NonNull
    private final FlutterAdLoader flutterAdLoader;
    @NonNull
    private final AdInstanceManager manager;
    @NonNull
    private final FlutterAdManagerAdRequest request;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DelegatingAdManagerInterstitialAdCallbacks extends AdManagerInterstitialAdLoadCallback implements AppEventListener {
        private final WeakReference<FlutterAdManagerInterstitialAd> delegate;

        public DelegatingAdManagerInterstitialAdCallbacks(FlutterAdManagerInterstitialAd flutterAdManagerInterstitialAd) {
            this.delegate = new WeakReference<>(flutterAdManagerInterstitialAd);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdFailedToLoad(loadAdError);
            }
        }

        @Override // com.google.android.gms.ads.admanager.AppEventListener
        public void onAppEvent(@NonNull String str, @NonNull String str2) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAppEvent(str, str2);
            }
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull AdManagerInterstitialAd adManagerInterstitialAd) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdLoaded(adManagerInterstitialAd);
            }
        }
    }

    public FlutterAdManagerInterstitialAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @NonNull FlutterAdManagerAdRequest flutterAdManagerAdRequest, @NonNull FlutterAdLoader flutterAdLoader) {
        super(i);
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.request = flutterAdManagerAdRequest;
        this.flutterAdLoader = flutterAdLoader;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void dispose() {
        this.ad = null;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void load() {
        FlutterAdLoader flutterAdLoader = this.flutterAdLoader;
        String str = this.adUnitId;
        flutterAdLoader.loadAdManagerInterstitial(str, this.request.asAdManagerAdRequest(str), new DelegatingAdManagerInterstitialAdCallbacks(this));
    }

    public void onAdFailedToLoad(LoadAdError loadAdError) {
        this.manager.onAdFailedToLoad(this.adId, new FlutterAd.FlutterLoadAdError(loadAdError));
    }

    public void onAdLoaded(AdManagerInterstitialAd adManagerInterstitialAd) {
        this.ad = adManagerInterstitialAd;
        adManagerInterstitialAd.setAppEventListener(new DelegatingAdManagerInterstitialAdCallbacks(this));
        adManagerInterstitialAd.setOnPaidEventListener(new FlutterPaidEventListener(this.manager, this));
        this.manager.onAdLoaded(this.adId, adManagerInterstitialAd.getResponseInfo());
    }

    public void onAppEvent(@NonNull String str, @NonNull String str2) {
        this.manager.onAppEvent(this.adId, str, str2);
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd.FlutterOverlayAd
    public void setImmersiveMode(boolean z) {
        AdManagerInterstitialAd adManagerInterstitialAd = this.ad;
        if (adManagerInterstitialAd == null) {
            return;
        }
        adManagerInterstitialAd.setImmersiveMode(z);
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd.FlutterOverlayAd
    public void show() {
        if (this.ad == null || this.manager.getActivity() == null) {
            return;
        }
        this.ad.setFullScreenContentCallback(new FlutterFullScreenContentCallback(this.manager, this.adId));
        this.ad.show(this.manager.getActivity());
    }
}
