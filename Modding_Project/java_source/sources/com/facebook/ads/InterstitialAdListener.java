package com.facebook.ads;

import androidx.annotation.Keep;
/* compiled from: Proguard */
@Keep
/* loaded from: classes3.dex */
public interface InterstitialAdListener extends AdListener {
    void onInterstitialDismissed(Ad ad);

    void onInterstitialDisplayed(Ad ad);
}
