package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.d5;
import com.applovin.impl.g3;
import com.applovin.impl.j5;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.q2;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w4;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final k f3418a;
    private final Map b = new HashMap(4);
    private final Object c = new Object();
    private final Map d = new HashMap(4);
    private final Object e = new Object();
    private final Map f = new HashMap();
    private final Object g = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements d5.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f3419a;
        final /* synthetic */ Map b;
        final /* synthetic */ String c;
        final /* synthetic */ MaxAdFormat d;
        final /* synthetic */ Map e;
        final /* synthetic */ Map f;
        final /* synthetic */ Context g;
        final /* synthetic */ a.InterfaceC0016a h;

        public a(long j, Map map, String str, MaxAdFormat maxAdFormat, Map map2, Map map3, Context context, a.InterfaceC0016a interfaceC0016a) {
            this.f3419a = j;
            this.b = map;
            this.c = str;
            this.d = maxAdFormat;
            this.e = map2;
            this.f = map3;
            this.g = context;
            this.h = interfaceC0016a;
        }

        @Override // com.applovin.impl.d5.b
        public void a(JSONArray jSONArray) {
            this.b.put("sct_ms", Long.valueOf(SystemClock.elapsedRealtime() - this.f3419a));
            this.b.put("calfc", Integer.valueOf(d.this.b(this.c)));
            j5 j5Var = new j5(this.c, this.d, this.e, this.f, this.b, jSONArray, this.g, d.this.f3418a, this.h);
            if (((Boolean) d.this.f3418a.a(g3.K7)).booleanValue()) {
                d.this.f3418a.q0().a((w4) j5Var, r5.b.MEDIATION);
            } else {
                d.this.f3418a.q0().a(j5Var);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b implements a.InterfaceC0016a {

        /* renamed from: a  reason: collision with root package name */
        private final k f3420a;
        private final WeakReference b;
        private final d c;
        private final c d;
        private final MaxAdFormat e;
        private final Map f;
        private final Map g;
        private final Map h;
        private final int i;
        private long j;
        private long k;

        public /* synthetic */ b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j, long j2, d dVar, k kVar, Context context, a aVar) {
            this(map, map2, map3, cVar, maxAdFormat, j, j2, dVar, kVar, context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, String str) {
            this.g.put("retry_delay_sec", Integer.valueOf(i));
            this.g.put("retry_attempt", Integer.valueOf(this.d.c));
            Context context = (Context) this.b.get();
            if (context == null) {
                context = k.o();
            }
            Context context2 = context;
            this.h.put("art", com.applovin.impl.h.EXPONENTIAL_RETRY.b());
            this.h.put("era", Integer.valueOf(this.d.c));
            this.k = System.currentTimeMillis();
            this.c.a(str, this.e, this.f, this.g, this.h, context2, this);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            final String str2;
            MaxError maxError2;
            boolean z;
            this.c.c(str);
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.j;
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) maxError.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                str2 = str;
                maxError2 = maxError;
                this.f3420a.X().processWaterfallInfoPostback(str2, this.e, maxAdWaterfallInfoImpl, maxError2, this.k, elapsedRealtime);
            } else {
                str2 = str;
                maxError2 = maxError;
            }
            if (maxError2.getCode() == -5603 && z6.c(this.f3420a) && ((Boolean) this.f3420a.a(l4.V5)).booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            if (!this.f3420a.a(g3.E7, this.e) || this.d.c >= this.i || z) {
                this.d.c = 0;
                this.d.b.set(false);
                if (this.d.d != null) {
                    MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError2;
                    maxErrorImpl.setLoadTag(this.d.f3421a);
                    maxErrorImpl.setRequestLatencyMillis(elapsedRealtime);
                    l2.a(this.d.d, str2, maxError2);
                    this.d.d = null;
                    return;
                }
                return;
            }
            c.e(this.d);
            final int pow = (int) Math.pow(2.0d, this.d.c);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    d.b.this.a(pow, str2);
                }
            }, TimeUnit.SECONDS.toMillis(pow));
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            q2 q2Var = (q2) maxAd;
            q2Var.i(this.d.f3421a);
            q2Var.a(SystemClock.elapsedRealtime() - this.j);
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) q2Var.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.f3420a.X().processWaterfallInfoPostback(q2Var.getAdUnitId(), this.e, maxAdWaterfallInfoImpl, null, this.k, q2Var.getRequestLatencyMillis());
            }
            this.c.a(maxAd.getAdUnitId());
            this.d.c = 0;
            if (this.d.d == null) {
                this.c.a(q2Var);
                this.d.b.set(false);
                return;
            }
            q2Var.A().c().a(this.d.d);
            this.d.d.onAdLoaded(q2Var);
            if (q2Var.M().endsWith("load")) {
                this.d.d.onAdRevenuePaid(q2Var);
            }
            this.d.d = null;
            if ((this.f3420a.c(g3.A7).contains(maxAd.getAdUnitId()) || this.f3420a.a(g3.z7, maxAd.getFormat())) && !this.f3420a.s0().c() && !this.f3420a.s0().d()) {
                Context context = (Context) this.b.get();
                if (context == null) {
                    context = k.o();
                }
                Context context2 = context;
                this.j = SystemClock.elapsedRealtime();
                this.k = System.currentTimeMillis();
                this.h.put("art", com.applovin.impl.h.SEQUENTIAL_OR_PRECACHE.b());
                this.c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f, this.g, this.h, context2, this);
                return;
            }
            this.d.b.set(false);
        }

        private b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j, long j2, d dVar, k kVar, Context context) {
            this.f3420a = kVar;
            this.b = new WeakReference(context);
            this.c = dVar;
            this.d = cVar;
            this.e = maxAdFormat;
            this.g = map2;
            this.f = map;
            this.h = map3;
            this.j = j;
            this.k = j2;
            if (CollectionUtils.getBoolean(map2, "disable_auto_retries")) {
                this.i = -1;
            } else if (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) {
                this.i = Math.min(2, ((Integer) kVar.a(g3.D7)).intValue());
            } else {
                this.i = ((Integer) kVar.a(g3.D7)).intValue();
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f3421a;
        private final AtomicBoolean b;
        private int c;
        private volatile a.InterfaceC0016a d;

        public /* synthetic */ c(String str, a aVar) {
            this(str);
        }

        public static /* synthetic */ int e(c cVar) {
            int i = cVar.c;
            cVar.c = i + 1;
            return i;
        }

        private c(String str) {
            this.b = new AtomicBoolean();
            this.f3421a = str;
        }
    }

    public d(k kVar) {
        this.f3418a = kVar;
    }

    private String b(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (str2 != null) {
            str3 = "-" + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        return sb.toString();
    }

    private q2 e(String str) {
        q2 q2Var;
        synchronized (this.e) {
            q2Var = (q2) this.d.get(str);
            this.d.remove(str);
        }
        return q2Var;
    }

    public void c(String str, String str2) {
        synchronized (this.c) {
            this.b.remove(b(str, str2));
        }
    }

    public boolean d(String str) {
        boolean z;
        synchronized (this.e) {
            if (this.d.get(str) != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public int b(String str) {
        int intValue;
        synchronized (this.g) {
            try {
                Integer num = (Integer) this.f.get(str);
                intValue = num != null ? num.intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return intValue;
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, com.applovin.impl.h hVar, Map map, Map map2, Context context, a.InterfaceC0016a interfaceC0016a) {
        q2 e = (this.f3418a.s0().d() || z6.f(k.o())) ? null : e(str);
        if (e != null) {
            e.i(str2);
            e.A().c().a(interfaceC0016a);
            interfaceC0016a.onAdLoaded(e);
            if (e.M().endsWith("load")) {
                interfaceC0016a.onAdRevenuePaid(e);
            }
        }
        c a2 = a(str, str2);
        if (!a2.b.compareAndSet(false, true)) {
            if (a2.d != null && a2.d != interfaceC0016a) {
                o.j("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            a2.d = interfaceC0016a;
            return;
        }
        if (e == null) {
            a2.d = interfaceC0016a;
        }
        Map synchronizedMap = DesugarCollections.synchronizedMap(new HashMap());
        synchronizedMap.put("art", hVar.b());
        if (StringUtils.isValidString(str2)) {
            synchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, synchronizedMap, context, new b(map, map2, synchronizedMap, a2, maxAdFormat, SystemClock.elapsedRealtime(), System.currentTimeMillis(), this, this.f3418a, context, null));
    }

    public void c(String str) {
        synchronized (this.g) {
            try {
                this.f3418a.O();
                if (o.a()) {
                    o O = this.f3418a.O();
                    O.a("MediationAdLoadManager", "Incrementing ad load failures count for ad unit ID: " + str);
                }
                Integer num = (Integer) this.f.get(str);
                if (num == null) {
                    num = 0;
                }
                this.f.put(str, Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, Context context, a.InterfaceC0016a interfaceC0016a) {
        this.f3418a.q0().a((w4) new d5(str, maxAdFormat, map, context, this.f3418a, new a(SystemClock.elapsedRealtime(), map3, str, maxAdFormat, map, map2, context, interfaceC0016a)), r5.b.MEDIATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q2 q2Var) {
        synchronized (this.e) {
            try {
                if (this.d.containsKey(q2Var.getAdUnitId())) {
                    o.h("AppLovinSdk", "Ad in cache already: " + q2Var.getAdUnitId());
                }
                this.d.put(q2Var.getAdUnitId(), q2Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private c a(String str, String str2) {
        c cVar;
        synchronized (this.c) {
            try {
                String b2 = b(str, str2);
                cVar = (c) this.b.get(b2);
                if (cVar == null) {
                    cVar = new c(str2, null);
                    this.b.put(b2, cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.g) {
            try {
                this.f3418a.O();
                if (o.a()) {
                    o O = this.f3418a.O();
                    O.a("MediationAdLoadManager", "Clearing ad load failures count for ad unit ID: " + str);
                }
                this.f.remove(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
