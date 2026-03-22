package com.tencent.liteav.videobase.utils;

import android.graphics.SurfaceTexture;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final SurfaceTextureHolder f10405a;
    private final SurfaceTexture b;

    private g(SurfaceTextureHolder surfaceTextureHolder, SurfaceTexture surfaceTexture) {
        this.f10405a = surfaceTextureHolder;
        this.b = surfaceTexture;
    }

    public static Runnable a(SurfaceTextureHolder surfaceTextureHolder, SurfaceTexture surfaceTexture) {
        return new g(surfaceTextureHolder, surfaceTexture);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTextureHolder.lambda$onFrameAvailable$0(this.f10405a, this.b);
    }
}
