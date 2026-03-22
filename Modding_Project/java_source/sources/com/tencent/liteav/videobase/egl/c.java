package com.tencent.liteav.videobase.egl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final EGLCore f10377a;

    private c(EGLCore eGLCore) {
        this.f10377a = eGLCore;
    }

    public static Runnable a(EGLCore eGLCore) {
        return new c(eGLCore);
    }

    @Override // java.lang.Runnable
    public final void run() {
        EGLCore.lambda$destroyAsync$0(this.f10377a);
    }
}
