package com.tencent.liteav.txcvodplayer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10357a;
    private final com.tencent.liteav.base.util.l b;

    private j(d dVar, com.tencent.liteav.base.util.l lVar) {
        this.f10357a = dVar;
        this.b = lVar;
    }

    public static Runnable a(d dVar, com.tencent.liteav.base.util.l lVar) {
        return new j(dVar, lVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10357a, this.b);
    }
}
