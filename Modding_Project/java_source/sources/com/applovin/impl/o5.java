package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class o5 extends m5 {
    private final j j;

    public o5(j jVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super(t.a("adtoken_zone"), appLovinAdLoadListener, "TaskFetchTokenAd", kVar);
        this.j = jVar;
    }

    @Override // com.applovin.impl.f5
    public Map h() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("adtoken", this.j.b());
        hashMap.put("adtoken_prefix", this.j.d());
        return hashMap;
    }
}
