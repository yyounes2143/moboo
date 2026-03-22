package com.tencent.thumbplayer.tcmedia.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes6.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static volatile HandlerThread f10700a;
    private static volatile Handler b;
    private static int c;
    private static volatile ExecutorService d;
    private static volatile ExecutorService e;
    private static volatile ScheduledExecutorService f;
    private static volatile o g;

    private o() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0010, B:13:0x0021, B:15:0x0029, B:16:0x003a, B:10:0x0016, B:12:0x001e), top: B:20:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f() {
        /*
            java.lang.Class<com.tencent.thumbplayer.tcmedia.utils.o> r0 = com.tencent.thumbplayer.tcmedia.utils.o.class
            monitor-enter(r0)
            android.os.HandlerThread r1 = com.tencent.thumbplayer.tcmedia.utils.o.f10700a     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L16
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L14
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L14
            com.tencent.thumbplayer.tcmedia.utils.o.f10700a = r1     // Catch: java.lang.Throwable -> L14
        L10:
            r1.start()     // Catch: java.lang.Throwable -> L14
            goto L21
        L14:
            r1 = move-exception
            goto L3c
        L16:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.tcmedia.utils.o.f10700a     // Catch: java.lang.Throwable -> L14
            boolean r1 = r1.isAlive()     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L21
            android.os.HandlerThread r1 = com.tencent.thumbplayer.tcmedia.utils.o.f10700a     // Catch: java.lang.Throwable -> L14
            goto L10
        L21:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.tcmedia.utils.o.f10700a     // Catch: java.lang.Throwable -> L14
            android.os.Looper r1 = r1.getLooper()     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L3a
            android.os.HandlerThread r1 = com.tencent.thumbplayer.tcmedia.utils.o.f10700a     // Catch: java.lang.Throwable -> L14
            r1.quit()     // Catch: java.lang.Throwable -> L14
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L14
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L14
            com.tencent.thumbplayer.tcmedia.utils.o.f10700a = r1     // Catch: java.lang.Throwable -> L14
            r1.start()     // Catch: java.lang.Throwable -> L14
        L3a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            return
        L3c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.o.f():void");
    }

    public HandlerThread a(String str) {
        return a(str, 0);
    }

    public HandlerThread b() {
        HandlerThread handlerThread;
        f();
        synchronized (o.class) {
            c++;
            TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread obtainShareThread mShareThreadCount:" + c);
            handlerThread = f10700a;
        }
        return handlerThread;
    }

    public ExecutorService c() {
        if (d == null) {
            synchronized (o.class) {
                try {
                    if (d == null) {
                        d = Executors.newSingleThreadExecutor();
                    }
                } finally {
                }
            }
        }
        return d;
    }

    public ExecutorService d() {
        if (e == null) {
            synchronized (o.class) {
                try {
                    if (e == null) {
                        e = p.a(4, 20);
                    }
                } finally {
                }
            }
        }
        return e;
    }

    public ScheduledExecutorService e() {
        if (f == null) {
            synchronized (o.class) {
                try {
                    if (f == null) {
                        f = Executors.newScheduledThreadPool(4);
                    }
                } finally {
                }
            }
        }
        return f;
    }

    public HandlerThread a(String str, int i) {
        i = (i >= 19 || i <= -19) ? 0 : 0;
        if (TextUtils.isEmpty(str)) {
            str = "TP-HandlerThread";
        }
        HandlerThread handlerThread = new HandlerThread(str, i);
        handlerThread.start();
        return handlerThread;
    }

    public static o a() {
        if (g == null) {
            synchronized (o.class) {
                try {
                    if (g == null) {
                        g = new o();
                    }
                } finally {
                }
            }
        }
        return g;
    }

    public void a(HandlerThread handlerThread, Handler handler) {
        if (handlerThread == null) {
            return;
        }
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (!handlerThread.equals(f10700a)) {
            handlerThread.quit();
            return;
        }
        synchronized (o.class) {
            c--;
            TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread recycle mShareThreadCount:" + c);
        }
    }
}
