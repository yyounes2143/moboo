package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a6 extends c6 {
    private final com.applovin.impl.sdk.ad.b g;

    public a6(com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        super("TaskReportAppLovinReward", kVar);
        this.g = bVar;
    }

    @Override // com.applovin.impl.e6
    public void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.g.getAdZone().e());
        JsonUtils.putInt(jSONObject, "fire_percent", this.g.Z());
        String clCode = this.g.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.c6
    public void b(JSONObject jSONObject) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Reported reward successfully for ad: " + this.g);
        }
    }

    @Override // com.applovin.impl.e6
    public String f() {
        return "2.0/cr";
    }

    @Override // com.applovin.impl.c6
    public b4 h() {
        return this.g.i();
    }

    @Override // com.applovin.impl.c6
    public void i() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.b(str, "No reward result was found for ad: " + this.g);
        }
    }

    @Override // com.applovin.impl.e6
    public void a(int i) {
        super.a(i);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.b(str, "Failed to report reward for ad: " + this.g + " - error code: " + i);
        }
        this.f3803a.g().a(y1.u, this.g);
    }
}
