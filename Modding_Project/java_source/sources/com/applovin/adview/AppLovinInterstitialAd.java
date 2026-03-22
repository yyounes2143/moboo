package com.applovin.adview;

import android.content.Context;
import com.applovin.impl.h2;
import com.applovin.impl.sdk.k;
import com.applovin.sdk.AppLovinSdk;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinInterstitialAd {
    public static AppLovinInterstitialAdDialog create() {
        return create(AppLovinSdk.getInstance(k.o()), k.o());
    }

    public String toString() {
        return "AppLovinInterstitialAd{}";
    }

    @Deprecated
    public static AppLovinInterstitialAdDialog create(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk != null) {
            if (context != null) {
                return new h2(appLovinSdk, context);
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No sdk specified");
    }
}
