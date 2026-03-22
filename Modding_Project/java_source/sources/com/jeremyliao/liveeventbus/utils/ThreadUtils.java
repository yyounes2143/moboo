package com.jeremyliao.liveeventbus.utils;

import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class ThreadUtils {
    public static boolean isMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }
}
