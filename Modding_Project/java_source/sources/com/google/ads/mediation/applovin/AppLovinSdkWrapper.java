package com.google.ads.mediation.applovin;

import android.content.Context;
import com.applovin.sdk.AppLovinSdk;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class AppLovinSdkWrapper {
    public AppLovinSdk getInstance(Context context) {
        return AppLovinSdk.getInstance(context);
    }

    public String getSdkVersion() {
        return AppLovinSdk.VERSION;
    }
}
