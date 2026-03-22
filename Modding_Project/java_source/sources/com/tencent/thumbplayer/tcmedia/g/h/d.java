package com.tencent.thumbplayer.tcmedia.g.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f10644a = new Handler(Looper.getMainLooper());
    private static final ExecutorService b = Executors.newCachedThreadPool();
    private static final HandlerThread c;
    private static Handler d;

    static {
        HandlerThread handlerThread = new HandlerThread("tmediacodec-sub");
        c = handlerThread;
        handlerThread.start();
        d = new Handler(handlerThread.getLooper());
    }

    public static void a(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(Runnable runnable) {
        d.post(runnable);
    }
}
