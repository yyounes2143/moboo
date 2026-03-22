package com.tencent.liteav.base.util;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class CpuUsageMeasurer {
    public static int[] a() {
        int[] nativeGetCpuUsage = nativeGetCpuUsage();
        return new int[]{nativeGetCpuUsage[0], nativeGetCpuUsage[1]};
    }

    public static native int[] nativeGetCpuUsage();
}
