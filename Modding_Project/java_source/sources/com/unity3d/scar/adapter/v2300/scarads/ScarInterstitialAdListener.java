package com.unity3d.scar.adapter.v2300.scarads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarInterstitialAdListener extends ScarAdListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IScarInterstitialAdListenerWrapper f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScarInterstitialAd f10960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InterstitialAdLoadCallback f10958Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InterstitialAdLoadCallback() { // from class: com.unity3d.scar.adapter.v2300.scarads.ScarInterstitialAdListener.1
        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
            super.onAdLoaded((AnonymousClass1) interstitialAd);
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdLoaded();
            interstitialAd.setFullScreenContentCallback(ScarInterstitialAdListener.this.f10957Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            ScarInterstitialAdListener.this.f10960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(interstitialAd);
            IScarLoadListener iScarLoadListener = ScarInterstitialAdListener.this.f10948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (iScarLoadListener != null) {
                iScarLoadListener.onAdLoaded();
            }
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FullScreenContentCallback f10957Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FullScreenContentCallback() { // from class: com.unity3d.scar.adapter.v2300.scarads.ScarInterstitialAdListener.2
        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            super.onAdClicked();
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            ScarInterstitialAdListener.this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdOpened();
        }
    };

    public ScarInterstitialAdListener(IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper, ScarInterstitialAd scarInterstitialAd) {
        this.f10959Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iScarInterstitialAdListenerWrapper;
        this.f10960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarInterstitialAd;
    }

    public InterstitialAdLoadCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10958Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
