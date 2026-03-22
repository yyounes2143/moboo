package com.tencent.liteav.txcvodplayer.renderer;

import android.graphics.SurfaceTexture;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10359a;
    private final SurfaceTexture b;

    private l(d dVar, SurfaceTexture surfaceTexture) {
        this.f10359a = dVar;
        this.b = surfaceTexture;
    }

    public static Runnable a(d dVar, SurfaceTexture surfaceTexture) {
        return new l(dVar, surfaceTexture);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10359a, this.b);
    }
}
