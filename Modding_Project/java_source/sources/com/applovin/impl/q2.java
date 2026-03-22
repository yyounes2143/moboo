package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import j$.util.Objects;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class q2 extends a3 implements MaxAd {
    private final AtomicBoolean k;
    private final AtomicBoolean l;
    protected com.applovin.impl.mediation.h m;
    private final String n;
    private MaxAdWaterfallInfo o;
    private long p;
    private String q;
    private String r;
    private Bundle s;

    public q2(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.h hVar, com.applovin.impl.sdk.k kVar) {
        super(map, jSONObject, jSONObject2, kVar);
        String str;
        this.k = new AtomicBoolean();
        this.l = new AtomicBoolean();
        this.m = hVar;
        if (hVar != null) {
            str = hVar.b();
        } else {
            str = null;
        }
        this.n = str;
    }

    private long I() {
        return a("load_started_time_ms", 0L);
    }

    public static q2 a(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(jSONObject2, FirebaseAnalytics.Param.AD_FORMAT, null);
        MaxAdFormat formatFromString = MaxAdFormat.formatFromString(string);
        Objects.requireNonNull(formatFromString, "Invalid ad format for string: " + string);
        if (formatFromString.isAdViewAd()) {
            return new s2(map, jSONObject, jSONObject2, kVar);
        }
        if (formatFromString == MaxAdFormat.NATIVE) {
            return new u2(map, jSONObject, jSONObject2, kVar);
        }
        if (formatFromString.isFullscreenAd()) {
            return new t2(map, jSONObject, jSONObject2, kVar);
        }
        throw new IllegalArgumentException("Unsupported ad format: " + string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject b(v4 v4Var) {
        return JsonUtils.deepCopy(v4Var.a("ad_values", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle c(v4 v4Var) {
        JSONObject a2;
        if (v4Var.a("credentials")) {
            a2 = v4Var.a("credentials", new JSONObject());
        } else {
            a2 = v4Var.a("server_parameters", new JSONObject());
            JsonUtils.putString(a2, "placement_id", P());
        }
        return JsonUtils.toBundle(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject d(v4 v4Var) {
        return JsonUtils.deepCopy(v4Var.a("publisher_extra_info", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double e(v4 v4Var) {
        return Double.valueOf(JsonUtils.getDouble(v4Var.a("revenue_parameters", (JSONObject) null), "revenue", -1.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject f(v4 v4Var) {
        return JsonUtils.deepCopy(v4Var.a("revenue_parameters", new JSONObject()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(v4 v4Var) {
        return JsonUtils.getString(v4Var.a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    public com.applovin.impl.mediation.h A() {
        return this.m;
    }

    public Bundle B() {
        return this.s;
    }

    public String C() {
        return a("bcode", "");
    }

    public long D() {
        return a("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, l()));
    }

    public String E() {
        return a("bid_response", (String) null);
    }

    public Bundle F() {
        JSONObject a2;
        v4 v4Var = this.h;
        if (v4Var != null) {
            return (Bundle) v4Var.a(new Function() { // from class: com.applovin.impl.OO00
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Bundle c;
                    c = q2.this.c((v4) obj);
                    return c;
                }
            });
        }
        if (c("credentials")) {
            a2 = a("credentials", new JSONObject());
        } else {
            a2 = a("server_parameters", new JSONObject());
            JsonUtils.putString(a2, "placement_id", P());
        }
        return JsonUtils.toBundle(a2);
    }

    public long G() {
        if (I() > 0) {
            return H() - I();
        }
        return -1L;
    }

    public long H() {
        return a("load_completed_time_ms", 0L);
    }

    public String J() {
        return this.q;
    }

    public int K() {
        return a("mspc", ((Integer) this.f3020a.a(g3.C7)).intValue());
    }

    public JSONObject L() {
        v4 v4Var = this.h;
        if (v4Var != null) {
            return (JSONObject) v4Var.a(new Function() { // from class: com.applovin.impl.QQOOOOOOOO
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject d;
                    d = q2.d((v4) obj);
                    return d;
                }
            });
        }
        return a("publisher_extra_info", new JSONObject());
    }

    public String M() {
        return JsonUtils.getString(N(), "revenue_event", "");
    }

    public JSONObject N() {
        v4 v4Var = this.h;
        if (v4Var != null) {
            return (JSONObject) v4Var.a(new Function() { // from class: com.applovin.impl.OO000
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject f;
                    f = q2.f((v4) obj);
                    return f;
                }
            });
        }
        return a("revenue_parameters", new JSONObject());
    }

    public String O() {
        return b("event_id", "");
    }

    public String P() {
        return a("third_party_ad_placement_id", (String) null);
    }

    public List Q() {
        return b("mwf_info_urls");
    }

    public String R() {
        return b("waterfall_name", "");
    }

    public String S() {
        return b("waterfall_test_name", "");
    }

    public boolean T() {
        return StringUtils.isValidString(E());
    }

    public boolean U() {
        com.applovin.impl.mediation.h hVar = this.m;
        if (hVar == null || !hVar.k() || !this.m.j()) {
            return false;
        }
        return true;
    }

    public boolean V() {
        return a("only_load_when_initialized", Boolean.FALSE).booleanValue();
    }

    public boolean W() {
        return a("prefer_load_when_initialized", Boolean.TRUE).booleanValue();
    }

    public void X() {
        c("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    public void Y() {
        c("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    public Boolean Z() {
        return a("destroy_on_ui_thread", (Boolean) null);
    }

    public abstract q2 a(com.applovin.impl.mediation.h hVar);

    public Boolean a0() {
        return a("load_on_ui_thread", (Boolean) null);
    }

    public Boolean b0() {
        return a("show_on_ui_thread", (Boolean) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdReviewCreativeId() {
        return this.r;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return a(CampaignEx.JSON_KEY_CREATIVE_ID, (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspId() {
        return a("dsp_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspName() {
        return a("dsp_name", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(a(FirebaseAnalytics.Param.AD_FORMAT, b(FirebaseAnalytics.Param.AD_FORMAT, (String) null)));
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxNativeAd getNativeAd() {
        com.applovin.impl.mediation.h hVar = this.m;
        if (hVar != null) {
            return hVar.e();
        }
        return null;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return a("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(P());
    }

    @Override // com.applovin.mediation.MaxAd
    public long getRequestLatencyMillis() {
        return this.p;
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        if (((Boolean) this.f3020a.a(g3.H7)).booleanValue() && getFormat().isFullscreenAd() && !u().get()) {
            this.f3020a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3020a.O().b("MediatedAd", "Attempting to retrieve revenue when not available yet");
                return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            }
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        v4 v4Var = this.h;
        if (v4Var != null) {
            return ((Double) v4Var.a(new Function() { // from class: com.applovin.impl.QQOOOOOOO
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Double e;
                    e = q2.e((v4) obj);
                    return e;
                }
            })).doubleValue();
        }
        return JsonUtils.getDouble(a("revenue_parameters", (JSONObject) null), "revenue", -1.0d);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        v4 v4Var = this.h;
        if (v4Var != null) {
            return (String) v4Var.a(new Function() { // from class: com.applovin.impl.QQOOOOOOOOO
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String g;
                    g = q2.g((v4) obj);
                    return g;
                }
            });
        }
        return JsonUtils.getString(a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int a2 = a("ad_width", -3);
        int a3 = a("ad_height", -3);
        if (a2 != -3 && a3 != -3) {
            return new AppLovinSdkUtils.Size(a2, a3);
        }
        return getFormat().getSize();
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.o;
    }

    public void h(String str) {
        this.r = str;
    }

    public void i(String str) {
        this.q = str;
    }

    public void t() {
        this.m = null;
        this.o = null;
    }

    @Override // com.applovin.impl.a3
    public String toString() {
        return "MediatedAd{thirdPartyAdPlacementId=" + P() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + "'}";
    }

    public AtomicBoolean u() {
        return this.k;
    }

    public String v() {
        return a("adomain", (String) null);
    }

    public AtomicBoolean w() {
        return this.l;
    }

    public JSONObject x() {
        v4 v4Var = this.h;
        if (v4Var != null) {
            return (JSONObject) v4Var.a(new Function() { // from class: com.applovin.impl.OO0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    JSONObject b;
                    b = q2.b((v4) obj);
                    return b;
                }
            });
        }
        return a("ad_values", new JSONObject());
    }

    public View y() {
        com.applovin.impl.mediation.h hVar;
        if (U() && (hVar = this.m) != null) {
            return hVar.d();
        }
        return null;
    }

    public String z() {
        return this.n;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject x = x();
        if (x.has(str)) {
            return JsonUtils.getString(x, str, str2);
        }
        Bundle l = l();
        if (l.containsKey(str)) {
            return l.getString(str);
        }
        JSONObject L = L();
        if (L.has(str)) {
            return JsonUtils.getString(L, str, str2);
        }
        return a(str, str2);
    }

    public void a(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.o = maxAdWaterfallInfo;
    }

    public void a(long j) {
        this.p = j;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject L = L();
        JsonUtils.putAll(L, jSONObject);
        a("publisher_extra_info", (Object) L);
    }

    public void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey(CampaignEx.JSON_KEY_CREATIVE_ID) && !c(CampaignEx.JSON_KEY_CREATIVE_ID)) {
            c(CampaignEx.JSON_KEY_CREATIVE_ID, BundleUtils.getString(CampaignEx.JSON_KEY_CREATIVE_ID, bundle));
        }
        if (bundle.containsKey("ad_width") && !c("ad_width") && bundle.containsKey("ad_height") && !c("ad_height")) {
            int i = BundleUtils.getInt("ad_width", bundle);
            int i2 = BundleUtils.getInt("ad_height", bundle);
            c("ad_width", i);
            c("ad_height", i2);
        }
        if (bundle.containsKey("publisher_extra_info")) {
            a(BundleUtils.toJSONObject(bundle.getBundle("publisher_extra_info")));
        }
        if (bundle.containsKey("array_parameters")) {
            this.s = bundle.getBundle("array_parameters");
        }
    }
}
