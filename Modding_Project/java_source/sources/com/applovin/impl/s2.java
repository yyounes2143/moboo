package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class s2 extends y2 {
    public s2(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(map, jSONObject, jSONObject2, null, kVar);
    }

    @Override // com.applovin.impl.q2
    public q2 a(com.applovin.impl.mediation.h hVar) {
        return new s2(this, hVar);
    }

    public long k0() {
        long a2 = a("ad_refresh_ms", -1L);
        if (a2 >= 0) {
            return a2;
        }
        return b("ad_refresh_ms", ((Long) this.f3020a.a(g3.U6)).longValue());
    }

    public long l0() {
        return z6.e(a("bg_color", (String) null));
    }

    public int m0() {
        int a2 = a("ad_view_height", -2);
        if (a2 == -2) {
            MaxAdFormat format = getFormat();
            if (format.isAdViewAd()) {
                return format.getSize().getHeight();
            }
            throw new IllegalStateException("Invalid ad format");
        }
        return a2;
    }

    public long n0() {
        return a("viewability_imp_delay_ms", ((Long) this.f3020a.a(l4.l1)).longValue());
    }

    public int o0() {
        int a2 = a("ad_view_width", -2);
        if (a2 == -2) {
            MaxAdFormat format = getFormat();
            if (format.isAdViewAd()) {
                return format.getSize().getWidth();
            }
            throw new IllegalStateException("Invalid ad format");
        }
        return a2;
    }

    public boolean p0() {
        if (k0() >= 0) {
            return true;
        }
        return false;
    }

    public boolean q0() {
        return a("proe", (Boolean) this.f3020a.a(g3.w7)).booleanValue();
    }

    private s2(s2 s2Var, com.applovin.impl.mediation.h hVar) {
        super(s2Var.i(), s2Var.a(), s2Var.g(), hVar, s2Var.f3020a);
    }
}
