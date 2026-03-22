package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10439a;

    private l(k kVar) {
        this.f10439a = kVar;
    }

    public static Runnable a(k kVar) {
        return new l(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10439a.b();
    }
}
