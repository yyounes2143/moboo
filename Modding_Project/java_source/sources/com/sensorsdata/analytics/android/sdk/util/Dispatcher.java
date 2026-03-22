package com.sensorsdata.analytics.android.sdk.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.sensorsdata.analytics.android.sdk.SALog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Dispatcher {
    private static final String TAG = "Dispatcher";
    private final Handler mHandler;
    private Handler mUiThreadHandler;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class DispatchHolder {
        private static final Dispatcher INSTANCE = new Dispatcher();

        private DispatchHolder() {
        }
    }

    public static Dispatcher getInstance() {
        return DispatchHolder.INSTANCE;
    }

    public synchronized Handler getUiThreadHandler() {
        try {
            try {
                if (this.mUiThreadHandler == null) {
                    this.mUiThreadHandler = new Handler(Looper.getMainLooper());
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mUiThreadHandler;
    }

    public void post(Runnable runnable) {
        postDelayed(runnable, 0L);
    }

    public void postDelayed(Runnable runnable, long j) {
        this.mHandler.removeCallbacks(runnable);
        this.mHandler.postDelayed(runnable, j);
    }

    public void removeCallbacksAndMessages() {
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private Dispatcher() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }
}
