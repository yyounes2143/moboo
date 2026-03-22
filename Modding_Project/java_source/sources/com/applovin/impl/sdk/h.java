package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.applovin.impl.l4;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final k f3680a;
    private final AtomicReference b;
    private final Handler c;
    private final Handler d;
    private final AtomicLong e = new AtomicLong(0);
    private long f;
    private long g;
    private long h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        INELIGIBLE,
        IDLE,
        MONITORING
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            if (h.this.b.get() != b.MONITORING) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - h.this.e.get();
            if (currentTimeMillis >= 0 && currentTimeMillis <= h.this.f) {
                h.this.d.postDelayed(this, h.this.h);
                return;
            }
            h.this.b.set(b.INELIGIBLE);
            AppLovinBroadcastManager.unregisterReceiver(h.this);
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            if (stackTrace.length > 0) {
                StackTraceElement stackTraceElement = stackTrace[0];
                str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            } else {
                str = "None";
            }
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - k.n());
            HashMap hashMap = new HashMap(3);
            hashMap.put("top_main_method", str);
            if (h.this.f3680a.z0()) {
                str2 = "non_first_session";
            } else {
                str2 = "first_session";
            }
            hashMap.put("source", str2);
            hashMap.put("details", "seconds_since_app_launch=" + seconds);
            h.this.f3680a.E().d(y1.k0, hashMap);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.b.get() != b.MONITORING) {
                return;
            }
            h.this.e.set(System.currentTimeMillis());
            h.this.c.postDelayed(this, h.this.g);
        }
    }

    public h(k kVar) {
        b bVar;
        this.f3680a = kVar;
        if (!z6.c(kVar)) {
            bVar = b.IDLE;
        } else {
            bVar = b.INELIGIBLE;
        }
        this.b = new AtomicReference(bVar);
        this.c = new Handler(k.o().getMainLooper());
        HandlerThread handlerThread = new HandlerThread("AppLovinSdk:anr_detector");
        handlerThread.start();
        this.d = new Handler(handlerThread.getLooper());
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            b();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            c();
        }
    }

    private void b() {
        if (androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.b, b.MONITORING, b.IDLE)) {
            this.c.removeCallbacksAndMessages(null);
            this.d.removeCallbacksAndMessages(null);
        }
    }

    private void c() {
        if (!(((Boolean) this.f3680a.a(l4.C5)).booleanValue() && this.f3680a.m0().getCurrentApplicationState() == SessionTracker.e.PAUSED) && androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.b, b.IDLE, b.MONITORING)) {
            this.c.post(new d());
            this.d.postDelayed(new c(), this.h / 2);
        }
    }

    private void d() {
        AppLovinBroadcastManager.unregisterReceiver(this);
        this.f = ((Long) this.f3680a.a(l4.z5)).longValue();
        this.g = ((Long) this.f3680a.a(l4.A5)).longValue();
        this.h = ((Long) this.f3680a.a(l4.B5)).longValue();
        if (((Boolean) this.f3680a.a(l4.C5)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
        }
    }

    public void a() {
        if (this.b.get() == b.INELIGIBLE) {
            return;
        }
        if (((Boolean) this.f3680a.a(l4.y5)).booleanValue()) {
            d();
            c();
            return;
        }
        b();
    }
}
