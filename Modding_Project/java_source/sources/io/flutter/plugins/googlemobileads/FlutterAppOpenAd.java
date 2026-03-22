package io.flutter.plugins.googlemobileads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import io.flutter.plugins.googlemobileads.FlutterAd;
import io.flutter.util.Preconditions;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterAppOpenAd extends FlutterAd.FlutterOverlayAd {
    private static final String TAG = "FlutterAppOpenAd";
    @Nullable
    private AppOpenAd ad;
    @Nullable
    private final FlutterAdManagerAdRequest adManagerAdRequest;
    @NonNull
    private final String adUnitId;
    @NonNull
    private final FlutterAdLoader flutterAdLoader;
    @NonNull
    private final AdInstanceManager manager;
    @Nullable
    private final FlutterAdRequest request;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DelegatingAppOpenAdLoadCallback extends AppOpenAd.AppOpenAdLoadCallback {
        private final WeakReference<FlutterAppOpenAd> delegate;

        public DelegatingAppOpenAdLoadCallback(FlutterAppOpenAd flutterAppOpenAd) {
            this.delegate = new WeakReference<>(flutterAppOpenAd);
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdFailedToLoad(loadAdError);
            }
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull AppOpenAd appOpenAd) {
            if (this.delegate.get() != null) {
                this.delegate.get().onAdLoaded(appOpenAd);
            }
        }
    }

    public FlutterAppOpenAd(int i, @NonNull AdInstanceManager adInstanceManager, @NonNull String str, @Nullable FlutterAdRequest flutterAdRequest, @Nullable FlutterAdManagerAdRequest flutterAdManagerAdRequest, @NonNull FlutterAdLoader flutterAdLoader) {
        super(i);
        boolean z;
        if (flutterAdRequest == null && flutterAdManagerAdRequest == null) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkState(z, "One of request and adManagerAdRequest must be non-null.");
        this.manager = adInstanceManager;
        this.adUnitId = str;
        this.request = flutterAdRequest;
        this.adManagerAdRequest = flutterAdManagerAdRequest;
        this.flutterAdLoader = flutterAdLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
        this.manager.onAdFailedToLoad(this.adId, new FlutterAd.FlutterLoadAdError(loadAdError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdLoaded(@NonNull AppOpenAd appOpenAd) {
        this.ad = appOpenAd;
        appOpenAd.setOnPaidEventListener(new FlutterPaidEventListener(this.manager, this));
        this.manager.onAdLoaded(this.adId, appOpenAd.getResponseInfo());
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void dispose() {
        this.ad = null;
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd
    public void load() {
        FlutterAdRequest flutterAdRequest = this.request;
        if (flutterAdRequest != null) {
            FlutterAdLoader flutterAdLoader = this.flutterAdLoader;
            String str = this.adUnitId;
            flutterAdLoader.loadAppOpen(str, flutterAdRequest.asAdRequest(str), new DelegatingAppOpenAdLoadCallback(this));
            return;
        }
        FlutterAdManagerAdRequest flutterAdManagerAdRequest = this.adManagerAdRequest;
        if (flutterAdManagerAdRequest != null) {
            FlutterAdLoader flutterAdLoader2 = this.flutterAdLoader;
            String str2 = this.adUnitId;
            flutterAdLoader2.loadAdManagerAppOpen(str2, flutterAdManagerAdRequest.asAdManagerAdRequest(str2), new DelegatingAppOpenAdLoadCallback(this));
        }
    }

    @Override // io.flutter.plugins.googlemobileads.FlutterAd.FlutterOverlayAd
    public void setImmersiveMode(boolean z) {
        AppOpenAd appOpenAd = this.ad;
        if (appOpenAd == null) {
            return;
        }
        appOpenAd.setImmersiveMode(z);
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
