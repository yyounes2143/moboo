package com.google.ads.mediation.unity;

import androidx.annotation.NonNull;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.services.banners.BannerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class UnityBannerViewWrapper {
    private final BannerView bannerView;

    public UnityBannerViewWrapper(@NonNull BannerView bannerView) {
        this.bannerView = bannerView;
    }

    public BannerView getBannerView() {
        return this.bannerView;
    }

    public void load(UnityAdsLoadOptions unityAdsLoadOptions) {
        this.bannerView.load(unityAdsLoadOptions);
    }

    public void setListener(BannerView.IListener iListener) {
        this.bannerView.setListener(iListener);
    }
}
