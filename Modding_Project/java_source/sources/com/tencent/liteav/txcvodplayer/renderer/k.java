package com.tencent.liteav.txcvodplayer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10358a;

    private k(d dVar) {
        this.f10358a = dVar;
    }

    public static Runnable a(d dVar) {
        return new k(dVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10358a);
    }
}
