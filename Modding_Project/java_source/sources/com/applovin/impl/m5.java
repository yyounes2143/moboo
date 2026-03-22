package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m5 extends f5 {
    private final AppLovinAdLoadListener i;

    public m5(t tVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        this(tVar, appLovinAdLoadListener, "TaskFetchNextAd", kVar);
    }

    @Override // com.applovin.impl.f5
    public w4 a(JSONObject jSONObject) {
        return new s5(jSONObject, this.g, this.i, this.f3803a);
    }

    @Override // com.applovin.impl.f5
    public String e() {
        return n0.a(this.f3803a);
    }

    @Override // com.applovin.impl.f5
    public String f() {
        return n0.b(this.f3803a);
    }

    public m5(t tVar, AppLovinAdLoadListener appLovinAdLoadListener, String str, com.applovin.impl.sdk.k kVar) {
        super(tVar, str, kVar);
        this.i = appLovinAdLoadListener;
    }

    @Override // com.applovin.impl.f5
    public void a(int i, String str) {
        super.a(i, str);
        AppLovinAdLoadListener appLovinAdLoadListener = this.i;
        if (appLovinAdLoadListener instanceof g2) {
            ((g2) this.i).failedToReceiveAdV2(new AppLovinError(i, str));
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(i);
    }
}
