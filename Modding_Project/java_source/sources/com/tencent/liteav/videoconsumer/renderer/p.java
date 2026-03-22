package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10443a;

    private p(k kVar) {
        this.f10443a = kVar;
    }

    public static Runnable a(k kVar) {
        return new p(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.c(this.f10443a);
    }
}
