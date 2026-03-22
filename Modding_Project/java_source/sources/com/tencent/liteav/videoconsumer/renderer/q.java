package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10444a;

    private q(k kVar) {
        this.f10444a = kVar;
    }

    public static Runnable a(k kVar) {
        return new q(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.b(this.f10444a);
    }
}
