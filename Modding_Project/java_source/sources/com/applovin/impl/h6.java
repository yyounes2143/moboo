package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h6 extends i6 {
    private final t2 g;

    public h6(t2 t2Var, com.applovin.impl.sdk.k kVar) {
        super("TaskValidateMaxReward", kVar);
        this.g = t2Var;
    }

    @Override // com.applovin.impl.e6
    public void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, MintegralConstants.AD_UNIT_ID, this.g.getAdUnitId());
        JsonUtils.putString(jSONObject, AdRevenueScheme.PLACEMENT, this.g.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.g.e());
        JsonUtils.putString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, this.g.getFormat().getLabel());
        String l0 = this.g.l0();
        if (!StringUtils.isValidString(l0)) {
            l0 = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", l0);
        String C = this.g.C();
        if (!StringUtils.isValidString(C)) {
            C = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", C);
    }

    @Override // com.applovin.impl.e6
    public String f() {
        return "2.0/mvr";
    }

    @Override // com.applovin.impl.i6
    public boolean h() {
        return this.g.n0();
    }

    @Override // com.applovin.impl.i6
    public void a(b4 b4Var) {
        this.g.a(b4Var);
    }

    @Override // com.applovin.impl.e6
    public void a(int i) {
        String str;
        super.a(i);
        if (i >= 400 && i < 500) {
            str = "rejected";
        } else {
            str = "network_timeout";
        }
        this.g.a(b4.a(str));
        this.f3803a.P().a(y1.e0, this.g, CollectionUtils.hashMap("error_message", str));
    }
}
