package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t2 extends q2 implements o1 {
    private final Bundle t;
    private final AtomicReference u;
    private final AtomicBoolean v;
    private final AtomicBoolean w;
    private boolean x;

    public t2(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(map, jSONObject, jSONObject2, null, kVar);
        this.t = new Bundle();
        this.w = new AtomicBoolean();
        this.u = new AtomicReference();
        this.v = new AtomicBoolean();
    }

    private long d0() {
        long a2 = a("ad_expiration_ms", -1L);
        if (a2 < 0) {
            return b("ad_expiration_ms", ((Long) this.f3020a.a(g3.n7)).longValue());
        }
        return a2;
    }

    @Override // com.applovin.impl.q2
    public q2 a(com.applovin.impl.mediation.h hVar) {
        return new t2(this, hVar);
    }

    public void c0() {
        this.v.set(true);
    }

    public long e0() {
        return a("ahdm", ((Long) this.f3020a.a(g3.h7)).longValue());
    }

    public long f0() {
        long a2 = a("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        if (a2 >= 0) {
            return a2;
        }
        return b("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.f3020a.a(g3.v7)).longValue());
    }

    public long g0() {
        long a2 = a("ad_hidden_timeout_ms", -1L);
        if (a2 >= 0) {
            return a2;
        }
        return b("ad_hidden_timeout_ms", ((Long) this.f3020a.a(g3.s7)).longValue());
    }

    @Override // com.applovin.impl.o1
    public long getTimeToLiveMillis() {
        return d0() - (SystemClock.elapsedRealtime() - H());
    }

    public b4 h0() {
        return (b4) this.u.getAndSet(null);
    }

    public long i0() {
        if (H() > 0) {
            return SystemClock.elapsedRealtime() - H();
        }
        return -1L;
    }

    public Bundle j0() {
        return this.t;
    }

    public long k0() {
        long a2 = a("fullscreen_display_delay_ms", -1L);
        if (a2 >= 0) {
            return a2;
        }
        return ((Long) this.f3020a.a(g3.f7)).longValue();
    }

    public String l0() {
        return b("mcode", "");
    }

    public AtomicBoolean m0() {
        return this.w;
    }

    public boolean n0() {
        return this.v.get();
    }

    public boolean o0() {
        if (a("schedule_ad_hidden_on_ad_dismiss", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.f3020a.a(g3.t7)).booleanValue();
    }

    public boolean p0() {
        if (a("schedule_ad_hidden_on_single_task_app_relaunch", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return b("schedule_ad_hidden_on_single_task_app_relaunch", (Boolean) this.f3020a.a(g3.u7)).booleanValue();
    }

    public boolean q0() {
        return a("susaode", (Boolean) this.f3020a.a(g3.g7)).booleanValue();
    }

    @Override // com.applovin.impl.o1
    public void setExpired() {
        this.x = true;
    }

    @Override // com.applovin.impl.q2
    public void a(Bundle bundle) {
        Bundle bundle2;
        super.a(bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("applovin_ad_view_info")) == null) {
            return;
        }
        this.t.putBundle("applovin_ad_view_info", bundle2);
    }

    public void a(b4 b4Var) {
        this.u.set(b4Var);
    }

    private t2(t2 t2Var, com.applovin.impl.mediation.h hVar) {
        super(t2Var.i(), t2Var.a(), t2Var.g(), hVar, t2Var.f3020a);
        this.t = new Bundle();
        this.w = new AtomicBoolean();
        this.u = t2Var.u;
        this.v = t2Var.v;
    }
}
