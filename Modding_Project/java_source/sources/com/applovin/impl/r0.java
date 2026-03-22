package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class r0 extends q0 {
    public r0(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, kVar);
    }

    public List d() {
        s0 a2;
        JSONArray jSONArray = JsonUtils.getJSONArray(this.b, "transitions", null);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject != null && (a2 = s0.a(jSONObject, this.f3502a)) != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    public String e() {
        return b("message");
    }

    public String f() {
        return b(CampaignEx.JSON_KEY_TITLE);
    }

    @Override // com.applovin.impl.q0
    public String toString() {
        return "ConsentFlowState{id=" + b() + ", type=" + c() + ", title=" + f() + ", message=" + e() + ", actions=" + d() + "}";
    }
}
