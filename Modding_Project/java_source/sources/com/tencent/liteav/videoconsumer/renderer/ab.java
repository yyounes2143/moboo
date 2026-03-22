package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10421a;

    private ab(v vVar) {
        this.f10421a = vVar;
    }

    public static Runnable a(v vVar) {
        return new ab(vVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10421a);
    }
}
