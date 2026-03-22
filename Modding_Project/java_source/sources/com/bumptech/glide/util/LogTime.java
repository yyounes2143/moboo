package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.os.SystemClock;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LogTime {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final double f5199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1.0d / Math.pow(10.0d, 6.0d);

    @TargetApi(17)
    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return SystemClock.elapsedRealtimeNanos();
    }

    public static double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - j) * f5199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
