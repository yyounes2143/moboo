package com.applovin.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i4;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class f5 extends w4 {
    protected final t g;
    private final String h;

    public f5(t tVar, String str, com.applovin.impl.sdk.k kVar) {
        super(str, kVar);
        this.g = tVar;
        this.h = kVar.b();
    }

    private Map g() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("AppLovin-Zone-Id", this.g.e());
        if (this.g.f() != null) {
            hashMap.put("AppLovin-Ad-Size", this.g.f().getLabel());
        }
        if (this.g.g() != null) {
            hashMap.put("AppLovin-Ad-Type", this.g.g().getLabel());
        }
        return hashMap;
    }

    public abstract w4 a(JSONObject jSONObject);

    public void a(int i, String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str2 = this.b;
            oVar.b(str2, "Unable to fetch " + this.g + " ad: server returned " + i);
        }
        this.f3803a.g().a(y1.m, this.g, new AppLovinError(i, str));
    }

    public void b(JSONObject jSONObject) {
        n0.c(jSONObject, this.f3803a);
        n0.b(jSONObject, this.f3803a);
        n0.a(jSONObject, this.f3803a);
        t.a(jSONObject);
        this.f3803a.q0().a(a(jSONObject));
    }

    public abstract String e();

    public abstract String f();

    public Map h() {
        HashMap hashMap = new HashMap(4);
        hashMap.put(AppLovinUtils.ServerParameterKeys.ZONE_ID, this.g.e());
        if (this.g.f() != null) {
            hashMap.put("size", this.g.f().getLabel());
        }
        if (this.g.g() != null) {
            hashMap.put("require", this.g.g().getLabel());
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        i4.a aVar;
        Map map;
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "Fetching next ad of zone: " + this.g);
        }
        if (((Boolean) this.f3803a.a(l4.J3)).booleanValue() && z6.j() && com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "User is connected to a VPN");
        }
        z6.a(this.f3803a, this.b);
        this.f3803a.g().a(y1.k, this.g, (AppLovinError) null);
        try {
            JSONObject andResetCustomPostBody = this.f3803a.k().getAndResetCustomPostBody();
            boolean booleanValue = ((Boolean) this.f3803a.a(l4.Z2)).booleanValue();
            String str = ShareTarget.METHOD_POST;
            if (booleanValue) {
                aVar = i4.a.a(((Integer) this.f3803a.a(l4.T4)).intValue());
                JSONObject jSONObject = new JSONObject(this.f3803a.B().a(h(), false, true));
                map = new HashMap();
                if (!((Boolean) this.f3803a.a(l4.c5)).booleanValue() && !((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
                    map.put("rid", UUID.randomUUID().toString());
                }
                if (!((Boolean) this.f3803a.a(l4.L4)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3803a.i0());
                }
                JsonUtils.putAll(jSONObject, andResetCustomPostBody);
                andResetCustomPostBody = jSONObject;
            } else {
                i4.a a2 = i4.a.a(((Integer) this.f3803a.a(l4.U4)).intValue());
                Map a3 = z6.a(this.f3803a.B().a(h(), false, false));
                if (!((Boolean) this.f3803a.a(l4.h6)).booleanValue()) {
                    a3.remove("video_decoders");
                }
                if (andResetCustomPostBody == null) {
                    str = "GET";
                    andResetCustomPostBody = null;
                }
                aVar = a2;
                map = a3;
            }
            if (z6.f(a()) || z6.h(a())) {
                map.putAll(this.f3803a.k().getAndResetCustomQueryParams());
            }
            if (StringUtils.isValidString(this.h)) {
                map.put("sts", this.h);
            }
            a.C0024a f = com.applovin.impl.sdk.network.a.a(this.f3803a).b(f()).a(e()).b(map).c(str).a(g()).a((Object) new JSONObject()).a(((Integer) this.f3803a.a(l4.O2)).intValue()).c(((Boolean) this.f3803a.a(l4.P2)).booleanValue()).d(((Boolean) this.f3803a.a(l4.Q2)).booleanValue()).c(((Integer) this.f3803a.a(l4.N2)).intValue()).a(aVar).f(true);
            if (andResetCustomPostBody != null) {
                f.a(andResetCustomPostBody);
                f.b(((Boolean) this.f3803a.a(l4.m5)).booleanValue());
            }
            a aVar2 = new a(f.a(), this.f3803a);
            aVar2.c(l4.p0);
            aVar2.b(l4.q0);
            this.f3803a.q0().a(aVar2);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Unable to fetch ad for zone id: " + this.g, th);
            }
            a(0, th.getMessage());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            if (i == 200) {
                JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.l.a());
                JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.l.b());
                HashMap hashMap = new HashMap(5);
                CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
                CollectionUtils.putStringIfValid("code", String.valueOf(i), hashMap);
                CollectionUtils.putStringIfValid("ad_zone_id", f5.this.g.e(), hashMap);
                CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.l.a()), hashMap);
                CollectionUtils.putStringIfValid("response_size", String.valueOf(this.l.b()), hashMap);
                this.f3803a.g().d(y1.l, hashMap);
                f5.this.b(jSONObject);
                return;
            }
            f5.this.a(i, MaxAdapterError.NO_FILL.getErrorMessage());
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            f5.this.a(i, str2);
            this.f3803a.E().a("fetchAd", str, i, str2);
        }
    }
}
