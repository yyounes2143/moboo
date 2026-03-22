package com.tencent.liteav.videobase.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final b f10371a = new b();

    private b() {
    }

    public static Runnable a() {
        return f10371a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HDRCapability.checkIsHDR10Supported();
    }
}
