package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f10437a;

    private j(f fVar) {
        this.f10437a = fVar;
    }

    public static Runnable a(f fVar) {
        return new j(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10437a.b();
    }
}
