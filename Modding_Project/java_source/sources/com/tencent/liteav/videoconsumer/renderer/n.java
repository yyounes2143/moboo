package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10441a;
    private final boolean b;

    private n(k kVar, boolean z) {
        this.f10441a = kVar;
        this.b = z;
    }

    public static Runnable a(k kVar, boolean z) {
        return new n(kVar, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.a(this.f10441a, this.b);
    }
}
