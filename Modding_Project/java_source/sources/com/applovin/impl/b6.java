package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.mintegral.MintegralConstants;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b6 extends c6 {
    private final t2 g;

    public b6(t2 t2Var, com.applovin.impl.sdk.k kVar) {
        super("TaskReportMaxReward", kVar);
        this.g = t2Var;
    }

    @Override // com.applovin.impl.e6
    public void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, MintegralConstants.AD_UNIT_ID, this.g.getAdUnitId());
        JsonUtils.putString(jSONObject, AdRevenueScheme.PLACEMENT, this.g.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.g.e());
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

    @Override // com.applovin.impl.c6
    public void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Reported reward successfully for mediated ad: " + this.g);
        }
    }

    @Override // com.applovin.impl.e6
    public String f() {
        return "2.0/mcr";
    }

    @Override // com.applovin.impl.c6
    public b4 h() {
        return this.g.h0();
    }

    @Override // com.applovin.impl.c6
    public void i() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.b(str, "No reward result was found for mediated ad: " + this.g);
        }
    }

    @Override // com.applovin.impl.e6
    public void a(int i) {
        super.a(i);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Failed to report reward for mediated ad: " + this.g + " - error code: " + i);
        }
        this.f3803a.P().a(y1.d0, this.g);
    }
}
