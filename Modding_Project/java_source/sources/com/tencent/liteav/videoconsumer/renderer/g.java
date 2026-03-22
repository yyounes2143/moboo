package com.tencent.liteav.videoconsumer.renderer;

import android.view.SurfaceView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f10434a;
    private final SurfaceView b;

    private g(f fVar, SurfaceView surfaceView) {
        this.f10434a = fVar;
        this.b = surfaceView;
    }

    public static Runnable a(f fVar, SurfaceView surfaceView) {
        return new g(fVar, surfaceView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f10434a, this.b);
    }
}
