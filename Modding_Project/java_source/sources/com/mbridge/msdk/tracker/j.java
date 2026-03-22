package com.mbridge.msdk.tracker;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
class j {

    /* renamed from: a  reason: collision with root package name */
    private volatile ThreadPoolExecutor f9661a;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a implements ThreadFactory {
        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeTrackThread");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f9663a;

        public b(Runnable runnable) {
            this.f9663a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!y.b(this.f9663a)) {
                try {
                    this.f9663a.run();
                } catch (Exception unused) {
                    boolean z = com.mbridge.msdk.tracker.a.f9655a;
                }
            }
        }
    }

    public void a(Runnable runnable) {
        if (this.f9661a == null) {
            this.f9661a = a();
        }
        if (this.f9661a.isShutdown()) {
            return;
        }
        this.f9661a.execute(new b(runnable));
    }

    private ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }
}
