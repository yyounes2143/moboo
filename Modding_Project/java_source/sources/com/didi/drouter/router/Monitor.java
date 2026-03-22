package com.didi.drouter.router;

import android.os.Handler;
import android.os.HandlerThread;
import com.didi.drouter.utils.RouterExecutor;
import com.didi.drouter.utils.RouterLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Monitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f5722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Request request, Result result) {
        long j = request.f5728Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (j > 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("monitor for request \"%s\" start, count down \"%sms\"", request.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Long.valueOf(j));
            f5722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.postDelayed(new Runnable() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Request.this, "timeout");
                        }
                    });
                }
            }, j);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f5722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (Monitor.class) {
                try {
                    if (f5722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        HandlerThread handlerThread = new HandlerThread("timeout-monitor-thread");
                        handlerThread.start();
                        f5722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(handlerThread.getLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
