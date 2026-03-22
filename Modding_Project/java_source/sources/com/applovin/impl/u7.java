package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class u7 {

    /* renamed from: a  reason: collision with root package name */
    private final m2 f3777a;
    private final p3 b;
    private final List c;

    public u7(JSONObject jSONObject, MaxAdFormat maxAdFormat, v2 v2Var, com.applovin.impl.sdk.k kVar) {
        boolean z;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "bidder_placement", (JSONObject) null);
        if (jSONObject2 != null) {
            this.b = new p3(jSONObject2, kVar);
        } else {
            this.b = null;
        }
        String string = JsonUtils.getString(jSONObject, "name", "");
        String string2 = JsonUtils.getString(jSONObject, "display_name", "");
        if (jSONObject2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.f3777a = new m2(string, string2, z, v2Var);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "placements", new JSONArray());
        this.c = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject3 != null) {
                this.c.add(new p3(jSONObject3, kVar));
            }
        }
    }

    public p3 a() {
        return this.b;
    }

    public m2 b() {
        return this.f3777a;
    }

    public List c() {
        return this.c;
    }

    public boolean d() {
        if (this.b != null) {
            return true;
        }
        return false;
    }
}
