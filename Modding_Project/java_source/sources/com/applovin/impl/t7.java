package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class t7 {
    private static final Set f = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3756a;
    private final com.applovin.impl.sdk.k b;
    private Runnable c;
    private final Object d = new Object();
    private final Timer e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends TimerTask {

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.t7$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0025a implements AppLovinBroadcastManager.Receiver {
            public C0025a() {
            }

            @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
            public void onReceive(Intent intent, Map map) {
                AppLovinBroadcastManager.unregisterReceiver(this);
                t7.this.c();
            }
        }

        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!t7.this.b.m0().isApplicationPaused() || t7.this.f3756a) {
                t7.this.c();
            } else {
                AppLovinBroadcastManager.registerReceiver(new C0025a(), new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
        }
    }

    private t7(long j, boolean z, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        Timer timer = new Timer();
        this.e = timer;
        if (j >= 0) {
            if (kVar != null) {
                if (runnable != null) {
                    this.f3756a = z;
                    this.b = kVar;
                    this.c = runnable;
                    f.add(this);
                    timer.schedule(b(), j);
                    return;
                }
                throw new IllegalArgumentException("Cannot create wall clock timer. Runnable is null.");
            }
            throw new IllegalArgumentException("Cannot create wall clock timer. Sdk is null");
        }
        throw new IllegalArgumentException("Cannot create wall clock timer. Invalid timer length: " + j);
    }

    public static t7 a(long j, boolean z, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return new t7(j, z, kVar, runnable);
    }

    private TimerTask b() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Runnable runnable = this.c;
        if (runnable != null) {
            runnable.run();
            a();
        }
    }

    public void a() {
        synchronized (this.d) {
            this.e.cancel();
            this.c = null;
            f.remove(this);
        }
    }
}
