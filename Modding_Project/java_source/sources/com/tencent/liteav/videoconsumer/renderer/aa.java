package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10420a;

    private aa(v vVar) {
        this.f10420a = vVar;
    }

    public static Runnable a(v vVar) {
        return new aa(vVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.b(this.f10420a);
    }
}
