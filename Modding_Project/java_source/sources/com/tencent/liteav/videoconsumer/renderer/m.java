package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10440a;

    private m(k kVar) {
        this.f10440a = kVar;
    }

    public static Runnable a(k kVar) {
        return new m(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10440a.b();
    }
}
