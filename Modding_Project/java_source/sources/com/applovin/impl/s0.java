package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f3534a;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        NEUTRAL,
        POSITIVE,
        NEGATIVE
    }

    private s0(JSONObject jSONObject) {
        this.f3534a = jSONObject;
    }

    public static s0 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, CampaignEx.JSON_KEY_TITLE, (JSONObject) null), "key", null);
        if ("TOS".equalsIgnoreCase(string) && kVar.y().h() == null) {
            return null;
        }
        if ("PP".equalsIgnoreCase(string) && kVar.y().f() == null) {
            return null;
        }
        return new s0(jSONObject);
    }

    public String b() {
        return JsonUtils.getString(this.f3534a, "event", null);
    }

    public a c() {
        String string = JsonUtils.getString(this.f3534a, "style", null);
        if ("default".equalsIgnoreCase(string)) {
            return a.POSITIVE;
        }
        if (!"destructive".equalsIgnoreCase(string) && !"cancel".equalsIgnoreCase(string)) {
            return a.NEUTRAL;
        }
        return a.NEGATIVE;
    }

    public String d() {
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f3534a, CampaignEx.JSON_KEY_TITLE, (JSONObject) null);
        return com.applovin.impl.sdk.k.a(JsonUtils.getString(jSONObject, "key", ""), JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "replacements", null), null));
    }

    public String toString() {
        return "ConsentFlowStateAlertAction{title=" + d() + ", destinationStateId=" + a() + ", event=" + b() + "}";
    }

    public int a() {
        return JsonUtils.getInt(this.f3534a, "destination_state_id", -1);
    }
}
