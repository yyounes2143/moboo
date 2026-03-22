package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f10430a;

    private e(b bVar) {
        this.f10430a = bVar;
    }

    public static Runnable a(b bVar) {
        return new e(bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.a(this.f10430a);
    }
}
