package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10449a;
    private final u b = null;

    private w(v vVar) {
        this.f10449a = vVar;
    }

    public static Runnable a(v vVar) {
        return new w(vVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10449a, this.b);
    }
}
