package com.applovin.impl;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i3;
import com.applovin.impl.i4;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j5 extends w4 {
    private final String g;
    private final MaxAdFormat h;
    private final Map i;
    private final Map j;
    private final Map k;
    private final JSONArray l;
    private final Context m;
    private final a.InterfaceC0016a n;

    public j5(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, JSONArray jSONArray, Context context, com.applovin.impl.sdk.k kVar, a.InterfaceC0016a interfaceC0016a) {
        super("TaskFetchMediatedAd", kVar, str);
        this.g = str;
        this.h = maxAdFormat;
        this.i = map;
        this.j = map2;
        this.k = map3;
        this.l = jSONArray;
        this.m = context;
        this.n = interfaceC0016a;
    }

    private void c(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.f3803a.X().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData != null && z6.f(com.applovin.impl.sdk.k.o())) {
            JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
        }
    }

    private void d(JSONObject jSONObject) {
        if (((Boolean) this.f3803a.a(l4.n4)).booleanValue()) {
            j3 Y = this.f3803a.Y();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            h3 h3Var = h3.c;
            JsonUtils.putAll(jSONObject3, Y.a(h3Var, i3.a.AD_UNIT_ID));
            JsonUtils.putJSONObject(jSONObject2, "arpau", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            JsonUtils.putAll(jSONObject4, Y.a(h3Var, i3.a.AD_FORMAT));
            JsonUtils.putJSONObject(jSONObject2, "arpaf", jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            JsonUtils.putAll(jSONObject5, Y.a(h3.d, i3.a.AD));
            JsonUtils.putJSONObject(jSONObject2, "ttdasipa_ms", jSONObject5);
            JsonUtils.putJSONObject(jSONObject, "mediation_stats", jSONObject2);
        }
    }

    private String e() {
        return b3.a(this.f3803a);
    }

    private String f() {
        return b3.b(this.f3803a);
    }

    private JSONObject g() {
        Map a2 = this.f3803a.B().a((Map) null, false, true);
        a2.putAll(this.k);
        JSONObject jSONObject = new JSONObject(a2);
        e(jSONObject);
        h(jSONObject);
        f(jSONObject);
        c(jSONObject);
        g(jSONObject);
        d(jSONObject);
        return jSONObject;
    }

    private Map h() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("AppLovin-Ad-Unit-Id", this.g);
        hashMap.put("AppLovin-Ad-Format", this.h.getLabel());
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Attempt", this.j.get("retry_attempt"), hashMap);
        CollectionUtils.putObjectToStringIfValid("AppLovin-Retry-Delay-Sec", this.j.get("retry_delay_sec"), hashMap);
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Fetching next ad for " + this.h.getLabel() + " ad unit " + this.g);
        }
        e2.a();
        if (((Boolean) this.f3803a.a(l4.J3)).booleanValue() && z6.j() && com.applovin.impl.sdk.o.a()) {
            this.c.a(this.b, "User is connected to a VPN");
        }
        this.f3803a.P().a(y1.Q, this.h, this.g, (MaxError) null);
        if (((Boolean) this.f3803a.a(l4.n4)).booleanValue()) {
            j3 Y = this.f3803a.Y();
            h3 h3Var = h3.c;
            Y.a(h3Var, i3.a(this.g));
            Y.a(h3Var, i3.a(this.h));
        }
        z6.a(this.f3803a, this.b);
        try {
            JSONObject g = g();
            HashMap hashMap = new HashMap();
            if (!((Boolean) this.f3803a.a(l4.a5)).booleanValue() && !((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
                hashMap.put("rid", UUID.randomUUID().toString());
            }
            if (!((Boolean) this.f3803a.a(l4.L4)).booleanValue()) {
                hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3803a.i0());
            }
            if (this.f3803a.s0().c()) {
                hashMap.put("test_mode", "1");
            }
            List b = this.f3803a.s0().b();
            String str2 = this.f3803a.n0().getExtraParameters().get("fan");
            if (b != null && !b.isEmpty()) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(",", b);
                hashMap.put("filter_ad_network", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (!this.f3803a.s0().c()) {
                    hashMap.put("fhkZsVqYC7", "1");
                }
                if (this.f3803a.s0().d()) {
                    hashMap.put("force_ad_network", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            } else if (StringUtils.isValidString(str2)) {
                hashMap.put("filter_ad_network", str2);
            }
            a aVar = new a(com.applovin.impl.sdk.network.a.a(this.f3803a).c(ShareTarget.METHOD_POST).a(h()).b(f()).a(e()).b(hashMap).a(g).b(((Boolean) this.f3803a.a(g3.Q7)).booleanValue()).a((Object) new JSONObject()).c(((Long) this.f3803a.a(g3.O6)).intValue()).a(((Integer) this.f3803a.a(l4.O2)).intValue()).b(((Long) this.f3803a.a(g3.N6)).intValue()).a(i4.a.a(((Integer) this.f3803a.a(l4.R4)).intValue())).f(true).a(), this.f3803a);
            aVar.c(g3.L6);
            aVar.b(g3.M6);
            this.f3803a.q0().a(aVar);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str3 = this.b;
                oVar2.a(str3, "Unable to fetch ad for Ad Unit ID: " + this.g, th);
            }
            a("", 0, th.getMessage());
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
                HashMap hashMap = new HashMap(6);
                CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
                CollectionUtils.putStringIfValid("code", String.valueOf(i), hashMap);
                CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, j5.this.g, hashMap);
                CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, j5.this.h.getLabel(), hashMap);
                CollectionUtils.putStringIfValid("latency_ms", String.valueOf(this.l.a()), hashMap);
                CollectionUtils.putStringIfValid("response_size", String.valueOf(this.l.b()), hashMap);
                this.f3803a.P().d(y1.R, hashMap);
                j5.this.b(jSONObject);
                return;
            }
            j5.this.a(str, i, null);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            j5.this.a(str, i, str2);
            this.f3803a.E().a("fetchMediatedAd", str, i, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        try {
            n0.c(jSONObject, this.f3803a);
            n0.b(jSONObject, this.f3803a);
            n0.a(jSONObject, this.f3803a);
            b3.f(jSONObject, this.f3803a);
            b3.d(jSONObject, this.f3803a);
            b3.e(jSONObject, this.f3803a);
            b3.g(jSONObject, this.f3803a);
            this.f3803a.m().a();
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, null));
            if (this.h == formatFromString) {
                a(jSONObject);
            } else if (formatFromString == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.b, "Mediated ad response is missing the ad format field for ad unit " + this.g);
                }
                if (jSONObject.has(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS)) {
                    HashMap hashMap = new HashMap(3);
                    CollectionUtils.putStringIfValid("details", "Missing ad format field", hashMap);
                    CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, this.g, hashMap);
                    CollectionUtils.putStringIfValid("mcode", JsonUtils.getString(jSONObject, "mcode", ""), hashMap);
                    this.f3803a.E().a(y1.C0, this.b, hashMap);
                }
                this.n.onAdLoadFailed(this.g, MaxAdapterError.NO_FILL);
            } else {
                String label = formatFromString.getLabel();
                String label2 = this.h.getLabel();
                String str = "Incorrect format (" + label + ") loaded for (" + label2 + ") ad. Please verify if the ad unit ID (" + this.g + ") is assigned to the correct ad format.";
                if (z6.a(this.h, formatFromString)) {
                    com.applovin.impl.sdk.o.j(this.b, str);
                    a(jSONObject);
                    return;
                }
                g1.a(str, new Object[0]);
                com.applovin.impl.sdk.o.h(this.b, str);
                this.n.onAdLoadFailed(this.g, new MaxAdapterError(MaxAdapterError.INVALID_CONFIGURATION, 0, str));
                HashMap<String, String> hashMap2 = CollectionUtils.hashMap(MintegralConstants.AD_UNIT_ID, this.g);
                CollectionUtils.putStringIfValid("name", label2, hashMap2);
                CollectionUtils.putStringIfValid("details", label, hashMap2);
                this.f3803a.E().a(y1.u0, "incompatible_ad_format", hashMap2);
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Unable to process mediated ad response for ad unit " + this.g, th);
            }
            throw new RuntimeException("Unable to process ad: " + th);
        }
    }

    private void e(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(MintegralConstants.AD_UNIT_ID, this.g);
        jSONObject2.put(FirebaseAnalytics.Param.AD_FORMAT, this.h.getLabel());
        Map map = CollectionUtils.map(this.j);
        com.applovin.impl.sdk.p a0 = this.f3803a.a0();
        CollectionUtils.putStringIfValid("previous_request_id", a0.b(this.g), map);
        CollectionUtils.putStringIfValid("previous_loaded_request_id", a0.a(this.g), map);
        p.a c = a0.c(this.g);
        if (c != null) {
            if (Boolean.parseBoolean(this.f3803a.n0().getExtraParameters().get("esc"))) {
                map.put("previous_winning_network", "APPLOVIN_NETWORK");
                map.put("previous_winning_network_name", "AppLovin");
            } else {
                map.put("previous_winning_network", c.a());
                map.put("previous_winning_network_name", c.c());
            }
            if (this.f3803a.R() != null) {
                Queue<q2> c2 = this.f3803a.R().c(this.g);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (q2 q2Var : c2) {
                    arrayList.add(q2Var.c());
                    arrayList2.add(q2Var.getNetworkName());
                }
                CollectionUtils.putStringIfValid("queued_ad_networks", Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(",", arrayList), map);
                CollectionUtils.putStringIfValid("queued_ad_network_names", Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(",", arrayList2), map);
            }
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(map));
        jSONObject.put("ad_info", jSONObject2);
    }

    private void f(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disabled", new JSONArray(this.f3803a.T().a()));
            jSONObject2.put("installed", l3.b(this.f3803a));
            jSONObject2.put("initialized", this.f3803a.S().b());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.f3803a.S().a()));
            jSONObject2.put("loaded_classnames", new JSONArray(this.f3803a.T().c()));
            jSONObject2.put("failed_classnames", new JSONArray(this.f3803a.T().b()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Failed to populate adapter classNames", e);
            }
            throw new RuntimeException("Failed to populate classNames: " + e);
        }
    }

    private void a(JSONObject jSONObject) {
        t5 t5Var = new t5(this.g, this.h, this.i, jSONObject, this.m, this.f3803a, this.n);
        long j = JsonUtils.getLong(jSONObject, "process_waterfall_delay_ms", -1L);
        if (j > 0) {
            this.f3803a.q0().a(t5Var, r5.b.MEDIATION, j, true);
        } else {
            this.f3803a.q0().a(t5Var);
        }
    }

    private void h(JSONObject jSONObject) {
        JSONArray jSONArray = this.l;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i, String str2) {
        MaxErrorImpl maxErrorImpl;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str3 = this.b;
            oVar.b(str3, "Unable to fetch ad for ad unit " + this.g + ": server returned " + i);
        }
        if (i == -1009) {
            maxErrorImpl = new MaxErrorImpl(-1009, str2);
        } else if (i == -1001) {
            maxErrorImpl = new MaxErrorImpl(-1001, str2);
        } else if (StringUtils.isValidString(str2)) {
            maxErrorImpl = new MaxErrorImpl(-1000, str2);
        } else {
            maxErrorImpl = new MaxErrorImpl(-1);
        }
        HashMap hashMap = new HashMap(5);
        CollectionUtils.putStringIfValid("url", StringUtils.getHost(str), hashMap);
        CollectionUtils.putStringIfValid("code", String.valueOf(i), hashMap);
        CollectionUtils.putStringIfValid("error_message", str2, hashMap);
        CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, this.g, hashMap);
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, this.h.getLabel(), hashMap);
        this.f3803a.P().d(y1.S, hashMap);
        l2.a(this.n, this.g, maxErrorImpl);
    }

    private void g(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.f3803a.n0().getExtraParameters()));
    }
}
