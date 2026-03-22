package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f10436a;

    private i(f fVar) {
        this.f10436a = fVar;
    }

    public static Runnable a(f fVar) {
        return new i(fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f10436a);
    }
}
