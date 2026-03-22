package com.tencent.liteav.videoconsumer.renderer;

import android.view.Surface;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10452a;
    private final Surface b;
    private final boolean c;

    private z(v vVar, Surface surface, boolean z) {
        this.f10452a = vVar;
        this.b = surface;
        this.c = z;
    }

    public static Runnable a(v vVar, Surface surface, boolean z) {
        return new z(vVar, surface, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10452a, this.b, this.c);
    }
}
