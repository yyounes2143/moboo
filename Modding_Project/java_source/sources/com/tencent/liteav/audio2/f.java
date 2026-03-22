package com.tencent.liteav.audio2;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final e f10192a;

    private f(e eVar) {
        this.f10192a = eVar;
    }

    public static Runnable a(e eVar) {
        return new f(eVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        e.a(this.f10192a);
    }
}
