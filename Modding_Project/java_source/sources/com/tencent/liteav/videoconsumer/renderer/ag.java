package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10426a;
    private final com.tencent.liteav.base.util.l b;

    private ag(v vVar, com.tencent.liteav.base.util.l lVar) {
        this.f10426a = vVar;
        this.b = lVar;
    }

    public static Runnable a(v vVar, com.tencent.liteav.base.util.l lVar) {
        return new ag(vVar, lVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10426a, this.b);
    }
}
