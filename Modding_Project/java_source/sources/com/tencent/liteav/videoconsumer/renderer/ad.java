package com.tencent.liteav.videoconsumer.renderer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10423a;
    private final boolean b;

    private ad(v vVar, boolean z) {
        this.f10423a = vVar;
        this.b = z;
    }

    public static Runnable a(v vVar, boolean z) {
        return new ad(vVar, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10423a, this.b);
    }
}
