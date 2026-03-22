package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final String f3441a;
    private final String b;
    private final w7 c;
    private final List d;
    private final List e;
    private boolean f = false;

    public n(JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.k kVar) {
        this.f3441a = JsonUtils.getString(jSONObject, "name", "");
        this.b = JsonUtils.getString(jSONObject, "experiment", null);
        this.c = a(jSONObject);
        this.d = a("bidders", jSONObject, map, maxAdFormat, kVar);
        this.e = a("waterfall", jSONObject, map, maxAdFormat, kVar);
    }

    public List a() {
        return this.d;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.f3441a;
    }

    public w7 d() {
        return this.c;
    }

    public List e() {
        return this.e;
    }

    public boolean f() {
        return this.f;
    }

    private w7 a(JSONObject jSONObject) {
        return new w7(JsonUtils.getJSONObject(jSONObject, "targeting"));
    }

    private List a(String str, JSONObject jSONObject, Map map, MaxAdFormat maxAdFormat, com.applovin.impl.sdk.k kVar) {
        v2 v2Var;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, str, new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (v2Var = (v2) map.get(JsonUtils.getString(jSONObject2, "adapter_class", ""))) != null) {
                if (v2Var.D()) {
                    this.f = true;
                }
                arrayList.add(new u7(jSONObject2, maxAdFormat, v2Var, kVar));
            }
        }
        return arrayList;
    }
}
