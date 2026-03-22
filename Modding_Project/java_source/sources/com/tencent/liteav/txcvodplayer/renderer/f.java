package com.tencent.liteav.txcvodplayer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10353a;
    private final boolean b;

    private f(d dVar, boolean z) {
        this.f10353a = dVar;
        this.b = z;
    }

    public static Runnable a(d dVar, boolean z) {
        return new f(dVar, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10353a, this.b);
    }
}
