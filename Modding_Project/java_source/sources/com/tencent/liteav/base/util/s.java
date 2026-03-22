package com.tencent.liteav.base.util;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10261a;
    private static final a<CpuUsageMeasurer> b = new a<>(t.b());

    public static int[] a() {
        if (f10261a) {
            f10261a = false;
            b.a();
            CpuUsageMeasurer.a();
            return new int[]{0, 0};
        }
        b.a();
        return CpuUsageMeasurer.a();
    }
}
