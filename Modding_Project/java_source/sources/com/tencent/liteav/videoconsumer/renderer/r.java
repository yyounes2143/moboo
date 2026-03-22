package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10445a;

    private r(k kVar) {
        this.f10445a = kVar;
    }

    public static Runnable a(k kVar) {
        return new r(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.a(this.f10445a);
    }
}
