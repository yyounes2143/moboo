package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class y2 extends q2 {
    public y2(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.h hVar, com.applovin.impl.sdk.k kVar) {
        super(map, jSONObject, jSONObject2, hVar, kVar);
    }

    public float c0() {
        return a("viewability_min_alpha", ((Float) this.f3020a.a(l4.u1)).floatValue() / 100.0f);
    }

    public int d0() {
        return a("viewability_min_pixels", -1);
    }

    public int e0() {
        l4 l4Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            l4Var = l4.n1;
        } else if (format == MaxAdFormat.MREC) {
            l4Var = l4.p1;
        } else if (format == MaxAdFormat.LEADER) {
            l4Var = l4.r1;
        } else if (format == MaxAdFormat.NATIVE) {
            l4Var = l4.t1;
        } else {
            l4Var = null;
        }
        if (l4Var != null) {
            return a("viewability_min_height", ((Integer) this.f3020a.a(l4Var)).intValue());
        }
        return 0;
    }

    public float f0() {
        return a("viewability_min_percentage_dp", -1.0f);
    }

    public float g0() {
        return a("viewability_min_percentage_pixels", -1.0f);
    }

    public long h0() {
        return a("viewability_timer_min_visible_ms", ((Long) this.f3020a.a(l4.v1)).longValue());
    }

    public int i0() {
        l4 l4Var;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            l4Var = l4.m1;
        } else if (format == MaxAdFormat.MREC) {
            l4Var = l4.o1;
        } else if (format == MaxAdFormat.LEADER) {
            l4Var = l4.q1;
        } else if (format == MaxAdFormat.NATIVE) {
            l4Var = l4.s1;
        } else {
            l4Var = null;
        }
        if (l4Var != null) {
            return a("viewability_min_width", ((Integer) this.f3020a.a(l4Var)).intValue());
        }
        return 0;
    }

    public boolean j0() {
        if (d0() < 0 && f0() < 0.0f && g0() < 0.0f) {
            return false;
        }
        return true;
    }
}
