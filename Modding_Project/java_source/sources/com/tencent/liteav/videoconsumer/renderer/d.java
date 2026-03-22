package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f10429a;

    private d(b bVar) {
        this.f10429a = bVar;
    }

    public static Runnable a(b bVar) {
        return new d(bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.b(this.f10429a);
    }
}
