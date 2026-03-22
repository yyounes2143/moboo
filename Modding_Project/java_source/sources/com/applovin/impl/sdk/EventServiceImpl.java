package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import com.applovin.impl.d1;
import com.applovin.impl.f6;
import com.applovin.impl.i4;
import com.applovin.impl.l4;
import com.applovin.impl.n1;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.w4;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class EventServiceImpl implements AppLovinEventService {
    public static final List<String> ALLOW_PRE_INIT_EVENT_TYPES = Arrays.asList("landing", "paused", "resumed", "cf_start", "tos_ok", "gdpr_ok");

    /* renamed from: a  reason: collision with root package name */
    private final k f3552a;
    private final AtomicBoolean b = new AtomicBoolean();

    public EventServiceImpl(k kVar) {
        this.f3552a = kVar;
    }

    private void a(final String str, final Map map) {
        final boolean contains = ALLOW_PRE_INIT_EVENT_TYPES.contains(str);
        this.f3552a.q0().a((w4) new f6(this.f3552a, contains, "submitTrackEventPostback", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                EventServiceImpl.this.a(str, map, contains);
            }
        }), r5.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, Map map, Map map2) {
        this.f3552a.e0().e(com.applovin.impl.sdk.network.d.b().d(b()).a(a()).a(CollectionUtils.map("AppLovin-Event", str)).c(a(str, map, map2)).a(((Boolean) this.f3552a.a(l4.L4)).booleanValue()).d(false).a());
    }

    private void c(final String str, final Map map, final Map map2) {
        if (map.containsKey(FirebaseAnalytics.Param.ITEMS)) {
            Object obj = map.get(FirebaseAnalytics.Param.ITEMS);
            if (!(obj instanceof List)) {
                a("Invalid 'items' value: expected a list.");
                return;
            }
            for (Object obj2 : (List) obj) {
                if (!(obj2 instanceof Map)) {
                    a("Invalid element in 'items': expected a map.");
                    return;
                }
            }
        }
        r5 q0 = this.f3552a.q0();
        k kVar = this.f3552a;
        q0.a((w4) new f6(kVar, false, "track_event:" + str, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                EventServiceImpl.this.b(str, map, map2);
            }
        }), r5.b.OTHER);
    }

    private String d() {
        return ((String) this.f3552a.a(l4.t0)) + "4.0/pix";
    }

    public void maybeTrackAppOpenEvent() {
        if (this.b.compareAndSet(false, true)) {
            this.f3552a.G().trackEvent("landing");
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        map2.put("transaction_id", str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    public void trackEventSynchronously(String str) {
        this.f3552a.O();
        if (o.a()) {
            o O = this.f3552a.O();
            O.a("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        n1 n1Var = new n1(str, new HashMap());
        boolean contains = this.f3552a.c(l4.A0).contains(n1Var.c());
        Map a2 = a(n1Var, true, contains);
        HashMap hashMap = new HashMap(n1Var.d());
        if (((Boolean) this.f3552a.a(l4.d5)).booleanValue() || ((Boolean) this.f3552a.a(l4.Y4)).booleanValue()) {
            hashMap.putAll(a2);
            a2 = null;
        }
        this.f3552a.e0().e(com.applovin.impl.sdk.network.d.b().d(d()).a(c()).b(a2).c(hashMap).a(a(n1Var, contains)).c(((Boolean) this.f3552a.a(l4.n5)).booleanValue()).a(((Boolean) this.f3552a.a(l4.L4)).booleanValue()).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th) {
            o.c("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th);
            this.f3552a.E().a("AppLovinEventService", "trackIAP", th);
        }
        trackEvent("iap", map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map) {
        trackEvent(str, map, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Map map, boolean z) {
        n1 n1Var = new n1(str, map);
        boolean contains = this.f3552a.c(l4.A0).contains(n1Var.c());
        Map a2 = a(n1Var, false, contains);
        HashMap hashMap = new HashMap(n1Var.d());
        if (((Boolean) this.f3552a.a(l4.d5)).booleanValue() || ((Boolean) this.f3552a.a(l4.Y4)).booleanValue()) {
            hashMap.putAll(a2);
            a2 = null;
        }
        this.f3552a.e0().e(com.applovin.impl.sdk.network.d.b().d(d()).a(c()).a(a(n1Var, contains)).b(a2).c(hashMap).c(((Boolean) this.f3552a.a(l4.n5)).booleanValue()).a(((Boolean) this.f3552a.a(l4.L4)).booleanValue()).d(z).a(i4.a.a(((Integer) this.f3552a.a(l4.V4)).intValue())).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map, Map<String, Object> map2) {
        if (TextUtils.isEmpty(str)) {
            a("Unable to track empty event");
        } else if (this.f3552a.c(l4.B0).contains(str)) {
            c(str, map, map2);
        } else {
            a(str, map);
        }
    }

    private String c() {
        return ((String) this.f3552a.a(l4.u0)) + "4.0/pix";
    }

    private String b() {
        return ((String) this.f3552a.a(l4.v0)) + "v1/app";
    }

    private void a(String str) {
        o.h("AppLovinEventService", str);
        if (z6.c(this.f3552a)) {
            throw new IllegalArgumentException(str);
        }
    }

    private Map a(n1 n1Var, boolean z, boolean z2) {
        Map a2 = this.f3552a.B().a((Map) null, z, false);
        a2.put("event_id", n1Var.b());
        a2.put(CampaignEx.JSON_KEY_ST_TS, Long.toString(n1Var.a()));
        if (z2) {
            a2.put("event", n1Var.c());
        } else {
            a2.put("event", "postinstall");
            a2.put("sub_event", n1Var.c());
        }
        return z6.a(a2);
    }

    private Map a(n1 n1Var, boolean z) {
        HashMap hashMap = new HashMap();
        if (z) {
            hashMap.put("AppLovin-Event", n1Var.c());
            return hashMap;
        }
        hashMap.put("AppLovin-Event", "postinstall");
        hashMap.put("AppLovin-Sub-Event", n1Var.c());
        return hashMap;
    }

    private Map a(String str, Map map, Map map2) {
        HashMap hashMap = new HashMap();
        n1 n1Var = new n1(str, map);
        hashMap.put("id", n1Var.b());
        hashMap.put("name", n1Var.c());
        hashMap.put("data", n1Var.d());
        hashMap.put(CampaignEx.JSON_KEY_TIMESTAMP, d1.a(n1Var.a()));
        Map D = this.f3552a.B().D();
        hashMap.put("app_info", D);
        hashMap.put("device_info", this.f3552a.B().n());
        CollectionUtils.putObjectToStringIfValid("dedupe_id", map2.get("dedupe_id"), hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("connectEventKey", this.f3552a.r());
        CollectionUtils.putStringIfValid("eventId", this.f3552a.F(), hashMap2);
        hashMap2.put("version", AppLovinSdk.VERSION);
        hashMap2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3552a.i0());
        hashMap2.put(TPDownloadProxyEnum.USER_PLATFORM, this.f3552a.B().x());
        if (((Boolean) this.f3552a.a(l4.z3)).booleanValue()) {
            CollectionUtils.putStringIfValid("art", this.f3552a.s(), hashMap2);
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("firstVisitTs", D.get("ia_v2"));
        hashMap3.put("lastVisitTs", D.get("last_launch_ms"));
        hashMap3.put("visitCount", D.get("app_launch_count"));
        hashMap3.put("currentVisitStartTs", D.get("alts_ms"));
        hashMap2.put("visitInfo", hashMap3);
        hashMap.put("axon", hashMap2);
        return hashMap;
    }

    private String a() {
        return ((String) this.f3552a.a(l4.w0)) + "v1/app";
    }
}
