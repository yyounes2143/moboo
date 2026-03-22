package com.applovin.impl.sdk;

import com.applovin.impl.l3;
import com.applovin.impl.l4;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n {
    private static final a j = new a();

    /* renamed from: a  reason: collision with root package name */
    private final k f3696a;
    private long c;
    private long f;
    private Object g;
    private final AtomicBoolean b = new AtomicBoolean();
    private final Object d = new Object();
    private final AtomicBoolean e = new AtomicBoolean();
    private final Map h = new HashMap();
    private final Object i = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f3697a = -1;
        private int b;

        public boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.f3697a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (aVar.a((Object) this) && b() == aVar.b() && a() == aVar.a()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            long b = b();
            return ((((int) (b ^ (b >>> 32))) + 59) * 59) + a();
        }

        public String toString() {
            return "FullScreenAdTracker.LostShowAttemptsData(lastAttemptedTimeMillis=" + b() + ", attemptCount=" + a() + ")";
        }

        public static /* synthetic */ int a(a aVar) {
            int i = aVar.b;
            aVar.b = i + 1;
            return i;
        }

        public int a() {
            return this.b;
        }
    }

    public n(k kVar) {
        this.f3696a = kVar;
    }

    public void a(boolean z) {
        synchronized (this.d) {
            try {
                this.e.set(z);
                if (z) {
                    this.f = System.currentTimeMillis();
                    this.f3696a.O();
                    if (o.a()) {
                        o O = this.f3696a.O();
                        O.a("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f);
                    }
                    final Long l = (Long) this.f3696a.a(l4.H1);
                    if (l.longValue() >= 0) {
                        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkkk
                            @Override // java.lang.Runnable
                            public final void run() {
                                n.this.a(l);
                            }
                        }, l.longValue());
                    }
                } else {
                    this.f = 0L;
                    this.f3696a.O();
                    if (o.a()) {
                        o O2 = this.f3696a.O();
                        O2.a("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.b.get();
    }

    public boolean d() {
        return this.e.get();
    }

    public void b(Object obj) {
        if (!l3.a(obj) && this.b.compareAndSet(true, false)) {
            this.g = null;
            this.f3696a.O();
            if (o.a()) {
                o O = this.f3696a.O();
                O.a("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    public void c(String str) {
        synchronized (this.i) {
            try {
                a aVar = (a) this.h.get(str);
                if (aVar == null) {
                    aVar = new a();
                    this.h.put(str, aVar);
                }
                aVar.f3697a = System.currentTimeMillis();
                a.a(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public a b(String str) {
        a aVar;
        synchronized (this.i) {
            aVar = (a) this.h.get(str);
            if (aVar == null) {
                aVar = j;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        if (d() && System.currentTimeMillis() - this.f >= l.longValue()) {
            this.f3696a.O();
            if (o.a()) {
                this.f3696a.O().a("FullScreenAdTracker", "Resetting \"pending display\" state...");
            }
            this.e.set(false);
        }
    }

    public Object a() {
        return this.g;
    }

    public void a(final Object obj) {
        if (!l3.a(obj) && this.b.compareAndSet(false, true)) {
            this.g = obj;
            this.c = System.currentTimeMillis();
            this.f3696a.O();
            if (o.a()) {
                o O = this.f3696a.O();
                O.a("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.c);
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final Long l = (Long) this.f3696a.a(l4.I1);
            if (l.longValue() >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkk
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.a(l, obj);
                    }
                }, l.longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l, Object obj) {
        if (this.b.get() && System.currentTimeMillis() - this.c >= l.longValue()) {
            this.f3696a.O();
            if (o.a()) {
                this.f3696a.O().a("FullScreenAdTracker", "Resetting \"display\" state...");
            }
            b(obj);
        }
    }

    public void a(String str) {
        synchronized (this.i) {
            this.h.remove(str);
        }
    }
}
