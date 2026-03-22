package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.a2;
import com.applovin.impl.a3;
import com.applovin.impl.b6;
import com.applovin.impl.g3;
import com.applovin.impl.g4;
import com.applovin.impl.h3;
import com.applovin.impl.h6;
import com.applovin.impl.i3;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.p4;
import com.applovin.impl.p5;
import com.applovin.impl.q2;
import com.applovin.impl.q4;
import com.applovin.impl.r4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.g;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t2;
import com.applovin.impl.w4;
import com.applovin.impl.w5;
import com.applovin.impl.y1;
import com.applovin.impl.y2;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.mintegral.MintegralConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f3241a;
    private final o b;
    private final p4 c;
    private final AtomicReference d = new AtomicReference();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3242a;

        static {
            int[] iArr = new int[MaxAdapter.InitializationStatus.values().length];
            f3242a = iArr;
            try {
                iArr[MaxAdapter.InitializationStatus.DOES_NOT_APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3242a[MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3242a[MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3242a[MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3242a[MaxAdapter.InitializationStatus.NOT_INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3242a[MaxAdapter.InitializationStatus.INITIALIZING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements MaxAdListener, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, a.InterfaceC0016a {

        /* renamed from: a  reason: collision with root package name */
        private final q2 f3243a;
        private a.InterfaceC0016a b;

        public b(q2 q2Var, a.InterfaceC0016a interfaceC0016a) {
            this.f3243a = q2Var;
            this.b = interfaceC0016a;
        }

        public void a(a.InterfaceC0016a interfaceC0016a) {
            this.b = interfaceC0016a;
        }

        public void b(MaxAd maxAd, Bundle bundle) {
            this.f3243a.a(bundle);
            l2.b(this.b, maxAd);
        }

        public void c(MaxAd maxAd, Bundle bundle) {
            this.f3243a.a(bundle);
            o unused = MediationServiceImpl.this.b;
            if (o.a()) {
                MediationServiceImpl.this.b.a("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.f3243a, this.b);
            if (((Boolean) MediationServiceImpl.this.f3241a.a(g3.O7)).booleanValue() && !this.f3243a.u().compareAndSet(false, true)) {
                return;
            }
            MediationServiceImpl.this.f3241a.l().a(this.f3243a, g.c.SHOW);
            MediationServiceImpl.this.f3241a.u().b(this.f3243a, "DID_DISPLAY");
            MediationServiceImpl.this.f3241a.p().maybeSendAdEvent(this.f3243a, "DID_DISPLAY");
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.f3241a.I().a(this.f3243a);
            }
            l2.c(this.b, maxAd);
        }

        public void d(MaxAd maxAd, Bundle bundle) {
            this.f3243a.a(bundle);
            l2.d(this.b, maxAd);
        }

        public void e(final MaxAd maxAd, Bundle bundle) {
            long j;
            this.f3243a.a(bundle);
            MediationServiceImpl.this.f3241a.l().a(this.f3243a, g.c.HIDE);
            MediationServiceImpl.this.a(this.f3243a);
            if (maxAd instanceof t2) {
                j = ((t2) maxAd).e0();
            } else {
                j = 0;
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.b.this.a(maxAd);
                }
            }, j);
        }

        public void f(MaxAd maxAd, Bundle bundle) {
            this.f3243a.a(bundle);
            this.f3243a.X();
            MediationServiceImpl.this.f3241a.l().a(this.f3243a, g.c.LOAD);
            MediationServiceImpl.this.b(this.f3243a);
            l2.f(this.b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            a(maxAd, maxError, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            e(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.f3243a.X();
            MediationServiceImpl.this.b(this.f3243a, maxError, this.b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            f(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            a(maxAd, maxReward, (Bundle) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.f3241a.I().b(maxAd);
            }
            l2.e(this.b, maxAd);
        }

        public void a(MaxAd maxAd, Bundle bundle) {
            this.f3243a.a(bundle);
            MediationServiceImpl.this.f3241a.l().a(this.f3243a, g.c.CLICK);
            MediationServiceImpl.this.a(this.f3243a, this.b);
            l2.a((MaxAdListener) this.b, maxAd);
        }

        public void a(MaxAd maxAd, MaxError maxError, Bundle bundle) {
            this.f3243a.a(bundle);
            MediationServiceImpl.this.a(this.f3243a, maxError, this.b);
            if (maxAd.getFormat() == MaxAdFormat.REWARDED && (maxAd instanceof t2)) {
                ((t2) maxAd).c0();
            }
        }

        public void a(MaxAd maxAd, MaxReward maxReward, Bundle bundle) {
            this.f3243a.a(bundle);
            l2.a(this.b, maxAd, maxReward);
            MediationServiceImpl.this.f3241a.q0().a((w4) new b6((t2) maxAd, MediationServiceImpl.this.f3241a), r5.b.OTHER);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }
    }

    public MediationServiceImpl(k kVar) {
        this.f3241a = kVar;
        this.b = kVar.O();
        this.c = new p4(kVar);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    public void collectSignal(final String str, final MaxAdFormat maxAdFormat, final r4 r4Var, Context context, final q4.a aVar) {
        Activity u0;
        if (r4Var != null) {
            if (context != null) {
                if (aVar != null) {
                    q4 b2 = this.c.b(r4Var, str, maxAdFormat);
                    if (b2 != null) {
                        aVar.a(q4.a(b2));
                        return;
                    }
                    final h a2 = this.f3241a.T().a(r4Var, r4Var.z());
                    if (a2 != null) {
                        final g4 g4Var = new g4("SignalCollection:" + r4Var.c());
                        final long elapsedRealtime = SystemClock.elapsedRealtime();
                        Executor executor = g4.i;
                        g4Var.a(executor, new g4.b() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // com.applovin.impl.g4.b
                            public final void a(boolean z, Object obj, Object obj2) {
                                MediationServiceImpl.this.a(elapsedRealtime, a2, str, r4Var, maxAdFormat, aVar, z, (String) obj, (MaxError) obj2);
                            }
                        });
                        long m = r4Var.m();
                        w5.a(m, g4Var, new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + r4Var.c() + ") timed out collecting signal"), "MediationService", this.f3241a);
                        if (context instanceof Activity) {
                            u0 = (Activity) context;
                        } else {
                            u0 = this.f3241a.u0();
                        }
                        final MaxAdapterParametersImpl a3 = MaxAdapterParametersImpl.a(r4Var, str, maxAdFormat);
                        if (r4Var.v()) {
                            g4 a4 = this.f3241a.S().a(r4Var, u0);
                            final Activity activity = u0;
                            a4.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediationServiceImpl.this.a(g4Var, a2, a3, r4Var, activity);
                                }
                            });
                            a4.a(executor, new g4.a() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // com.applovin.impl.g4.a
                                public final void a(Object obj) {
                                    MediationServiceImpl.this.a(a2, g4Var, (String) obj);
                                }
                            });
                            return;
                        }
                        if (r4Var.w()) {
                            g4 a5 = this.f3241a.S().a(r4Var, u0);
                            if (a5.d() && !r4Var.y()) {
                                if (o.a()) {
                                    o oVar = this.b;
                                    oVar.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + a2.g());
                                }
                                g4Var.a(new MaxErrorImpl("Could not initialize adapter: " + ((String) a5.a())));
                                return;
                            }
                        }
                        if (o.a()) {
                            o oVar2 = this.b;
                            oVar2.a("MediationService", "Collecting signal for adapter: " + a2.g());
                        }
                        a2.a(a3, r4Var, u0, g4Var);
                        return;
                    }
                    aVar.a(q4.a(r4Var, new MaxErrorImpl("Could not load adapter")));
                    return;
                }
                throw new IllegalArgumentException("No callback specified");
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public void destroyAd(MaxAd maxAd) {
        if (!(maxAd instanceof q2)) {
            return;
        }
        if (o.a()) {
            o oVar = this.b;
            oVar.d("MediationService", "Destroying " + maxAd);
        }
        q2 q2Var = (q2) maxAd;
        h A = q2Var.A();
        if (A != null) {
            A.a();
            q2Var.t();
        }
        this.f3241a.j().c(q2Var.O());
        this.f3241a.l().a(q2Var, g.c.DESTROY);
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return (JSONObject) this.d.getAndSet(null);
    }

    public void loadAd(String str, @Nullable String str2, MaxAdFormat maxAdFormat, com.applovin.impl.h hVar, Map<String, Object> map, Map<String, Object> map2, Context context, a.InterfaceC0016a interfaceC0016a) {
        List<String> list;
        if (!TextUtils.isEmpty(str)) {
            if (context != null) {
                if (interfaceC0016a != null) {
                    if (TextUtils.isEmpty(this.f3241a.V())) {
                        o.h("AppLovinSdk", "Mediation provider is null. Please set the mediation provider in the AppLovinSdkInitializationConfiguration.Builder when initializing the AppLovinSDK.");
                    }
                    if (!this.f3241a.B0()) {
                        o.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
                    }
                    if (this.f3241a.K() != null) {
                        list = this.f3241a.K().getAdUnitIds();
                    } else {
                        list = null;
                    }
                    boolean startsWith = str.startsWith("test_mode");
                    if (list != null && list.size() > 0 && !list.contains(str) && !startsWith) {
                        if (z6.c(this.f3241a)) {
                            String str3 = "Ad Unit ID " + str + " has not been initialized. When you use selective init, any ad units that you do not explicitly specify are excluded from serving ads for the current session. For more information visit our docs: https://developers.applovin.com/en/max/android/overview/advanced-settings#selective-init";
                            if (!((Boolean) this.f3241a.a(l4.W5)).booleanValue()) {
                                if (o.a()) {
                                    this.b.b("MediationService", str3);
                                }
                            } else {
                                throw new RuntimeException(str3);
                            }
                        }
                        this.f3241a.E().a(y1.u0, "uninitialized_ad_unit_id", CollectionUtils.hashMap(MintegralConstants.AD_UNIT_ID, str), "uninitialized_ad_unit_id" + str);
                    }
                    this.f3241a.c();
                    if (str.length() != 16 && !startsWith && !this.f3241a.i0().startsWith("05TMD")) {
                        o.h("MediationService", "Ad unit ID provided for " + maxAdFormat.getLabel() + " is invalid (" + str + "). Expected length: 16 characters.\n\nStack trace:\n" + Log.getStackTraceString(new Throwable()));
                    }
                    if (this.f3241a.a(maxAdFormat)) {
                        o.h("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
                        l2.a(interfaceC0016a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
                        return;
                    }
                    this.f3241a.V0();
                    l2.a((MaxAdRequestListener) interfaceC0016a, str, true);
                    if (this.f3241a.R() != null) {
                        this.f3241a.R().a(str, str2, maxAdFormat, hVar, map, map2, context, interfaceC0016a);
                        return;
                    } else {
                        this.f3241a.Q().a(str, str2, maxAdFormat, hVar, map, map2, context, interfaceC0016a);
                        return;
                    }
                }
                throw new IllegalArgumentException("No listener specified");
            }
            throw new IllegalArgumentException("No context specified");
        }
        throw new IllegalArgumentException("No Ad Unit ID specified");
    }

    public void loadThirdPartyMediatedAd(final String str, final q2 q2Var, final Activity activity, final a.InterfaceC0016a interfaceC0016a) {
        g4 g4Var;
        if (q2Var != null) {
            if (o.a()) {
                this.b.a("MediationService", "Loading " + q2Var + "...");
            }
            this.f3241a.P().a(y1.T, q2Var);
            this.f3241a.l().a(q2Var, g.c.LOADING);
            this.f3241a.u().b(q2Var, "WILL_LOAD");
            this.f3241a.p().maybeSendAdEvent(q2Var, "WILL_LOAD");
            final h a2 = this.f3241a.T().a(q2Var);
            if (a2 != null) {
                final MaxAdapterParametersImpl a3 = MaxAdapterParametersImpl.a(q2Var);
                if (q2Var.V()) {
                    g4Var = this.f3241a.S().a(q2Var, activity);
                } else {
                    if (q2Var.W()) {
                        this.f3241a.S().a(q2Var, activity);
                    }
                    g4Var = null;
                }
                final q2 a4 = q2Var.a(a2);
                a2.a(str, a4);
                a4.Y();
                if (g4Var != null) {
                    Executor executor = g4.i;
                    g4Var.a(executor, new g4.a() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // com.applovin.impl.g4.a
                        public final void a(Object obj) {
                            MediationServiceImpl.this.a(q2Var, interfaceC0016a, (String) obj);
                        }
                    });
                    g4Var.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediationServiceImpl.this.a(a2, str, a3, a4, activity, interfaceC0016a);
                        }
                    });
                    return;
                }
                a2.a(str, a3, a4, activity, new b(a4, interfaceC0016a));
                return;
            }
            String str2 = "Failed to load " + q2Var + ": adapter not loaded";
            o.h("MediationService", str2);
            b(q2Var, new MaxErrorImpl(-5001, str2), interfaceC0016a);
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object a2 = this.f3241a.I().a();
            if (a2 instanceof q2) {
                a((MaxError) MaxAdapterError.WEBVIEW_ERROR, (q2) a2, true);
            }
        }
    }

    public void processAdDisplayErrorPostbackForUserError(MaxError maxError, q2 q2Var) {
        a(maxError, q2Var, false);
    }

    public void processAdapterInitializationPostback(a3 a3Var, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        hashMap.put("{INIT_TIME_MS}", String.valueOf(j));
        a("minit", hashMap, new MaxErrorImpl(str), a3Var);
        Map a2 = a2.a(a3Var);
        CollectionUtils.putStringIfValid("adapter_init_status", String.valueOf(initializationStatus.getCode()), a2);
        CollectionUtils.putStringIfValid("error_message", str, a2);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j), a2);
        switch (a.f3242a[initializationStatus.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f3241a.P().d(y1.M, a2);
                return;
            case 4:
                this.f3241a.P().d(y1.N, a2);
                return;
            case 5:
            case 6:
                this.f3241a.O();
                if (o.a()) {
                    this.f3241a.O().k("MediationService", "Adapter init postback called while the adapter is not fully initialized.");
                }
                this.f3241a.E().a(y1.d, "adapterNotInitializedForPostback", a2);
                return;
            default:
                return;
        }
    }

    public void processCallbackAdImpressionPostback(q2 q2Var, a.InterfaceC0016a interfaceC0016a) {
        if (q2Var.M().endsWith("cimp")) {
            this.f3241a.u().b(q2Var);
            l2.a((MaxAdRevenueListener) interfaceC0016a, (MaxAd) q2Var);
        }
        HashMap hashMap = new HashMap(1);
        String emptyIfNull = StringUtils.emptyIfNull(this.f3241a.w0().e());
        if (!((Boolean) this.f3241a.a(l4.x3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mcimp", hashMap, q2Var);
        this.f3241a.P().a(y1.Y, q2Var);
    }

    public void processRawAdImpression(q2 q2Var, a.InterfaceC0016a interfaceC0016a) {
        this.f3241a.u().b(q2Var, "WILL_DISPLAY");
        this.f3241a.p().maybeSendAdEvent(q2Var, "WILL_DISPLAY");
        if (q2Var.M().endsWith("mimp")) {
            this.f3241a.u().b(q2Var);
            l2.a((MaxAdRevenueListener) interfaceC0016a, (MaxAd) q2Var);
        }
        if (((Boolean) this.f3241a.a(l4.n4)).booleanValue()) {
            this.f3241a.Y().a(h3.d, i3.a(q2Var), Long.valueOf(System.currentTimeMillis() - this.f3241a.L()));
        }
        HashMap hashMap = new HashMap(2);
        if (q2Var instanceof t2) {
            hashMap.put("{TIME_TO_SHOW_MS}", String.valueOf(((t2) q2Var).i0()));
        }
        String emptyIfNull = StringUtils.emptyIfNull(this.f3241a.w0().e());
        if (!((Boolean) this.f3241a.a(l4.x3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mimp", hashMap, q2Var);
        this.f3241a.P().a(y1.X, q2Var);
    }

    public void processViewabilityAdImpressionPostback(y2 y2Var, long j, a.InterfaceC0016a interfaceC0016a) {
        if (y2Var.M().endsWith("vimp")) {
            this.f3241a.u().b(y2Var);
            l2.a((MaxAdRevenueListener) interfaceC0016a, (MaxAd) y2Var);
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        hashMap.put("{USED_VIEWABILITY_TIMER}", String.valueOf(y2Var.j0()));
        String emptyIfNull = StringUtils.emptyIfNull(this.f3241a.w0().e());
        if (!((Boolean) this.f3241a.a(l4.x3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mvimp", hashMap, y2Var);
        this.f3241a.P().a(y1.Z, y2Var);
    }

    public void processWaterfallInfoPostback(String str, MaxAdFormat maxAdFormat, MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl, @Nullable MaxError maxError, long j, long j2) {
        HashMap hashMap = new HashMap();
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormat.getLabel(), hashMap);
        CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, str, hashMap);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j2), hashMap);
        if (maxError != null) {
            hashMap.putAll(a2.a(maxError));
        }
        this.f3241a.P().d(y1.W, hashMap);
        if (CollectionUtils.isEmpty(maxAdWaterfallInfoImpl.getPostbackUrls())) {
            return;
        }
        HashMap hashMap2 = new HashMap(8);
        CollectionUtils.putStringIfValid("mcode", maxAdWaterfallInfoImpl.getMCode(), hashMap2);
        CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, str, hashMap2);
        CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, maxAdFormat.getLabel(), hashMap2);
        CollectionUtils.putStringIfValid("name", maxAdWaterfallInfoImpl.getName(), hashMap2);
        CollectionUtils.putLongIfValid("request_latency_ms", Long.valueOf(j2), hashMap2);
        CollectionUtils.putLongIfValid("request_start_timestamp_ms", Long.valueOf(j), hashMap2);
        CollectionUtils.putLongIfValid("wf_latency_ms", Long.valueOf(maxAdWaterfallInfoImpl.getLatencyMillis()), hashMap2);
        List<MaxNetworkResponseInfo> networkResponses = maxAdWaterfallInfoImpl.getNetworkResponses();
        ArrayList arrayList = new ArrayList(networkResponses.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : networkResponses) {
            MaxMediatedNetworkInfo mediatedNetwork = maxNetworkResponseInfo.getMediatedNetwork();
            HashMap hashMap3 = new HashMap(5);
            CollectionUtils.putStringIfValid("bcode", ((MaxNetworkResponseInfoImpl) maxNetworkResponseInfo).getBCode(), hashMap3);
            hashMap3.put("name", mediatedNetwork.getName());
            CollectionUtils.putLongIfValid("latency_ms", Long.valueOf(maxNetworkResponseInfo.getLatencyMillis()), hashMap3);
            hashMap3.put("load_state", Integer.valueOf(maxNetworkResponseInfo.getAdLoadState().ordinal()));
            MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxNetworkResponseInfo.getError();
            if (maxErrorImpl != null) {
                HashMap hashMap4 = new HashMap(4);
                hashMap4.put("error_code", Integer.valueOf(maxErrorImpl.getCode()));
                hashMap4.put("error_message", maxErrorImpl.getMessage());
                hashMap4.put("third_party_sdk_error_code", Integer.valueOf(maxErrorImpl.getMediatedNetworkErrorCode()));
                hashMap4.put("third_party_sdk_error_message", maxErrorImpl.getMediatedNetworkErrorMessage());
                hashMap3.put("error_info", hashMap4);
            }
            arrayList.add(hashMap3);
        }
        hashMap2.put("ads_info", arrayList);
        a("mwf_info", maxAdWaterfallInfoImpl.getPostbackUrls(), Collections.EMPTY_MAP, hashMap2, null, null, false);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.d.set(jSONObject);
    }

    public void showFullscreenAd(final t2 t2Var, final Activity activity, final a.InterfaceC0016a interfaceC0016a) {
        if (t2Var != null) {
            if (activity == null && MaxAdFormat.APP_OPEN != t2Var.getFormat()) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.f3241a.I().a(true);
            final h b2 = b(t2Var);
            long k0 = t2Var.k0();
            if (o.a()) {
                o oVar = this.b;
                oVar.d("MediationService", "Showing ad " + t2Var.getAdUnitId() + " with delay of " + k0 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.this.a(t2Var, b2, activity, interfaceC0016a);
                }
            }, k0);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    private h b(t2 t2Var) {
        h A = t2Var.A();
        if (A == null) {
            this.f3241a.I().a(false);
            if (o.a()) {
                o oVar = this.b;
                oVar.k("MediationService", "Failed to show " + t2Var + ": adapter not found");
            }
            o.h("MediationService", "There may be an integration problem with the adapter for Ad Unit ID '" + t2Var.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
            throw new IllegalStateException("Could not find adapter for provided ad");
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(t2 t2Var, h hVar, Activity activity, a.InterfaceC0016a interfaceC0016a) {
        a(t2Var);
        hVar.b(t2Var, activity);
        a(t2Var, interfaceC0016a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(t2 t2Var, h hVar, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity, a.InterfaceC0016a interfaceC0016a) {
        a(t2Var);
        hVar.a(t2Var, viewGroup, lifecycle, activity);
        a(t2Var, interfaceC0016a);
    }

    public void showFullscreenAd(final t2 t2Var, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final a.InterfaceC0016a interfaceC0016a) {
        if (t2Var == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity != null) {
            this.f3241a.I().a(true);
            final h b2 = b(t2Var);
            long k0 = t2Var.k0();
            if (o.a()) {
                o oVar = this.b;
                oVar.d("MediationService", "Showing ad " + t2Var.getAdUnitId() + " with delay of " + k0 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    MediationServiceImpl.this.a(t2Var, b2, viewGroup, lifecycle, activity, interfaceC0016a);
                }
            }, k0);
            return;
        }
        throw new IllegalArgumentException("No activity specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(q2 q2Var, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, q2Var);
        destroyAd(q2Var);
        l2.a(maxAdListener, q2Var.getAdUnitId(), maxError);
    }

    private void a(t2 t2Var) {
        if (t2Var.getFormat() == MaxAdFormat.REWARDED) {
            this.f3241a.q0().a((w4) new h6(t2Var, this.f3241a), r5.b.OTHER);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(q2 q2Var) {
        this.f3241a.u().b(q2Var, "DID_LOAD");
        this.f3241a.p().maybeSendAdEvent(q2Var, "DID_LOAD");
        if (q2Var.M().endsWith("load")) {
            this.f3241a.u().b(q2Var);
        }
        HashMap hashMap = new HashMap(3);
        long G = q2Var.G();
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(G));
        if (q2Var.getFormat().isFullscreenAd()) {
            n.a b2 = this.f3241a.I().b(q2Var.getAdUnitId());
            hashMap.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(b2.a()));
            hashMap.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(b2.b()));
        }
        a("load", hashMap, q2Var);
        Map a2 = a2.a(q2Var);
        a2.put("duration_ms", String.valueOf(G));
        this.f3241a.P().d(y1.U, a2);
    }

    private void a(t2 t2Var, a.InterfaceC0016a interfaceC0016a) {
        this.f3241a.I().a(false);
        a(t2Var, (MaxAdListener) interfaceC0016a);
        if (o.a()) {
            this.b.a("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpression(t2Var, interfaceC0016a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(q2 q2Var, a.InterfaceC0016a interfaceC0016a, String str) {
        String str2 = "Failed to load " + q2Var + ": adapter init failed with error: " + str;
        if (o.a()) {
            this.b.k("MediationService", str2);
        }
        b(q2Var, new MaxErrorImpl(MaxAdapterError.NOT_INITIALIZED.getErrorCode(), "Adapter initialization failed"), interfaceC0016a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, String str, MaxAdapterParametersImpl maxAdapterParametersImpl, q2 q2Var, Activity activity, a.InterfaceC0016a interfaceC0016a) {
        hVar.a(str, maxAdapterParametersImpl, q2Var, activity, new b(q2Var, interfaceC0016a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, h hVar, String str, r4 r4Var, MaxAdFormat maxAdFormat, q4.a aVar, boolean z, String str2, MaxError maxError) {
        q4 a2;
        String str3;
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (z) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("MediationService", "Signal collection successful from: " + hVar.g() + " for Ad Unit ID: " + str + " with signal: \"" + str2 + "\"");
                str3 = str2;
            } else {
                str3 = str2;
            }
            a2 = q4.a(r4Var, hVar, str3, j, elapsedRealtime);
            this.c.a(a2, r4Var, str, maxAdFormat);
            HashMap hashMap = new HashMap();
            CollectionUtils.putStringIfValid("network_name", r4Var.c(), hashMap);
            CollectionUtils.putStringIfValid("adapter_class", r4Var.b(), hashMap);
            CollectionUtils.putStringIfValid("adapter_version", hVar.b(), hashMap);
            CollectionUtils.putStringIfValid("duration_ms", String.valueOf(elapsedRealtime), hashMap);
            CollectionUtils.putStringIfValid(FirebaseAnalytics.Param.AD_FORMAT, String.valueOf(maxAdFormat.getLabel()), hashMap);
            CollectionUtils.putStringIfValid(MintegralConstants.AD_UNIT_ID, str, hashMap);
            this.f3241a.P().d(y1.O, hashMap);
        } else {
            if (o.a()) {
                o oVar2 = this.b;
                oVar2.b("MediationService", "Signal collection failed from: " + hVar.g() + " for Ad Unit ID: " + str + " with error message: \"" + maxError.getMessage() + "\"");
            }
            a2 = q4.a(r4Var, hVar, maxError, j, elapsedRealtime);
            a(a2, r4Var, hVar);
        }
        aVar.a(a2);
        hVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g4 g4Var, h hVar, MaxAdapterParametersImpl maxAdapterParametersImpl, r4 r4Var, Activity activity) {
        if (g4Var.c()) {
            return;
        }
        if (o.a()) {
            o oVar = this.b;
            oVar.a("MediationService", "Collecting signal for now-initialized adapter: " + hVar.g());
        }
        hVar.a(maxAdapterParametersImpl, r4Var, activity, g4Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar, g4 g4Var, String str) {
        if (o.a()) {
            o oVar = this.b;
            oVar.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + hVar.g());
        }
        g4Var.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_NOT_INITIALIZED, "Could not initialize adapter: " + str));
    }

    private void a(final t2 t2Var, final MaxAdListener maxAdListener) {
        final Long l = (Long) this.f3241a.a(g3.q7);
        if (l.longValue() <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                MediationServiceImpl.this.a(t2Var, l, maxAdListener);
            }
        }, l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(t2 t2Var, Long l, MaxAdListener maxAdListener) {
        if (t2Var.u().get()) {
            return;
        }
        String str = "Ad (" + t2Var.k() + ") has not been displayed after " + l + "ms. Failing ad display...";
        o.h("MediationService", str);
        a(t2Var, new MaxErrorImpl(-1, str), maxAdListener);
        this.f3241a.I().b(t2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q2 q2Var, MaxError maxError, MaxAdListener maxAdListener) {
        this.f3241a.l().a(q2Var, g.c.SHOW_ERROR);
        this.f3241a.u().b(q2Var, "DID_FAIL_DISPLAY");
        this.f3241a.p().maybeSendAdEvent(q2Var, "DID_FAIL_DISPLAY");
        a(maxError, q2Var, true);
        if (q2Var.u().compareAndSet(false, true)) {
            l2.a(maxAdListener, q2Var, maxError);
        }
    }

    private void a(MaxError maxError, q2 q2Var) {
        HashMap hashMap = new HashMap(3);
        long G = q2Var.G();
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(G));
        if (q2Var.getFormat().isFullscreenAd()) {
            n.a b2 = this.f3241a.I().b(q2Var.getAdUnitId());
            hashMap.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(b2.a()));
            hashMap.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(b2.b()));
        }
        a("mlerr", hashMap, maxError, q2Var);
        Map a2 = a2.a(q2Var);
        a2.putAll(a2.a(maxError));
        a2.put("duration_ms", String.valueOf(G));
        this.f3241a.P().d(y1.V, a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q2 q2Var) {
        this.f3241a.u().b(q2Var, "DID_HIDE");
        this.f3241a.p().maybeSendAdEvent(q2Var, "DID_HIDE");
        HashMap hashMap = new HashMap(1);
        String emptyIfNull = StringUtils.emptyIfNull(this.f3241a.w0().e());
        if (!((Boolean) this.f3241a.a(l4.x3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mclose", hashMap, q2Var);
        this.f3241a.P().a(y1.b0, q2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q2 q2Var, a.InterfaceC0016a interfaceC0016a) {
        this.f3241a.u().b(q2Var, "DID_CLICKED");
        this.f3241a.u().b(q2Var, "DID_CLICK");
        this.f3241a.p().maybeSendAdEvent(q2Var, "DID_CLICK");
        if (q2Var.M().endsWith(CampaignEx.JSON_NATIVE_VIDEO_CLICK)) {
            this.f3241a.u().b(q2Var);
            l2.a((MaxAdRevenueListener) interfaceC0016a, (MaxAd) q2Var);
        }
        HashMap hashMap = new HashMap(1);
        String emptyIfNull = StringUtils.emptyIfNull(this.f3241a.w0().e());
        if (!((Boolean) this.f3241a.a(l4.x3)).booleanValue()) {
            emptyIfNull = "";
        }
        hashMap.put("{CUID}", emptyIfNull);
        a("mclick", hashMap, q2Var);
    }

    private void a(MaxError maxError, q2 q2Var, boolean z) {
        a("mierr", Collections.EMPTY_MAP, maxError, q2Var, z);
        if (!z || q2Var == null) {
            return;
        }
        this.f3241a.P().a(y1.a0, q2Var, maxError);
    }

    private void a(q4 q4Var, r4 r4Var, h hVar) {
        long b2 = q4Var.b();
        HashMap hashMap = new HashMap(3);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(b2));
        CollectionUtils.putStringIfValid("{ADAPTER_VERSION}", hVar.b(), hashMap);
        CollectionUtils.putStringIfValid("{SDK_VERSION}", hVar.i(), hashMap);
        a("serr", hashMap, q4Var.c(), r4Var);
        Map a2 = a2.a(q4Var.c());
        CollectionUtils.putStringIfValid("network_name", r4Var.c(), a2);
        CollectionUtils.putStringIfValid("adapter_class", r4Var.b(), a2);
        CollectionUtils.putStringIfValid("adapter_version", hVar.b(), a2);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(b2), a2);
        this.f3241a.P().d(y1.P, a2);
    }

    private void a(String str, Map map, a3 a3Var) {
        a(str, map, (MaxError) null, a3Var);
    }

    private void a(String str, Map map, MaxError maxError, a3 a3Var) {
        a(str, map, maxError, a3Var, true);
    }

    private void a(String str, Map map, MaxError maxError, a3 a3Var, boolean z) {
        String str2;
        Map map2 = CollectionUtils.map(map);
        String str3 = "";
        map2.put("{PLACEMENT}", z ? StringUtils.emptyIfNull(a3Var.getPlacement()) : "");
        if (!z) {
            str2 = "";
        } else {
            str2 = StringUtils.emptyIfNull(a3Var.e());
        }
        map2.put("{CUSTOM_DATA}", str2);
        if (a3Var instanceof q2) {
            q2 q2Var = (q2) a3Var;
            if (z) {
                str3 = StringUtils.emptyIfNull(q2Var.getCreativeId());
            }
            map2.put("{CREATIVE_ID}", str3);
        }
        a(str, null, map2, null, maxError, a3Var, z);
    }

    private void a(String str, List list, Map map, Map map2, MaxError maxError, a3 a3Var, boolean z) {
        this.f3241a.q0().a((w4) new p5(str, list, map, map2, maxError, a3Var, this.f3241a, z), r5.b.OTHER);
    }
}
