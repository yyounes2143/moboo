package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.g3;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.t6;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class f implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private t6 f3676a;
    private final Object b = new Object();
    private final AtomicBoolean c = new AtomicBoolean();
    private boolean d;
    private final k e;
    private final WeakReference f;
    private long g;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void onAdRefresh();
    }

    public f(k kVar, a aVar) {
        this.f = new WeakReference(aVar);
        this.e = kVar;
    }

    private void e() {
        if (((Boolean) this.e.a(g3.Z6)).booleanValue()) {
            k();
        }
    }

    private void f() {
        if (((Boolean) this.e.a(g3.Z6)).booleanValue()) {
            synchronized (this.b) {
                try {
                    if (this.d) {
                        this.e.O();
                        if (o.a()) {
                            this.e.O().a("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                        }
                    } else if (this.e.m0().isApplicationPaused()) {
                        this.e.O();
                        if (o.a()) {
                            this.e.O().a("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                        }
                    } else {
                        t6 t6Var = this.f3676a;
                        if (t6Var != null) {
                            t6Var.e();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        l();
        a aVar = (a) this.f.get();
        if (aVar != null) {
            aVar.onAdRefresh();
        }
    }

    private void k() {
        synchronized (this.b) {
            try {
                t6 t6Var = this.f3676a;
                if (t6Var != null) {
                    t6Var.d();
                } else {
                    this.e.O();
                    if (o.a()) {
                        this.e.O().a("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                    }
                    this.c.set(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void l() {
        synchronized (this.b) {
            try {
                this.f3676a = null;
                if (!((Boolean) this.e.a(g3.a7)).booleanValue()) {
                    AppLovinBroadcastManager.unregisterReceiver(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void n() {
        synchronized (this.b) {
            try {
                t6 t6Var = this.f3676a;
                if (t6Var != null) {
                    t6Var.e();
                } else {
                    this.c.set(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(long j) {
        synchronized (this.b) {
            try {
                a();
                this.g = j;
                this.f3676a = t6.a(j, this.e, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.this.i();
                    }
                });
                if (!((Boolean) this.e.a(g3.a7)).booleanValue()) {
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                    AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
                }
                if (((Boolean) this.e.a(g3.Z6)).booleanValue() && (this.e.I().c() || this.e.m0().isApplicationPaused())) {
                    this.f3676a.d();
                }
                if (this.c.compareAndSet(true, false) && ((Boolean) this.e.a(g3.b7)).booleanValue()) {
                    this.e.O();
                    if (o.a()) {
                        this.e.O().a("AdRefreshManager", "Pausing refresh for a previous request.");
                    }
                    this.f3676a.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long b() {
        long j;
        synchronized (this.b) {
            try {
                t6 t6Var = this.f3676a;
                if (t6Var != null) {
                    j = t6Var.c();
                } else {
                    j = -1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    public void c() {
        if (((Boolean) this.e.a(g3.Y6)).booleanValue()) {
            k();
        }
    }

    public void d() {
        boolean z;
        a aVar;
        if (((Boolean) this.e.a(g3.Y6)).booleanValue()) {
            synchronized (this.b) {
                try {
                    if (this.d) {
                        this.e.O();
                        if (o.a()) {
                            this.e.O().a("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                        }
                    } else if (this.e.I().c()) {
                        this.e.O();
                        if (o.a()) {
                            this.e.O().a("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                        }
                    } else {
                        if (this.f3676a != null) {
                            long b = this.g - b();
                            long longValue = ((Long) this.e.a(g3.X6)).longValue();
                            if (longValue >= 0 && b > longValue) {
                                a();
                                z = true;
                                if (!z && (aVar = (a) this.f.get()) != null) {
                                    aVar.onAdRefresh();
                                    return;
                                }
                            }
                            this.f3676a.e();
                        }
                        z = false;
                        if (!z) {
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean g() {
        return this.d;
    }

    public boolean h() {
        boolean z;
        synchronized (this.b) {
            if (this.f3676a != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public void j() {
        synchronized (this.b) {
            k();
            this.d = true;
        }
    }

    public void m() {
        synchronized (this.b) {
            n();
            this.d = false;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            c();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            d();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            e();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            f();
        }
    }

    public void a() {
        synchronized (this.b) {
            try {
                t6 t6Var = this.f3676a;
                if (t6Var != null) {
                    t6Var.a();
                    l();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
