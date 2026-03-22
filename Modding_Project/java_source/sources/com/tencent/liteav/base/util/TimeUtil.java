package com.tencent.liteav.base.util;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TimeUtil {
    public static long a() {
        return nativeGetTimeTick();
    }

    public static long b() {
        return nativeGetUtcTimeTick();
    }

    private static native long nativeGetTimeTick();

    private static native long nativeGetUtcTimeTick();
}
