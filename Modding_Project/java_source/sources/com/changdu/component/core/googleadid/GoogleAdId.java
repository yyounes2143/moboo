package com.changdu.component.core.googleadid;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GoogleAdId {

    /* renamed from: a  reason: collision with root package name */
    public static volatile i f5300a;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface OnGoogleAdIdReadListener {
        void onGoogleAdIdRead(String str);
    }

    public static Object a(Callable callable, long j) {
        if (f5300a == null) {
            synchronized (GoogleAdId.class) {
                try {
                    if (f5300a == null) {
                        f5300a = new i();
                    }
                } finally {
                }
            }
        }
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = f5300a.f5307a;
        h hVar = new h(callable);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            return scheduledThreadPoolExecutor.schedule(hVar, 0L, timeUnit).get(j, timeUnit);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void getGoogleAdId(Context context, OnGoogleAdIdReadListener onGoogleAdIdReadListener) {
        Executors.newSingleThreadExecutor().execute(new b(new d(onGoogleAdIdReadListener), new Context[]{context}, new Handler(Looper.getMainLooper())));
    }

    @WorkerThread
    public static String getGoogleAdId(Context context) {
        String str;
        Object a2;
        try {
            str = o.a(context).f5310a;
        } catch (Exception unused) {
            str = null;
        }
        if (str == null && (a2 = a(new e(context), 11000L)) != null) {
            str = (String) a(new f(context, a2), 1000L);
        }
        if (f5300a != null) {
            synchronized (GoogleAdId.class) {
                try {
                    if (f5300a != null) {
                        f5300a.f5307a.shutdownNow();
                    }
                } finally {
                }
            }
        }
        return str;
    }
}
