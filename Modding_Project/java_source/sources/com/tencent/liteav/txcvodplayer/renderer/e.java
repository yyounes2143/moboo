package com.tencent.liteav.txcvodplayer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10352a;

    private e(d dVar) {
        this.f10352a = dVar;
    }

    public static Runnable a(d dVar) {
        return new e(dVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.b(this.f10352a);
    }
}
