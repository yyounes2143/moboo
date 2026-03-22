package com.applovin.impl;

import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class u2 extends y2 implements o1 {
    private final AtomicBoolean t;
    private final AtomicBoolean u;

    public u2(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(map, jSONObject, jSONObject2, null, kVar);
        this.t = new AtomicBoolean();
        this.u = new AtomicBoolean();
    }

    private long k0() {
        long a2 = a("ad_expiration_ms", -1L);
        if (a2 < 0) {
            return b("ad_expiration_ms", ((Long) this.f3020a.a(g3.o7)).longValue());
        }
        return a2;
    }

    @Override // com.applovin.impl.q2
    public q2 a(com.applovin.impl.mediation.h hVar) {
        return new u2(this, hVar);
    }

    @Override // com.applovin.impl.o1
    public long getTimeToLiveMillis() {
        return k0() - (SystemClock.elapsedRealtime() - H());
    }

    public MaxNativeAdView l0() {
        return this.m.f();
    }

    public ViewGroup m0() {
        return this.m.h();
    }

    public AtomicBoolean n0() {
        return this.t;
    }

    public String o0() {
        return BundleUtils.getString("template", "", l());
    }

    public AtomicBoolean p0() {
        return this.u;
    }

    public boolean q0() {
        return a("inacc", (Boolean) this.f3020a.a(g3.I7)).booleanValue();
    }

    public boolean r0() {
        if (this.m == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.o1
    public void setExpired() {
        MaxNativeAd nativeAd = getNativeAd();
        if (nativeAd != null) {
            nativeAd.setExpired();
        }
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.m.a(maxNativeAdView);
    }

    public void a(ViewGroup viewGroup) {
        this.m.a(viewGroup);
    }

    private u2(u2 u2Var, com.applovin.impl.mediation.h hVar) {
        super(u2Var.i(), u2Var.a(), u2Var.g(), hVar, u2Var.f3020a);
        this.t = new AtomicBoolean();
        this.u = new AtomicBoolean();
    }
}
