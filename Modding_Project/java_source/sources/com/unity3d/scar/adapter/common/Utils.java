package com.unity3d.scar.adapter.common;

import android.os.Handler;
import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Utils {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable, long j) {
        new Handler(Looper.getMainLooper()).postDelayed(runnable, j);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable, 0L);
    }
}
