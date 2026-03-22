package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.AppLovinError;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AppLovinNativeAdLoadListener {
    void onNativeAdLoadFailed(AppLovinError appLovinError);

    void onNativeAdLoaded(AppLovinNativeAd appLovinNativeAd);
}
