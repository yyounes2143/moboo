package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10442a;

    private o(k kVar) {
        this.f10442a = kVar;
    }

    public static Runnable a(k kVar) {
        return new o(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.d(this.f10442a);
    }
}
