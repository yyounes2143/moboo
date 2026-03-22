package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import com.applovin.impl.f6;
import com.applovin.impl.g1;
import com.applovin.impl.l4;
import com.applovin.impl.n4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.c;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t;
import com.applovin.impl.w4;
import com.applovin.impl.y1;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f3674a;
    private final c b;
    private final List c = Collections.synchronizedList(new ArrayList());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(com.applovin.impl.sdk.ad.b bVar);
    }

    public d(k kVar) {
        this.f3674a = kVar;
        this.b = new c(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(c.a aVar) {
        if (aVar == null) {
            this.f3674a.O();
            if (o.a()) {
                this.f3674a.O().a("AdPersistenceManager", "Ad failed to persist");
                return;
            }
            return;
        }
        this.c.add(aVar);
        if (((Boolean) this.f3674a.a(l4.U0)).booleanValue()) {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f3674a.p0().b(n4.C);
        this.b.a();
    }

    private void e() {
        String str = (String) this.f3674a.p0().a(n4.C);
        if (str != null) {
            JSONArray jsonArray = JsonUtils.toJsonArray(str, new JSONArray());
            for (int length = jsonArray.length() - 1; length >= 0; length--) {
                c.a a2 = c.a.a(JsonUtils.getJSONObject(jsonArray, length, new JSONObject()), this.f3674a);
                if (a2 != null) {
                    if (a(a2)) {
                        long c = a2.c() - SystemClock.elapsedRealtime();
                        this.f3674a.g().d(y1.K, CollectionUtils.map("details", "ttl = " + c + "ms"));
                    } else {
                        this.c.add(0, a2);
                    }
                }
            }
        }
    }

    private void f() {
        this.f3674a.q0().a((w4) new f6(this.f3674a, "loadPersistedAdFilesQueueAndCleanupAsync", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                d.this.c();
            }
        }), r5.b.OTHER);
    }

    private void h() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.c) {
            try {
                for (c.a aVar : this.c) {
                    arrayList.add(aVar.a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3674a.p0().b(n4.C, new JSONArray((Collection) arrayList).toString());
    }

    public void a(final t tVar, final a aVar) {
        if (aVar == null) {
            this.f3674a.O();
            if (o.a()) {
                this.f3674a.O().b("AdPersistenceManager", "Persisted ad could not be retrieved: listener is null");
            }
            g1.a("Persisted ad could not be retrieved: listener is null", new Object[0]);
        } else if (tVar == null) {
            a(aVar, null, null, "Persisted ad could not be retrieved: adZone is null");
        } else {
            this.f3674a.g().a(y1.H, tVar, (AppLovinError) null);
            final c.a a2 = a(tVar.g());
            this.b.a(a2, new c.InterfaceC0022c() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // com.applovin.impl.sdk.c.InterfaceC0022c
                public final void a(com.applovin.impl.sdk.ad.b bVar, String str) {
                    d.this.a(aVar, a2, tVar, bVar, str);
                }
            });
        }
    }

    public void b() {
        f();
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
    }

    public void g() {
        this.f3674a.q0().a((w4) new f6(this.f3674a, "resetManagerState", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                d.this.d();
            }
        }), r5.b.OTHER);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        h();
    }

    private void d(c.a aVar) {
        if (aVar != null && this.c.remove(aVar)) {
            this.b.b(aVar);
        }
    }

    public void b(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        this.f3674a.g().a(y1.E, bVar);
        this.b.b(bVar, new c.b() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwww
            @Override // com.applovin.impl.sdk.c.b
            public final void a(c.a aVar) {
                d.this.c(aVar);
            }
        });
    }

    private boolean b(c.a aVar) {
        long b = aVar.b();
        return (b == 0 || b == k.n()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        e();
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, c.a aVar2, t tVar, com.applovin.impl.sdk.ad.b bVar, String str) {
        if (bVar != null && !StringUtils.isValidString(str)) {
            a(aVar, bVar, aVar2);
        } else {
            a(aVar, aVar2, tVar, str);
        }
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            return;
        }
        d(c.a.a(bVar));
    }

    private c.a a(AppLovinAdType appLovinAdType) {
        c.a aVar;
        synchronized (this.c) {
            try {
                Iterator it = this.c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        aVar = null;
                        break;
                    }
                    aVar = (c.a) it.next();
                    if (aVar.f().equals(appLovinAdType) && !a(aVar) && b(aVar)) {
                        break;
                    }
                }
                this.c.remove(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    private void a(a aVar, c.a aVar2, t tVar, String str) {
        if (aVar == null) {
            return;
        }
        this.f3674a.O();
        if (o.a()) {
            this.f3674a.O().a("AdPersistenceManager", str);
        }
        aVar.a(null);
        this.b.b(aVar2);
        this.f3674a.g().a(y1.J, tVar, new AppLovinError(-1, str));
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, c.a aVar2) {
        if (aVar == null) {
            return;
        }
        this.f3674a.O();
        if (o.a()) {
            this.f3674a.O().a("AdPersistenceManager", "Loading persisted ad");
        }
        aVar.a(bVar);
        this.b.b(aVar2);
        this.f3674a.g().a(y1.I, bVar);
    }

    private boolean a(c.a aVar) {
        return SystemClock.elapsedRealtime() + ((Long) this.f3674a.a(l4.W0)).longValue() >= aVar.c();
    }

    private void a() {
        synchronized (this.c) {
            this.b.a(new ArrayList(this.c));
        }
    }
}
