package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class n5 extends f5 {
    private final AppLovinNativeAdLoadListener i;

    public n5(t tVar, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super(tVar, str, kVar);
        this.i = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.f5
    public w4 a(JSONObject jSONObject) {
        return new u5(jSONObject, this.i, this.f3803a);
    }

    @Override // com.applovin.impl.f5
    public String e() {
        return n0.d(this.f3803a);
    }

    @Override // com.applovin.impl.f5
    public String f() {
        return n0.e(this.f3803a);
    }

    @Override // com.applovin.impl.f5
    public void a(int i, String str) {
        super.a(i, str);
        this.i.onNativeAdLoadFailed(new AppLovinError(i, str));
    }
}
