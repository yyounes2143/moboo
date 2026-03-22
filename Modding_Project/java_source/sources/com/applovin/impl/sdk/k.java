package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.a1;
import com.applovin.impl.a3;
import com.applovin.impl.b3;
import com.applovin.impl.e1;
import com.applovin.impl.e2;
import com.applovin.impl.e4;
import com.applovin.impl.f3;
import com.applovin.impl.f6;
import com.applovin.impl.g3;
import com.applovin.impl.h5;
import com.applovin.impl.j3;
import com.applovin.impl.k3;
import com.applovin.impl.k4;
import com.applovin.impl.l2;
import com.applovin.impl.l3;
import com.applovin.impl.l4;
import com.applovin.impl.m0;
import com.applovin.impl.m1;
import com.applovin.impl.m4;
import com.applovin.impl.m6;
import com.applovin.impl.mediation.MaxSegmentCollectionImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.n0;
import com.applovin.impl.n3;
import com.applovin.impl.n4;
import com.applovin.impl.o4;
import com.applovin.impl.p0;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.q5;
import com.applovin.impl.r2;
import com.applovin.impl.r5;
import com.applovin.impl.s6;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t7;
import com.applovin.impl.w3;
import com.applovin.impl.w4;
import com.applovin.impl.x6;
import com.applovin.impl.x7;
import com.applovin.impl.y1;
import com.applovin.impl.y6;
import com.applovin.impl.z0;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxSegmentCollection;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k {
    public static k C0;
    protected static Context D0;
    private static boolean E0;
    private static final boolean G0;
    private static volatile com.applovin.impl.c H0;

    /* renamed from: a  reason: collision with root package name */
    private String f3686a;
    private String b;
    private WeakReference c;
    private final long d;
    private long e;
    private long f;
    private Long g;
    private long h;
    private com.applovin.impl.mediation.e i0;
    private final AppLovinSdkSettings j;
    private MaxSegmentCollection k;
    private List k0;
    private String l;
    private boolean p0;
    private volatile AppLovinSdk q;
    private String u0;
    private AppLovinSdkInitializationConfiguration v0;
    private AppLovinSdk.SdkInitializationListener y0;
    private AppLovinSdk.SdkInitializationListener z0;
    private static final Object I0 = new Object();
    private static final long F0 = System.currentTimeMillis();
    private final AtomicBoolean i = new AtomicBoolean();
    private final AtomicReference m = new AtomicReference();
    private final AtomicReference n = new AtomicReference();
    private final AtomicReference o = new AtomicReference();
    private final AtomicReference p = new AtomicReference();
    private final o r = new o(this);
    private final com.applovin.impl.f s = new com.applovin.impl.f(this);
    private final r2 t = new r2(this);
    private final m1 u = new m1(this);
    private final x6 v = new x6(this);
    private final AtomicReference w = new AtomicReference();
    private final AtomicReference x = new AtomicReference();
    private final AtomicReference y = new AtomicReference();
    private final AtomicReference z = new AtomicReference();
    private final AtomicReference A = new AtomicReference();
    private final AtomicReference B = new AtomicReference();
    private final AtomicReference C = new AtomicReference();
    private final AtomicReference D = new AtomicReference();
    private final AtomicReference E = new AtomicReference();
    private final AtomicReference F = new AtomicReference();
    private final AtomicReference G = new AtomicReference();
    private final AtomicReference H = new AtomicReference();
    private final AtomicReference I = new AtomicReference();
    private final AtomicReference J = new AtomicReference();
    private final AtomicReference K = new AtomicReference();
    private final AtomicReference L = new AtomicReference();
    private final AtomicReference M = new AtomicReference();
    private final AtomicReference N = new AtomicReference();
    private final AtomicReference O = new AtomicReference();
    private final AtomicReference P = new AtomicReference();
    private final AtomicReference Q = new AtomicReference();
    private final AtomicReference R = new AtomicReference();
    private final AtomicReference S = new AtomicReference();
    private final AtomicReference T = new AtomicReference();
    private final AtomicReference U = new AtomicReference();
    private final AtomicReference V = new AtomicReference();
    private final AtomicReference W = new AtomicReference();
    private final AtomicReference X = new AtomicReference();
    private final AtomicReference Y = new AtomicReference();
    private final AtomicReference Z = new AtomicReference();
    private final AtomicReference a0 = new AtomicReference();
    private final AtomicReference b0 = new AtomicReference();
    private final AtomicReference c0 = new AtomicReference();
    private final AtomicReference d0 = new AtomicReference();
    private final AtomicReference e0 = new AtomicReference();
    private final AtomicReference f0 = new AtomicReference();
    private final AtomicReference g0 = new AtomicReference();
    private final AtomicReference h0 = new AtomicReference();
    private final AtomicReference j0 = new AtomicReference();
    private final Object l0 = new Object();
    private final AtomicBoolean m0 = new AtomicBoolean(true);
    private final AtomicBoolean n0 = new AtomicBoolean();
    private final AtomicBoolean o0 = new AtomicBoolean();
    private boolean q0 = false;
    private boolean r0 = false;
    private boolean s0 = false;
    private int t0 = 0;
    private final Object w0 = new Object();
    private SdkConfigurationImpl x0 = new SdkConfigurationImpl(this);
    private final w4 A0 = new f6(this, true, "scheduleAdLoadIntegrationError", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            k.this.K0();
        }
    });
    private final w4 B0 = new f6(this, true, "sdkInit", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            k.this.L0();
        }
    });

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements h5.b {
        public a() {
        }

        @Override // com.applovin.impl.h5.b
        public void a(JSONObject jSONObject) {
            boolean isValid = JsonUtils.isValid(jSONObject);
            k.this.c(jSONObject);
            if (((Boolean) k.this.a(g3.B7)).booleanValue()) {
                k kVar = k.this;
                kVar.i0 = new com.applovin.impl.mediation.e(kVar);
            }
            k.this.m().a();
            n0.a(jSONObject, isValid, k.this);
            Boolean bool = JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE);
            k.this.U().a(bool.booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
            k.this.E().b();
            k kVar2 = k.this;
            kVar2.k0 = kVar2.a(jSONObject);
            if (isValid) {
                k.this.x0.setEnabledAmazonAdUnitIds(CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", "")));
            }
            k.this.s0().a(jSONObject);
            k.this.b(jSONObject);
            l2.b(((Boolean) k.this.a(l4.R5)).booleanValue());
            l2.a(((Boolean) k.this.a(l4.S5)).booleanValue());
            k.this.Q0();
            if (!((Boolean) k.this.a(l4.V2)).booleanValue() || isValid || !n0.a(k.o())) {
                k.this.O0();
                return;
            }
            k.this.O();
            if (o.a()) {
                k.this.O().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
            }
            k.this.T0();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements p0.c {
        public b() {
        }

        @Override // com.applovin.impl.p0.c
        public void a(p0.b bVar) {
            k.this.O();
            if (o.a()) {
                o O = k.this.O();
                O.a("AppLovinSdk", "Terms and Privacy Policy flow completed with status: " + bVar);
            }
            k.this.o0.set(bVar.b());
            if (!bVar.a()) {
                k.this.c("Initializing SDK in MAX environment...");
                return;
            }
            k.this.O();
            if (o.a()) {
                k.this.O().a("AppLovinSdk", "Re-initializing SDK with the updated privacy settings...");
            }
            k.this.S0();
            k.this.R0();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements h5.b {
        public c() {
        }

        @Override // com.applovin.impl.h5.b
        public void a(JSONObject jSONObject) {
            k.this.c(jSONObject);
            k.this.i.set(false);
            k.this.O0();
        }
    }

    static {
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    z6.c();
                }
            });
            G0 = true;
        } catch (Throwable unused) {
            G0 = false;
        }
    }

    public k(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.p0 = false;
        C0 = this;
        this.j = appLovinSdkSettings;
        this.d = System.currentTimeMillis();
        this.p0 = true;
        if (F0()) {
            D0 = context.getApplicationContext();
            if (context instanceof Activity) {
                this.c = new WeakReference((Activity) context);
                return;
            }
            return;
        }
        throw new RuntimeException("As of version 12.0.0, the AppLovin MAX SDK requires Java 8. For more information visit our docs: https://developers.applovin.com/en/android/overview/integration");
    }

    private void A0() {
        Context context = D0;
        o O = O();
        o4 p0 = p0();
        p0 y = y();
        a(context);
        m0();
        j();
        p();
        c0();
        S().a(MaxAdapter.InitializationStatus.INITIALIZING);
        NativeCrashReporter.a(this);
        String str = this.f3686a;
        if (str == null || str.length() != 86) {
            o.h("AppLovinSdk", "SDK key provided is invalid (" + this.f3686a + "). Expected length: 86 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
        }
        if (StringUtils.isValidString(this.b) && this.b.length() != 36) {
            String str2 = "Axon event key length " + this.b + " is invalid - expected 36";
            if (!z6.c(this)) {
                o.h("AppLovinSdk", str2);
            } else {
                throw new IllegalArgumentException(str2);
            }
        }
        if (y.l()) {
            String str3 = "Terms Flow has been replaced. " + y.g();
            if (!z6.c(this)) {
                o.h("AppLovinSdk", str3);
            } else {
                throw new IllegalStateException(str3);
            }
        }
        if (z6.i()) {
            o.h("AppLovinSdk", "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build.");
        }
        if (!z6.b(this)) {
            o.h("AppLovinSdk", "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject.");
        }
        if (z6.k(context)) {
            this.j.setVerboseLogging(true);
        }
        o0().a(l4.k, Boolean.valueOf(this.j.isVerboseLoggingEnabled()));
        l3.d(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        n4 n4Var = n4.c;
        if (TextUtils.isEmpty((String) p0.a(n4Var, (Object) null, defaultSharedPreferences))) {
            this.r0 = true;
            p0.b(n4Var, Boolean.toString(true), defaultSharedPreferences);
        } else {
            p0.b(n4Var, Boolean.toString(false), defaultSharedPreferences);
        }
        n4 n4Var2 = n4.d;
        if (((Boolean) p0.a(n4Var2, Boolean.FALSE)).booleanValue()) {
            if (o.a()) {
                O.a("AppLovinSdk", "Initializing SDK for non-maiden launch");
            }
            this.s0 = true;
        } else {
            if (o.a()) {
                O.a("AppLovinSdk", "Initializing SDK for maiden launch");
            }
            p0.b(n4Var2, Boolean.TRUE);
            p0.b(n4.r, Boolean.valueOf(y.j()));
        }
        n4 n4Var3 = n4.e;
        this.f = ((Long) p0.a(n4Var3, 0L)).longValue() + 1;
        p0().b(n4Var3, Long.valueOf(this.f));
        n4 n4Var4 = n4.f;
        this.g = (Long) p0.a(n4Var4, null);
        p0().b(n4Var4, Long.valueOf(F0));
        n4 n4Var5 = n4.g;
        String str4 = (String) p0.a(n4Var5, null);
        if (StringUtils.isValidString(str4)) {
            if (AppLovinSdk.VERSION_CODE > z6.g(str4)) {
                p0.b(n4Var5, AppLovinSdk.VERSION);
            }
        } else {
            p0.b(n4Var5, AppLovinSdk.VERSION);
        }
        v0().d(y1.e, CollectionUtils.map("details", "isInitProviderContextSet=" + E0));
    }

    public static boolean F0() {
        return G0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0() {
        if (q0().d()) {
            return;
        }
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "Timing out adapters init...");
        }
        q0().e();
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J0() {
        r5 q0 = q0();
        int i = this.t0 + 1;
        this.t0 = i;
        q0.a((w4) new h5(i, this, new c()), r5.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K0() {
        if (G0()) {
            e2.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L0() {
        synchronized (this.l0) {
            try {
                boolean a2 = n0.a(o());
                if (!G0()) {
                    O();
                    if (o.a()) {
                        o O = O();
                        O.a("AppLovinSdk", "non-MAX mediation detected, mediation provider is: " + V());
                    }
                }
                if (!((Boolean) a(l4.W2)).booleanValue() || a2) {
                    S0();
                }
                if (((Boolean) a(l4.V2)).booleanValue() && !a2) {
                    O();
                    if (o.a()) {
                        O().d("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                    }
                    T0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private r N0() {
        if (e4.f(D0)) {
            try {
                return new r(this);
            } catch (Throwable th) {
                o.b("AppLovinSdk", "Failed to initialize Privacy Sandbox Service", th);
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        Long l = (Long) a(l4.e3);
        if (l.longValue() < 0 || !this.i.compareAndSet(false, true)) {
            return;
        }
        t7.a(l.longValue(), false, this, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                k.this.J0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        if (!G0()) {
            c("Initializing SDK in non-MAX environment...");
        } else if (!this.n0.compareAndSet(false, true)) {
            c("Consent flow is already shown. Initializing SDK in MAX environment...");
        } else if (!y().j()) {
            c("Consent flow is not enabled. Initializing SDK in MAX environment...");
        } else {
            y().a(u0(), new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        n3 c0 = c0();
        c0.a(new d(c0));
    }

    private Map W() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) a(l4.Y3)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    public static long n() {
        return F0;
    }

    public static Context o() {
        return D0;
    }

    public a1 A() {
        Object obj = this.V.get();
        if (obj == null) {
            synchronized (this.V) {
                try {
                    obj = this.V.get();
                    if (obj == null) {
                        obj = new a1(this);
                        this.V.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.V) {
            obj = null;
        }
        return (a1) obj;
    }

    public l B() {
        Object obj = this.A.get();
        if (obj == null) {
            synchronized (this.A) {
                try {
                    obj = this.A.get();
                    if (obj == null) {
                        obj = new l(this);
                        this.A.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.A) {
            obj = null;
        }
        return (l) obj;
    }

    public boolean B0() {
        boolean z;
        synchronized (this.l0) {
            z = this.q0;
        }
        return z;
    }

    public e1 C() {
        Object obj = this.E.get();
        if (obj == null) {
            synchronized (this.E) {
                try {
                    obj = this.E.get();
                    if (obj == null) {
                        obj = new e1(this);
                        this.E.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.E) {
            obj = null;
        }
        return (e1) obj;
    }

    public boolean C0() {
        return this.r0;
    }

    public String D() {
        return this.u0;
    }

    public boolean D0() {
        boolean z;
        synchronized (this.w0) {
            if (this.v0 != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public m1 E() {
        return this.u;
    }

    public boolean E0() {
        boolean z;
        synchronized (this.l0) {
            z = this.p0;
        }
        return z;
    }

    public String F() {
        return w0().d();
    }

    public EventServiceImpl G() {
        Object obj = this.o.get();
        if (obj == null) {
            synchronized (this.o) {
                try {
                    obj = this.o.get();
                    if (obj == null) {
                        obj = new EventServiceImpl(this);
                        this.o.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.o) {
            obj = null;
        }
        return (EventServiceImpl) obj;
    }

    public boolean G0() {
        return StringUtils.containsIgnoreCase(V(), AppLovinMediationProvider.MAX);
    }

    public m H() {
        Object obj = this.H.get();
        if (obj == null) {
            synchronized (this.H) {
                try {
                    obj = this.H.get();
                    if (obj == null) {
                        obj = new m(this);
                        this.H.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.H) {
            obj = null;
        }
        return (m) obj;
    }

    public boolean H0() {
        return z6.a("com.unity3d.player.UnityPlayerActivity");
    }

    public n I() {
        Object obj = this.J.get();
        if (obj == null) {
            synchronized (this.J) {
                try {
                    obj = this.J.get();
                    if (obj == null) {
                        obj = new n(this);
                        this.J.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.J) {
            obj = null;
        }
        return (n) obj;
    }

    public Activity J() {
        WeakReference weakReference;
        if (!((Boolean) a(l4.m4)).booleanValue() || (weakReference = this.c) == null) {
            return null;
        }
        return (Activity) weakReference.get();
    }

    public AppLovinSdkInitializationConfiguration K() {
        return this.v0;
    }

    public long L() {
        return this.d;
    }

    public Long M() {
        return this.g;
    }

    public void M0() {
        b(false);
    }

    public long N() {
        return this.f;
    }

    public o O() {
        return this.r;
    }

    public r2 P() {
        return this.t;
    }

    public void P0() {
        if (StringUtils.isValidString(this.l)) {
            return;
        }
        this.l = AppLovinMediationProvider.MAX;
    }

    public com.applovin.impl.mediation.d Q() {
        Object obj = this.h0.get();
        if (obj == null) {
            synchronized (this.h0) {
                try {
                    obj = this.h0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.d(this);
                        this.h0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.h0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.d) obj;
    }

    public com.applovin.impl.mediation.e R() {
        return this.i0;
    }

    public void R0() {
        u().a();
    }

    public com.applovin.impl.mediation.f S() {
        Object obj = this.c0.get();
        if (obj == null) {
            synchronized (this.c0) {
                try {
                    obj = this.c0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.f(this);
                        this.c0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.c0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.f) obj;
    }

    public void S0() {
        synchronized (this.l0) {
            this.p0 = true;
            q0().f();
            d();
        }
    }

    public com.applovin.impl.mediation.g T() {
        Object obj = this.b0.get();
        if (obj == null) {
            synchronized (this.b0) {
                try {
                    obj = this.b0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.mediation.g(this);
                        this.b0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.b0) {
            obj = null;
        }
        return (com.applovin.impl.mediation.g) obj;
    }

    public f3 U() {
        Object obj = this.f0.get();
        if (obj == null) {
            synchronized (this.f0) {
                try {
                    obj = this.f0.get();
                    if (obj == null) {
                        obj = new f3(this);
                        this.f0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.f0) {
            obj = null;
        }
        return (f3) obj;
    }

    public void U0() {
        o.h("AppLovinSdk", "Resetting SDK state...");
        o0().a();
        o0().e();
        if (this.m0.compareAndSet(true, false)) {
            S0();
        } else {
            this.m0.set(true);
        }
    }

    public String V() {
        return this.l;
    }

    public void V0() {
        if (!StringUtils.isValidString(this.u0)) {
            this.u0 = AppLovinMediationProvider.MAX;
            O();
            if (o.a()) {
                O().a("AppLovinSdk", "Detected mediation provider: MAX");
            }
        }
    }

    public void W0() {
        z().n();
    }

    public MediationServiceImpl X() {
        Object obj = this.d0.get();
        if (obj == null) {
            synchronized (this.d0) {
                try {
                    obj = this.d0.get();
                    if (obj == null) {
                        obj = new MediationServiceImpl(this);
                        this.d0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.d0) {
            obj = null;
        }
        return (MediationServiceImpl) obj;
    }

    public void X0() {
        a((Map) null);
    }

    public j3 Y() {
        Object obj = this.z.get();
        if (obj == null) {
            synchronized (this.z) {
                try {
                    obj = this.z.get();
                    if (obj == null) {
                        obj = new j3(this);
                        this.z.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.z) {
            obj = null;
        }
        return (j3) obj;
    }

    public void Y0() {
        if (AppLovinMediationProvider.ADMOB.equalsIgnoreCase(this.l) && ((Boolean) a(l4.C3)).booleanValue()) {
            String str = (String) a(l4.B3);
            if (!TextUtils.isEmpty(str)) {
                StringBuilder sb = new StringBuilder();
                String str2 = AppLovinSdk.VERSION;
                sb.append(str2);
                sb.append(".");
                if (str.startsWith(sb.toString())) {
                    return;
                }
                final String str3 = "Mismatched AdMob adapter (" + str + ") and AppLovin SDK (" + str2 + ") versions detected, which may cause compatibility issues.";
                o.h("AppLovinSdk", str3);
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.this.b(str3);
                    }
                });
            }
        }
    }

    public k3 Z() {
        Object obj = this.e0.get();
        if (obj == null) {
            synchronized (this.e0) {
                try {
                    obj = this.e0.get();
                    if (obj == null) {
                        obj = new k3();
                        this.e0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.e0) {
            obj = null;
        }
        return (k3) obj;
    }

    public p a0() {
        Object obj = this.g0.get();
        if (obj == null) {
            synchronized (this.g0) {
                try {
                    obj = this.g0.get();
                    if (obj == null) {
                        obj = new p(this);
                        this.g0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.g0) {
            obj = null;
        }
        return (p) obj;
    }

    public AppLovinNativeAdService b0() {
        Object obj = this.n.get();
        if (obj == null) {
            synchronized (this.n) {
                try {
                    obj = this.n.get();
                    if (obj == null) {
                        obj = new AppLovinNativeAdService(this);
                        this.n.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.n) {
            obj = null;
        }
        return (AppLovinNativeAdService) obj;
    }

    public n3 c0() {
        Object obj = this.M.get();
        if (obj == null) {
            synchronized (this.M) {
                try {
                    obj = this.M.get();
                    if (obj == null) {
                        obj = new n3(o());
                        this.M.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.M) {
            obj = null;
        }
        return (n3) obj;
    }

    public w3 d0() {
        Object obj = this.T.get();
        if (obj == null) {
            synchronized (this.T) {
                try {
                    obj = this.T.get();
                    if (obj == null) {
                        obj = new w3(this);
                        this.T.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.T) {
            obj = null;
        }
        return (w3) obj;
    }

    public com.applovin.impl.sdk.network.b e0() {
        Object obj = this.Z.get();
        if (obj == null) {
            synchronized (this.Z) {
                try {
                    obj = this.Z.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.network.b(this);
                        this.Z.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Z) {
            obj = null;
        }
        return (com.applovin.impl.sdk.network.b) obj;
    }

    public PostbackServiceImpl f0() {
        Object obj = this.Y.get();
        if (obj == null) {
            synchronized (this.Y) {
                try {
                    obj = this.Y.get();
                    if (obj == null) {
                        obj = new PostbackServiceImpl(this);
                        this.Y.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Y) {
            obj = null;
        }
        return (PostbackServiceImpl) obj;
    }

    public r g0() {
        Object obj = this.B.get();
        if (obj == null) {
            synchronized (this.B) {
                try {
                    obj = this.B.get();
                    if (obj == null) {
                        obj = N0();
                        if (obj == null) {
                            obj = this.B;
                        }
                        this.B.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.B) {
            obj = null;
        }
        return (r) obj;
    }

    public String h0() {
        return w0().a();
    }

    public e i() {
        Object obj = this.F.get();
        if (obj == null) {
            synchronized (this.F) {
                try {
                    obj = this.F.get();
                    if (obj == null) {
                        obj = new e(this);
                        this.F.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.F) {
            obj = null;
        }
        return (e) obj;
    }

    public String i0() {
        return this.f3686a;
    }

    public com.applovin.impl.i j() {
        Object obj = this.a0.get();
        if (obj == null) {
            synchronized (this.a0) {
                try {
                    obj = this.a0.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.i(this);
                        this.a0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.a0) {
            obj = null;
        }
        return (com.applovin.impl.i) obj;
    }

    public MaxSegmentCollectionImpl j0() {
        return (MaxSegmentCollectionImpl) this.k;
    }

    public AppLovinAdServiceImpl k() {
        Object obj = this.m.get();
        if (obj == null) {
            synchronized (this.m) {
                try {
                    obj = this.m.get();
                    if (obj == null) {
                        obj = new AppLovinAdServiceImpl(this);
                        this.m.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.m) {
            obj = null;
        }
        return (AppLovinAdServiceImpl) obj;
    }

    public Map k0() {
        MaxSegmentCollectionImpl j0 = j0();
        if (j0 == null) {
            return null;
        }
        return j0.getJsonData();
    }

    public g l() {
        Object obj = this.K.get();
        if (obj == null) {
            synchronized (this.K) {
                try {
                    obj = this.K.get();
                    if (obj == null) {
                        obj = new g(this);
                        this.K.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.K) {
            obj = null;
        }
        return (g) obj;
    }

    public k4 l0() {
        Object obj = this.O.get();
        if (obj == null) {
            synchronized (this.O) {
                try {
                    obj = this.O.get();
                    if (obj == null) {
                        obj = new k4(this);
                        this.O.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.O) {
            obj = null;
        }
        return (k4) obj;
    }

    public h m() {
        Object obj = this.X.get();
        if (obj == null) {
            synchronized (this.X) {
                try {
                    obj = this.X.get();
                    if (obj == null) {
                        obj = new h(this);
                        this.X.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.X) {
            obj = null;
        }
        return (h) obj;
    }

    public SessionTracker m0() {
        Object obj = this.I.get();
        if (obj == null) {
            synchronized (this.I) {
                try {
                    obj = this.I.get();
                    if (obj == null) {
                        obj = new SessionTracker(this);
                        this.I.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.I) {
            obj = null;
        }
        return (SessionTracker) obj;
    }

    public AppLovinSdkSettings n0() {
        return this.j;
    }

    public m4 o0() {
        Object obj = this.x.get();
        if (obj == null) {
            synchronized (this.x) {
                try {
                    obj = this.x.get();
                    if (obj == null) {
                        obj = new m4(this);
                        this.x.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.x) {
            obj = null;
        }
        return (m4) obj;
    }

    public ArrayService p() {
        Object obj = this.U.get();
        if (obj == null) {
            synchronized (this.U) {
                try {
                    obj = this.U.get();
                    if (obj == null) {
                        obj = new ArrayService(this);
                        this.U.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.U) {
            obj = null;
        }
        return (ArrayService) obj;
    }

    public o4 p0() {
        Object obj = this.C.get();
        if (obj == null) {
            synchronized (this.C) {
                try {
                    obj = this.C.get();
                    if (obj == null) {
                        obj = new o4(this);
                        this.C.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.C) {
            obj = null;
        }
        return (o4) obj;
    }

    public i q() {
        Object obj = this.P.get();
        if (obj == null) {
            synchronized (this.P) {
                try {
                    obj = this.P.get();
                    if (obj == null) {
                        obj = new i(this);
                        this.P.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.P) {
            obj = null;
        }
        return (i) obj;
    }

    public r5 q0() {
        Object obj = this.w.get();
        if (obj == null) {
            synchronized (this.w) {
                try {
                    obj = this.w.get();
                    if (obj == null) {
                        obj = new r5(this);
                        this.w.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.w) {
            obj = null;
        }
        return (r5) obj;
    }

    public String r() {
        return this.b;
    }

    public m6 r0() {
        Object obj = this.R.get();
        if (obj == null) {
            synchronized (this.R) {
                try {
                    obj = this.R.get();
                    if (obj == null) {
                        obj = new m6(this);
                        this.R.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.R) {
            obj = null;
        }
        return (m6) obj;
    }

    public String s() {
        return w0().b();
    }

    public s6 s0() {
        Object obj = this.j0.get();
        if (obj == null) {
            synchronized (this.j0) {
                try {
                    obj = this.j0.get();
                    if (obj == null) {
                        obj = new s6(this);
                        this.j0.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.j0) {
            obj = null;
        }
        return (s6) obj;
    }

    public CmpServiceImpl t() {
        Object obj = this.p.get();
        if (obj == null) {
            synchronized (this.p) {
                try {
                    obj = this.p.get();
                    if (obj == null) {
                        obj = new CmpServiceImpl(this);
                        this.p.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.p) {
            obj = null;
        }
        return (CmpServiceImpl) obj;
    }

    public long t0() {
        if (this.h == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - this.h;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.f3686a + "', enabled=" + this.q0 + ", isFirstSession=" + this.r0 + AbstractJsonLexerKt.END_OBJ;
    }

    public j u() {
        Object obj = this.N.get();
        if (obj == null) {
            synchronized (this.N) {
                try {
                    obj = this.N.get();
                    if (obj == null) {
                        obj = new j(this);
                        this.N.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.N) {
            obj = null;
        }
        return (j) obj;
    }

    public Activity u0() {
        Activity b2 = a(o()).b();
        if (b2 != null) {
            return b2;
        }
        return J();
    }

    public String v() {
        return w0().c();
    }

    public x6 v0() {
        return this.v;
    }

    public SdkConfigurationImpl w() {
        return this.x0;
    }

    public y6 w0() {
        Object obj = this.D.get();
        if (obj == null) {
            synchronized (this.D) {
                try {
                    obj = this.D.get();
                    if (obj == null) {
                        obj = new y6(this);
                        this.D.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.D) {
            obj = null;
        }
        return (y6) obj;
    }

    public m0 x() {
        Object obj = this.y.get();
        if (obj == null) {
            synchronized (this.y) {
                try {
                    obj = this.y.get();
                    if (obj == null) {
                        obj = new m0(this);
                        this.y.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.y) {
            obj = null;
        }
        return (m0) obj;
    }

    public x7 x0() {
        Object obj = this.L.get();
        if (obj == null) {
            synchronized (this.L) {
                try {
                    obj = this.L.get();
                    if (obj == null) {
                        obj = new x7(this);
                        this.L.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.L) {
            obj = null;
        }
        return (x7) obj;
    }

    public p0 y() {
        Object obj = this.Q.get();
        if (obj == null) {
            synchronized (this.Q) {
                try {
                    obj = this.Q.get();
                    if (obj == null) {
                        obj = new p0(this);
                        this.Q.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.Q) {
            obj = null;
        }
        return (p0) obj;
    }

    public AppLovinSdk y0() {
        return this.q;
    }

    public z0 z() {
        Object obj = this.S.get();
        if (obj == null) {
            synchronized (this.S) {
                try {
                    obj = this.S.get();
                    if (obj == null) {
                        obj = new z0(this);
                        this.S.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.S) {
            obj = null;
        }
        return (z0) obj;
    }

    public boolean z0() {
        return this.s0;
    }

    private void d() {
        r5 q0 = q0();
        int i = this.t0 + 1;
        this.t0 = i;
        q0.a((w4) new h5(i, this, new a()), r5.b.CORE);
    }

    public com.applovin.impl.c e() {
        return a(D0);
    }

    public com.applovin.impl.sdk.a f() {
        Object obj = this.G.get();
        if (obj == null) {
            synchronized (this.G) {
                try {
                    obj = this.G.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.a(this);
                        this.G.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.G) {
            obj = null;
        }
        return (com.applovin.impl.sdk.a) obj;
    }

    public com.applovin.impl.f g() {
        return this.s;
    }

    public com.applovin.impl.sdk.d h() {
        Object obj = this.W.get();
        if (obj == null) {
            synchronized (this.W) {
                try {
                    obj = this.W.get();
                    if (obj == null) {
                        obj = new com.applovin.impl.sdk.d(this);
                        this.W.set(obj);
                    }
                } finally {
                }
            }
        }
        if (obj == this.W) {
            obj = null;
        }
        return (com.applovin.impl.sdk.d) obj;
    }

    public static void b(Context context) {
        if (context == null) {
            return;
        }
        D0 = context.getApplicationContext();
        E0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONObject jSONObject) {
        if (JsonUtils.isValid(jSONObject)) {
            this.h = System.currentTimeMillis();
            n0.c(jSONObject, this);
            n0.b(jSONObject, this);
            n0.a(jSONObject, this);
            b3.f(jSONObject, this);
            b3.d(jSONObject, this);
            b3.e(jSONObject, this);
            b3.g(jSONObject, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration) {
        A0();
        this.j.attachAppLovinSdk(this);
        String pluginVersion = appLovinSdkInitializationConfiguration.getPluginVersion();
        if (pluginVersion != null) {
            o.g("AppLovinSdk", "Setting plugin version: " + pluginVersion);
            o0().a(l4.B3, pluginVersion);
        }
        if (appLovinSdkInitializationConfiguration.isExceptionHandlerEnabled() && ((Boolean) a(l4.s)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        r5 q0 = q0();
        w4 w4Var = this.A0;
        r5.b bVar = r5.b.CORE;
        q0.a(w4Var, bVar);
        q0().a(this.B0, bVar);
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.q = appLovinSdk;
    }

    public static String a(String str) {
        return a(str, (List) null);
    }

    public static String a(int i) {
        return a(i, (List) null);
    }

    public static String a(String str, List list) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Context o = o();
        return a(o.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, o.getPackageName()), list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        O();
        if (o.a()) {
            O().a("AppLovinSdk", str);
        }
        q0().a(new q5(this));
    }

    public static String a(int i, List list) {
        String string = o().getResources().getString(i);
        return list != null ? String.format(string, list.toArray()) : string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        for (String str : JsonUtils.getList(jSONObject, "error_messages", Collections.EMPTY_LIST)) {
            o.h("AppLovinSdk", str);
        }
    }

    public void c() {
        synchronized (this.l0) {
            try {
                if (!this.p0 && !this.q0) {
                    S0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static com.applovin.impl.c a(Context context) {
        if (H0 == null) {
            synchronized (I0) {
                try {
                    if (H0 == null) {
                        H0 = new com.applovin.impl.c(context);
                    }
                } finally {
                }
            }
        }
        return H0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        if (!z6.c(this)) {
            HashMap hashMap = new HashMap();
            hashMap.put("details", AppLovinMediationProvider.ADMOB);
            hashMap.put("error_message", str);
            E().a(y1.u0, "adapterVersionMismatch", hashMap);
            return;
        }
        throw new IllegalStateException(str);
    }

    public List c(l4 l4Var) {
        return o0().c(l4Var);
    }

    public void c(n4 n4Var) {
        p0().b(n4Var);
    }

    public void a(final AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration, final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        synchronized (this.w0) {
            try {
                if (this.v0 != null) {
                    o.h("AppLovinSdk", "AppLovin SDK already initialized with configuration: " + this.v0 + ". Ignoring the provided initialization configuration.");
                    if (!B0() || sdkInitializationListener == null) {
                        return;
                    }
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            k.this.a(sdkInitializationListener);
                        }
                    });
                    return;
                }
                this.e = System.currentTimeMillis();
                this.v0 = appLovinSdkInitializationConfiguration;
                this.y0 = sdkInitializationListener;
                this.f3686a = appLovinSdkInitializationConfiguration.getSdkKey();
                this.b = appLovinSdkInitializationConfiguration.getAxonEventKey();
                this.l = appLovinSdkInitializationConfiguration.getMediationProvider();
                this.k = appLovinSdkInitializationConfiguration.getSegmentCollection();
                z6.a(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.this.a(appLovinSdkInitializationConfiguration);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements n3.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n3 f3690a;

        public d(n3 n3Var) {
            this.f3690a = n3Var;
        }

        @Override // com.applovin.impl.n3.a
        public void a() {
            k.this.O();
            if (o.a()) {
                k.this.O().d("AppLovinSdk", "Connected to internet - re-initializing SDK");
            }
            synchronized (k.this.l0) {
                try {
                    if (!k.this.p0) {
                        k.this.S0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f3690a.b(this);
        }

        @Override // com.applovin.impl.n3.a
        public void b() {
        }
    }

    public void b(boolean z) {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener;
        if (y().i() || (sdkInitializationListener = this.y0) == null) {
            return;
        }
        if (B0()) {
            this.y0 = null;
            this.z0 = null;
            S().a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
        } else if (this.z0 == sdkInitializationListener) {
            return;
        } else {
            S().a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
            if (((Boolean) a(l4.p)).booleanValue()) {
                this.y0 = null;
            } else {
                this.z0 = sdkInitializationListener;
            }
        }
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putBoolean(jSONObject, "enabled", B0());
        JsonUtils.putBoolean(jSONObject, "timeout", z);
        JsonUtils.putBoolean(jSONObject, "consent_flow_shown", this.o0.get());
        HashMap hashMap = new HashMap();
        hashMap.put("duration_ms", String.valueOf(System.currentTimeMillis() - this.e));
        hashMap.put("details", jSONObject.toString());
        this.v.d(y1.i, hashMap);
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                k.this.b(sdkInitializationListener);
            }
        }, Math.max(0L, ((Long) a(l4.q)).longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.x0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a(JSONObject jSONObject) {
        List<String> asList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(asList.size());
        for (String str : asList) {
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(str);
            if (formatFromString != null) {
                arrayList.add(formatFromString);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "Calling back publisher's initialization completion handler...");
        }
        sdkInitializationListener.onSdkInitialized(this.x0);
    }

    public void a(boolean z) {
        synchronized (this.l0) {
            this.p0 = false;
            this.q0 = z;
        }
        if (z) {
            List a2 = l3.a(this);
            if (a2.isEmpty()) {
                q0().e();
                M0();
                return;
            }
            Long l = (Long) a(g3.K6);
            f6 f6Var = new f6(this, true, "timeoutInitAdapters", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    k.this.I0();
                }
            });
            O();
            if (o.a()) {
                o O = O();
                O.a("AppLovinSdk", "Waiting for required adapters to init: " + a2 + " - timing out in " + l + "ms...");
            }
            q0().a(f6Var, r5.b.TIMEOUT, l.longValue(), true);
        }
    }

    public List b(l4 l4Var) {
        return o0().b(l4Var);
    }

    public void b(n4 n4Var, Object obj) {
        p0().b(n4Var, obj);
    }

    public Object b(n4 n4Var) {
        return p0().a(n4Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
        r12 = r4.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        if (r12.hasNext() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007b, code lost:
        r13 = (java.util.Map.Entry) r12.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008b, code lost:
        if (r11.startsWith((java.lang.String) r13.getKey()) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008d, code lost:
        r15.u0 = (java.lang.String) r13.getValue();
        O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
        if (com.applovin.impl.sdk.o.a() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009e, code lost:
        r4 = O();
        r4.a("AppLovinSdk", "Detected mediation provider: " + r15.u0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bd, code lost:
        if (r6.booleanValue() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
        r2.add(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
        r8 = java.lang.Integer.valueOf(r8.intValue() - 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.k.b():java.lang.String");
    }

    public void a(a3 a3Var) {
        if (q0().d()) {
            return;
        }
        List a2 = l3.a(this);
        if (a2.size() <= 0 || !S().a().containsAll(a2)) {
            return;
        }
        O();
        if (o.a()) {
            O().a("AppLovinSdk", "All required adapters initialized");
        }
        q0().e();
        M0();
    }

    public boolean a(MaxAdFormat maxAdFormat) {
        List list = this.k0;
        return (list == null || list.size() <= 0 || this.k0.contains(maxAdFormat)) ? false : true;
    }

    public void a() {
        String str = (String) p0().a(n4.g, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < z6.g(str)) {
                o.h("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public Object a(l4 l4Var) {
        return o0().a(l4Var);
    }

    public boolean a(l4 l4Var, MaxAdFormat maxAdFormat) {
        return b(l4Var).contains(maxAdFormat);
    }

    public void a(Map map) {
        U().a(map);
    }

    public void a(Uri uri) {
        C().a(uri);
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        p0().a(str, obj, editor);
    }

    public Object a(n4 n4Var) {
        return a(n4Var, (Object) null);
    }

    public Object a(n4 n4Var, Object obj) {
        return p0().a(n4Var, obj);
    }

    public Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return o4.a(str, obj, cls, sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        p0().a(sharedPreferences);
    }
}
