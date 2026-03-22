package com.mbridge.msdk.foundation.same.task;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f9073a;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("mb-task-loader-thread");
            return thread;
        }
    }

    private static ThreadFactory a() {
        return new a();
    }

    public static ThreadPoolExecutor b() {
        c();
        if (f9073a == null) {
            int availableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
            f9073a = new ThreadPoolExecutor(availableProcessors, availableProcessors, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f9073a.allowCoreThreadTimeOut(true);
        }
        return f9073a;
    }

    private static void c() {
        int i;
        if (f9073a == null) {
            int a2 = a(10, "c_t_l_t_p_c");
            int a3 = a(50, "c_t_l_t_p_m");
            int a4 = a(5, "c_t_l_t_p_t");
            if (a3 < a2) {
                i = a2;
            } else {
                i = a3;
            }
            try {
                if (MBridgeConstans.DEBUG) {
                    o0.a("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor for core " + a2 + " max " + i + " timeout " + a4);
                }
                long j = a4;
                if (j <= 0) {
                    j = 1;
                }
                f9073a = new ThreadPoolExecutor(a2, i, j, TimeUnit.SECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
                f9073a.allowCoreThreadTimeOut(true);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor failed ", e);
                }
            }
        }
    }

    private static int a(int i, String str) {
        int b;
        try {
            b = q0.a().b(str, i);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonTaskLoaderThreadPool", e.getMessage());
            }
        }
        return b <= 0 ? i : b;
    }
}
