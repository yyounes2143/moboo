package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10450a;

    private x(v vVar) {
        this.f10450a = vVar;
    }

    public static Runnable a(v vVar) {
        return new x(vVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.c(this.f10450a);
    }
}
