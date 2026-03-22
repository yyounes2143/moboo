package com.tencent.liteav.txcplayer.common;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    public static ThreadPoolExecutor f10290a;

    private a() {
        super(1, 3, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
    }

    public static synchronized ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor;
        synchronized (a.class) {
            try {
                ThreadPoolExecutor threadPoolExecutor2 = f10290a;
                if (threadPoolExecutor2 != null) {
                    if (threadPoolExecutor2.isShutdown()) {
                    }
                    threadPoolExecutor = f10290a;
                }
                f10290a = new a();
                threadPoolExecutor = f10290a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return threadPoolExecutor;
    }
}
