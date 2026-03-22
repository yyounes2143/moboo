package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y1 {
    public static final y1 A;
    public static final y1 A0;
    public static final y1 B;
    public static final y1 B0;
    public static final y1 C;
    public static final y1 C0;
    public static final y1 D;
    public static final y1 D0;
    public static final y1 E;
    public static final y1 F;
    public static final y1 G;
    public static final y1 H;
    public static final y1 I;
    public static final y1 J;
    public static final y1 K;
    public static final y1 L;
    public static final y1 M;
    public static final y1 N;
    public static final y1 O;
    public static final y1 P;
    public static final y1 Q;
    public static final y1 R;
    public static final y1 S;
    public static final y1 T;
    public static final y1 U;
    public static final y1 V;
    public static final y1 W;
    public static final y1 X;
    public static final y1 Y;
    public static final y1 Z;
    public static final y1 a0;
    public static final y1 b0;
    private static JSONObject c;
    public static final y1 c0;
    public static final y1 d;
    public static final y1 d0;
    public static final y1 e;
    public static final y1 e0;
    public static final y1 f;
    public static final y1 f0;
    public static final y1 g;
    public static final y1 g0;
    public static final y1 h;
    public static final y1 h0;
    public static final y1 i;
    public static final y1 i0;
    public static final y1 j;
    public static final y1 j0;
    public static final y1 k;
    public static final y1 k0;
    public static final y1 l;
    public static final y1 l0;
    public static final y1 m;
    public static final y1 m0;
    public static final y1 n;
    public static final y1 n0;
    public static final y1 o;
    public static final y1 o0;
    public static final y1 p;
    public static final y1 p0;
    public static final y1 q;
    public static final y1 q0;
    public static final y1 r;
    public static final y1 r0;
    public static final y1 s;
    public static final y1 s0;
    public static final y1 t;
    public static final y1 t0;
    public static final y1 u;
    public static final y1 u0;
    public static final y1 v;
    public static final y1 v0;
    public static final y1 w;
    public static final y1 w0;
    public static final y1 x;
    public static final y1 x0;
    public static final y1 y;
    public static final y1 y0;
    public static final y1 z;
    public static final y1 z0;

    /* renamed from: a  reason: collision with root package name */
    private final String f3817a;
    private final b b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3818a;

        static {
            int[] iArr = new int[b.values().length];
            f3818a = iArr;
            try {
                iArr[b.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3818a[b.MEDIATED_AD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3818a[b.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3818a[b.USER_SESSION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        AD,
        MEDIATED_AD,
        ERROR,
        USER_SESSION
    }

    static {
        b bVar = b.ERROR;
        d = new y1("generic", bVar);
        b bVar2 = b.USER_SESSION;
        e = new y1("sdk_init", bVar2);
        f = new y1("fetch_basic_settings_started", bVar2);
        g = new y1("fetch_basic_settings_success", bVar2);
        h = new y1("fetch_basic_settings_failure", bVar2);
        i = new y1("pub_init_callback", bVar2);
        j = new y1("sdk_extra_parameter_set", bVar2);
        b bVar3 = b.AD;
        k = new y1("ad_requested", bVar3);
        l = new y1("ad_request_success", bVar3);
        m = new y1("ad_request_failure", bVar3);
        n = new y1("ad_load_success", bVar3);
        o = new y1("ad_load_failure", bVar3);
        p = new y1("ad_display_attempted", bVar3);
        q = new y1("ad_displayed", bVar3);
        r = new y1("ad_reshown", bVar3);
        s = new y1("ad_display_failure", bVar3);
        t = new y1("ad_hidden", bVar3);
        u = new y1("reward_reporting_error", bVar3);
        v = new y1("reward_validation_error", bVar3);
        w = new y1("user_not_rewarded", bVar3);
        x = new y1("resource_load_started", bVar3);
        y = new y1("resource_retrieved_from_cache", bVar3);
        z = new y1("resource_load_success", bVar3);
        A = new y1("resource_load_failure", bVar3);
        B = new y1("resource_download_started", bVar3);
        C = new y1("resource_download_success", bVar3);
        D = new y1("resource_download_failure", bVar3);
        E = new y1("ad_persist_request", bVar3);
        F = new y1("ad_persist_success", bVar3);
        G = new y1("ad_persist_failure", bVar3);
        H = new y1("persisted_ad_requested", bVar3);
        I = new y1("persisted_ad_load_success", bVar3);
        J = new y1("persisted_ad_load_failure", bVar3);
        K = new y1("persisted_ad_expired", bVar3);
        b bVar4 = b.MEDIATED_AD;
        L = new y1("adapter_init_started", bVar4);
        M = new y1("adapter_init_success", bVar4);
        N = new y1("adapter_init_failure", bVar4);
        O = new y1("signal_collection_success", bVar4);
        P = new y1("signal_collection_failure", bVar4);
        Q = new y1("mediated_ad_requested", bVar4);
        R = new y1("mediated_ad_request_success", bVar4);
        S = new y1("mediated_ad_request_failure", bVar4);
        T = new y1("mediated_ad_load_started", bVar4);
        U = new y1("mediated_ad_load_success", bVar4);
        V = new y1("mediated_ad_load_failure", bVar4);
        W = new y1("waterfall_processing_complete", bVar4);
        X = new y1("mediated_ad_display_attempted", bVar4);
        Y = new y1("mediated_ad_displayed", bVar4);
        Z = new y1("mediated_ad_viewability_impression_called", bVar4);
        a0 = new y1("mediated_ad_display_failure", bVar4);
        b0 = new y1("mediated_ad_hidden", bVar4);
        c0 = new y1("mediated_ad_hidden_callback_not_called", bVar4);
        d0 = new y1("mediated_ad_reward_reporting_error", bVar4);
        e0 = new y1("mediated_ad_reward_validation_error", bVar4);
        f0 = new y1("user_not_rewarded_for_mediated_ad", bVar4);
        g0 = new y1("mediated_ad_extra_parameter_set", bVar4);
        h0 = new y1("activity_destroyed_by_app_relaunch", bVar);
        i0 = new y1("activity_missing", bVar);
        j0 = new y1("ad_context_violation", bVar);
        k0 = new y1("anr", bVar);
        l0 = new y1("array_error", bVar);
        m0 = new y1("app_killed_during_ad", bVar);
        n0 = new y1("auto_redirect", bVar);
        o0 = new y1("black_view", bVar);
        p0 = new y1("cache_error", bVar);
        q0 = new y1("caught_exception", bVar);
        r0 = new y1("consent_flow_error", bVar);
        s0 = new y1(AppMeasurement.CRASH_ORIGIN, bVar);
        t0 = new y1("file_error", bVar);
        u0 = new y1("integration_error", bVar);
        v0 = new y1("media_error", bVar);
        w0 = new y1("memory_leak", bVar);
        x0 = new y1("native_error", bVar);
        y0 = new y1("network_error", bVar);
        z0 = new y1("task_exception", bVar);
        A0 = new y1("task_latency_alert", bVar);
        B0 = new y1("template_error", bVar);
        C0 = new y1("unexpected_state", bVar);
        D0 = new y1("web_view_error", bVar);
    }

    public y1(String str, b bVar) {
        this.f3817a = str;
        this.b = bVar;
    }

    public b a() {
        return this.b;
    }

    public String b() {
        return this.f3817a;
    }

    public double a(com.applovin.impl.sdk.k kVar) {
        if (z6.i(com.applovin.impl.sdk.k.o())) {
            return 100.0d;
        }
        double a2 = a(this.f3817a, kVar);
        if (a2 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return a2;
        }
        double a3 = a(this.b, kVar);
        return a3 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? a3 : ((Float) kVar.a(l4.F)).floatValue();
    }

    private double a(String str, com.applovin.impl.sdk.k kVar) {
        if (c == null) {
            c = JsonUtils.deserialize((String) kVar.a(l4.B));
        }
        Double d2 = JsonUtils.getDouble(c, str, (Double) null);
        if (d2 != null) {
            return d2.doubleValue();
        }
        return -1.0d;
    }

    private double a(b bVar, com.applovin.impl.sdk.k kVar) {
        float floatValue;
        int i2 = a.f3818a[bVar.ordinal()];
        if (i2 == 1 || i2 == 2) {
            floatValue = ((Float) kVar.a(l4.C)).floatValue();
        } else if (i2 == 3) {
            floatValue = ((Float) kVar.a(l4.D)).floatValue();
        } else if (i2 != 4) {
            return -1.0d;
        } else {
            floatValue = ((Float) kVar.a(l4.E)).floatValue();
        }
        return floatValue;
    }
}
