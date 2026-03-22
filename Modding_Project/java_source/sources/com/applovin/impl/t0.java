package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t0 extends q0 {
    private Map c;

    public t0(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, kVar);
    }

    public Map d() {
        return this.c;
    }

    public String e() {
        return JsonUtils.getString(this.b, "name", null);
    }

    @Override // com.applovin.impl.q0
    public String toString() {
        return "ConsentFlowState{id=" + b() + ", type=" + c() + ", name=" + e() + "}";
    }
}
