package com.unity3d.scar.adapter.v2100.scarads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.unity3d.scar.adapter.common.IScarBannerAdListenerWrapper;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarBannerAdListener extends ScarAdListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdListener f10908Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AdListener() { // from class: com.unity3d.scar.adapter.v2100.scarads.ScarBannerAdListener.1
        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            super.onAdClicked();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarBannerAdListener.this.f10909Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToLoad(loadAdError.getCode(), loadAdError.getMessage());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdImpression();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            ScarBannerAdListener.this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdOpened();
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScarBannerAd f10909Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IScarBannerAdListenerWrapper f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarBannerAdListener(IScarBannerAdListenerWrapper iScarBannerAdListenerWrapper, ScarBannerAd scarBannerAd) {
        this.f10910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iScarBannerAdListenerWrapper;
        this.f10909Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarBannerAd;
    }

    public AdListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10908Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
