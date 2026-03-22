package com.applovin.impl.sdk;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.t;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final k f3675a;
    private final o b;
    private final Map d = new HashMap();
    private final Map e = new HashMap();
    private final Object c = new Object();

    public e(k kVar) {
        this.f3675a = kVar;
        this.b = kVar.O();
        for (t tVar : t.a()) {
            this.d.put(tVar, new q());
            this.e.put(tVar, new q());
        }
    }

    private q c(t tVar) {
        synchronized (this.c) {
            try {
                q b = b(tVar);
                if (b.b() > 0) {
                    return b;
                }
                return d(tVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private q d(t tVar) {
        q qVar;
        synchronized (this.c) {
            try {
                qVar = (q) this.d.get(tVar);
                if (qVar == null) {
                    qVar = new q();
                    this.d.put(tVar, qVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    public void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.c) {
            try {
                d(appLovinAdImpl.getAdZone()).a(appLovinAdImpl);
                if (o.a()) {
                    o oVar = this.b;
                    oVar.a("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.c) {
            c(appLovinAdImpl.getAdZone()).b(appLovinAdImpl);
        }
    }

    public AppLovinAdImpl e(t tVar) {
        com.applovin.impl.sdk.ad.c cVar;
        synchronized (this.c) {
            try {
                q d = d(tVar);
                if (d.b() > 0) {
                    b(tVar).a(d.a());
                    cVar = new com.applovin.impl.sdk.ad.c(tVar, this.f3675a);
                } else {
                    cVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (cVar != null) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AdPreloadManager", "Retrieved ad of zone " + tVar + "...");
                return cVar;
            }
        } else if (o.a()) {
            o oVar2 = this.b;
            oVar2.a("AdPreloadManager", "Unable to retrieve ad of zone " + tVar + "...");
        }
        return cVar;
    }

    public AppLovinAdBase f(t tVar) {
        AppLovinAdImpl d;
        synchronized (this.c) {
            d = c(tVar).d();
        }
        return d;
    }

    private q b(t tVar) {
        q qVar;
        synchronized (this.c) {
            try {
                qVar = (q) this.e.get(tVar);
                if (qVar == null) {
                    qVar = new q();
                    this.e.put(tVar, qVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    public AppLovinAdImpl a(t tVar) {
        AppLovinAdImpl a2;
        synchronized (this.c) {
            a2 = c(tVar).a();
        }
        return a2;
    }
}
