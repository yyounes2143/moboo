package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxErrorCode;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t5 extends w4 {
    private static final AtomicBoolean p = new AtomicBoolean();
    private final String g;
    private final MaxAdFormat h;
    private final JSONObject i;
    private final List j;
    private final a.InterfaceC0016a k;
    private final WeakReference l;
    private final String m;
    private long n;
    private final List o;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends w4 {
        private final long g;
        private final int h;
        private final q2 i;
        private final List j;

        /* compiled from: Proguard */
        /* loaded from: classes3.dex */
        public class a extends z2 {
            public a(a.InterfaceC0016a interfaceC0016a) {
                super(interfaceC0016a);
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoadFailed(String str, MaxError maxError) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - b.this.g;
                com.applovin.impl.sdk.o unused = b.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = b.this.c;
                    String str2 = b.this.b;
                    oVar.a(str2, "Ad failed to load in " + elapsedRealtime + " ms for " + t5.this.h.getLabel() + " ad unit " + t5.this.g + " with error: " + maxError);
                }
                b bVar = b.this;
                bVar.b("failed to load ad: " + maxError.getCode());
                b bVar2 = b.this;
                bVar2.a(bVar2.i, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, elapsedRealtime, maxError);
                if (b.this.h < b.this.j.size() - 1) {
                    b bVar3 = b.this;
                    b.this.f3803a.q0().a((w4) new b(bVar3.h + 1, b.this.j), r5.b.MEDIATION);
                    return;
                }
                t5.this.b(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoaded(MaxAd maxAd) {
                b.this.b("loaded ad");
                long elapsedRealtime = SystemClock.elapsedRealtime() - b.this.g;
                com.applovin.impl.sdk.o unused = b.this.c;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = b.this.c;
                    String str = b.this.b;
                    oVar.a(str, "Ad loaded in " + elapsedRealtime + "ms for " + t5.this.h.getLabel() + " ad unit " + t5.this.g);
                }
                q2 q2Var = (q2) maxAd;
                b.this.a(q2Var, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, elapsedRealtime, null);
                int i = b.this.h;
                while (true) {
                    i++;
                    if (i >= b.this.j.size()) {
                        t5.this.b(q2Var);
                        return;
                    } else {
                        b bVar = b.this;
                        bVar.a((q2) bVar.j.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity u0;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str = this.b;
                oVar.a(str, "Loading ad " + (this.h + 1) + " of " + this.j.size() + " from " + this.i.c() + " for " + t5.this.h.getLabel() + " ad unit " + t5.this.g);
            }
            b("started to load ad");
            Context context = (Context) t5.this.l.get();
            if (context instanceof Activity) {
                u0 = (Activity) context;
            } else {
                u0 = this.f3803a.u0();
            }
            this.f3803a.a0().b(this.i);
            this.f3803a.X().loadThirdPartyMediatedAd(t5.this.g, this.i, u0, new a(t5.this.k));
        }

        private b(int i, List list) {
            super(t5.this.b, t5.this.f3803a, t5.this.g);
            this.g = SystemClock.elapsedRealtime();
            this.h = i;
            this.i = (q2) list.get(i);
            this.j = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(q2 q2Var, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
            t5.this.o.add(new MaxNetworkResponseInfoImpl(adLoadState, l3.a(q2Var.b()), q2Var.F(), q2Var.T(), j, q2Var.C(), maxError));
        }
    }

    public t5(String str, MaxAdFormat maxAdFormat, Map map, JSONObject jSONObject, Context context, com.applovin.impl.sdk.k kVar, a.InterfaceC0016a interfaceC0016a) {
        super("TaskProcessMediationWaterfall", kVar, str);
        this.g = str;
        this.h = maxAdFormat;
        this.i = jSONObject;
        this.k = interfaceC0016a;
        this.l = new WeakReference(context);
        this.m = JsonUtils.getString(jSONObject, "mcode", "");
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        this.j = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.j.add(q2.a(map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, kVar));
        }
        this.o = new ArrayList(this.j.size());
    }

    @Override // java.lang.Runnable
    public void run() {
        final MaxErrorImpl maxErrorImpl;
        this.n = SystemClock.elapsedRealtime();
        if (this.i.optBoolean("is_testing", false) && !this.f3803a.s0().c() && p.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Llllll
                @Override // java.lang.Runnable
                public final void run() {
                    t5.this.e();
                }
            });
        }
        if (this.j.size() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Starting waterfall for " + this.h.getLabel() + " ad unit " + this.g + " with " + this.j.size() + " ad(s)...");
            }
            this.f3803a.q0().a(new b(0, this.j));
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.k(this.b, "No ads were returned from the server for " + this.h.getLabel() + " ad unit " + this.g);
        }
        z6.a(this.g, this.h, this.i, this.f3803a);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.i, "settings", new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        if (l3.a(this.i, this.g, this.f3803a)) {
            maxErrorImpl = new MaxErrorImpl(MaxErrorCode.INVALID_AD_UNIT_ID, "Ad Unit ID " + this.g + " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://developers.applovin.com/en/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created");
            if (z6.c(this.f3803a) && ((Boolean) this.f3803a.a(l4.V5)).booleanValue()) {
                j = 0;
            }
        } else {
            maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device");
        }
        if (j > 0) {
            long millis = TimeUnit.SECONDS.toMillis(j);
            Runnable runnable = new Runnable() { // from class: com.applovin.impl.Lllll
                @Override // java.lang.Runnable
                public final void run() {
                    t5.this.b(maxErrorImpl);
                }
            };
            if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
                c0.a(millis, this.f3803a, runnable);
                return;
            } else {
                AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
                return;
            }
        }
        b(maxErrorImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        z6.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.f3803a.u0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(q2 q2Var) {
        this.f3803a.a0().c(q2Var);
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.n;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.d(str, "Waterfall loaded in " + elapsedRealtime + "ms from " + q2Var.c() + " for " + this.h.getLabel() + " ad unit " + this.g);
        }
        q2Var.a(new MaxAdWaterfallInfoImpl(q2Var, elapsedRealtime, this.o, this.m));
        l2.f(this.k, q2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(MaxError maxError) {
        ArrayList arrayList = new ArrayList(this.o.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.o) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======");
            sb.append("\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i);
                sb.append(") ");
                sb.append(maxNetworkResponseInfo2.getMediatedNetwork().getName());
                sb.append("\n");
                sb.append("..code: ");
                sb.append(maxNetworkResponseInfo2.getError().getCode());
                sb.append("\n");
                sb.append("..message: ");
                sb.append(maxNetworkResponseInfo2.getError().getMessage());
                sb.append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.n;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.d(str, "Waterfall failed in " + elapsedRealtime + "ms for " + this.h.getLabel() + " ad unit " + this.g + " with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.i, "waterfall_name", ""), JsonUtils.getString(this.i, "waterfall_test_name", ""), elapsedRealtime, this.o, JsonUtils.optList(JsonUtils.getJSONArray(this.i, "mwf_info_urls", null), Collections.EMPTY_LIST), this.m));
        l2.a(this.k, this.g, maxError);
    }
}
