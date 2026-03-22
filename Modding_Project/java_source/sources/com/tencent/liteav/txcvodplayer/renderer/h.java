package com.tencent.liteav.txcvodplayer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10355a;
    private final int b;
    private final int c;

    private h(d dVar, int i, int i2) {
        this.f10355a = dVar;
        this.b = i;
        this.c = i2;
    }

    public static Runnable a(d dVar, int i, int i2) {
        return new h(dVar, i, i2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10355a, this.b, this.c);
    }
}
