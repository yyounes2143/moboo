package com.applovin.impl;

import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class x5 extends w4 {
    private final JSONObject g;
    private final JSONObject h;
    private final AppLovinAdLoadListener i;

    public x5(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskRenderAppLovinAd", kVar);
        this.g = jSONObject;
        this.h = jSONObject2;
        this.i = appLovinAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "Rendering ad...");
        }
        com.applovin.impl.sdk.ad.a aVar = new com.applovin.impl.sdk.ad.a(this.g, this.h, this.f3803a);
        boolean booleanValue = JsonUtils.getBoolean(this.g, "gs_load_immediately", Boolean.FALSE).booleanValue();
        boolean booleanValue2 = JsonUtils.getBoolean(this.g, "vs_load_immediately", Boolean.TRUE).booleanValue();
        a5 a5Var = new a5(aVar, this.f3803a, this.i);
        a5Var.c(booleanValue2);
        a5Var.b(booleanValue);
        this.f3803a.q0().a((w4) a5Var, r5.b.CACHING);
    }
}
