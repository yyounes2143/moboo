package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class p3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3463a;
    private final String b;

    public p3(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        this.f3463a = JsonUtils.getString(jSONObject, "id", "");
        this.b = JsonUtils.getString(jSONObject, "price", null);
    }

    public String a() {
        return this.f3463a;
    }

    public String b() {
        return this.b;
    }
}
