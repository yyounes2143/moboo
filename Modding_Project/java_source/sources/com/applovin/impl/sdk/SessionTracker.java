package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.l4;
import com.applovin.impl.z6;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";

    /* renamed from: a  reason: collision with root package name */
    final k f3581a;
    private final String b = UUID.randomUUID().toString();
    private final AtomicBoolean c = new AtomicBoolean();
    private final AtomicBoolean d = new AtomicBoolean();
    private final AtomicInteger e = new AtomicInteger();
    private final AtomicLong f = new AtomicLong();
    private final AtomicLong g = new AtomicLong();
    private Date h;
    private Date i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends com.applovin.impl.b {
        public a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            SessionTracker.this.b();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c extends BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                if (z6.g()) {
                    SessionTracker.this.b();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                SessionTracker.this.a();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3585a;

        static {
            int[] iArr = new int[e.values().length];
            f3585a = iArr;
            try {
                iArr[e.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3585a[e.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3585a[e.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum e {
        STARTED("started"),
        PAUSED("paused"),
        RESUMED("resumed");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f3586a;

        e(String str) {
            this.f3586a = str;
        }

        public String b() {
            return this.f3586a;
        }
    }

    public SessionTracker(k kVar) {
        this.f3581a = kVar;
        Application application = (Application) k.o();
        application.registerActivityLifecycleCallbacks(new a());
        application.registerComponentCallbacks(new b());
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new c(), intentFilter);
    }

    private void d() {
        this.f3581a.O();
        if (o.a()) {
            this.f3581a.O().a("SessionTracker", "Application Resumed");
        }
        this.g.set(System.currentTimeMillis());
        boolean booleanValue = ((Boolean) this.f3581a.a(l4.k3)).booleanValue();
        long longValue = ((Long) this.f3581a.a(l4.l3)).longValue();
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (!this.c.getAndSet(false)) {
            long millis = TimeUnit.MINUTES.toMillis(longValue);
            if (this.i == null || System.currentTimeMillis() - this.i.getTime() >= millis) {
                this.f3581a.G().trackEvent("resumed");
                if (booleanValue) {
                    this.i = new Date();
                }
            }
            if (!booleanValue) {
                this.i = new Date();
            }
        }
    }

    public long getAppEnteredBackgroundTimeMillis() {
        return this.f.get();
    }

    public long getAppEnteredForegroundTimeMillis() {
        return this.g.get();
    }

    public e getCurrentApplicationState() {
        if (this.d.get()) {
            return e.PAUSED;
        }
        if (this.f.get() != 0) {
            return e.RESUMED;
        }
        return e.STARTED;
    }

    public long getCurrentApplicationStateDurationMillis() {
        long n;
        long currentTimeMillis = System.currentTimeMillis();
        int i = d.f3585a[getCurrentApplicationState().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return -1L;
                }
                n = this.g.get();
            } else {
                n = this.f.get();
            }
        } else {
            n = k.n();
        }
        return currentTimeMillis - n;
    }

    public int getLastTrimMemoryLevel() {
        return this.e.get();
    }

    public String getSessionId() {
        return this.b;
    }

    public boolean isApplicationPaused() {
        return this.d.get();
    }

    public void pauseForClick() {
        this.c.set(true);
    }

    public void resumeForClick() {
        this.c.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.d.compareAndSet(false, true)) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.d.compareAndSet(true, false)) {
            d();
        }
    }

    private void c() {
        this.f3581a.O();
        if (o.a()) {
            this.f3581a.O().a("SessionTracker", "Application Paused");
        }
        this.f.set(System.currentTimeMillis());
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.c.get()) {
            return;
        }
        boolean booleanValue = ((Boolean) this.f3581a.a(l4.k3)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.f3581a.a(l4.m3)).longValue());
        if (this.h == null || System.currentTimeMillis() - this.h.getTime() >= millis) {
            this.f3581a.G().trackEvent("paused");
            if (booleanValue) {
                this.h = new Date();
            }
        }
        if (booleanValue) {
            return;
        }
        this.h = new Date();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements ComponentCallbacks2 {
        public b() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            SessionTracker.this.e.set(i);
            if (i == 20) {
                SessionTracker.this.a();
            }
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }
    }
}
