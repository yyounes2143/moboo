package com.tencent.liteav.videoconsumer.renderer;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10451a;
    private final RenderViewHelperInterface b;
    private final ByteBuffer c;
    private final int d;
    private final int e;
    private final com.tencent.liteav.videobase.base.a f;

    private y(v vVar, RenderViewHelperInterface renderViewHelperInterface, ByteBuffer byteBuffer, int i, int i2, com.tencent.liteav.videobase.base.a aVar) {
        this.f10451a = vVar;
        this.b = renderViewHelperInterface;
        this.c = byteBuffer;
        this.d = i;
        this.e = i2;
        this.f = aVar;
    }

    public static Runnable a(v vVar, RenderViewHelperInterface renderViewHelperInterface, ByteBuffer byteBuffer, int i, int i2, com.tencent.liteav.videobase.base.a aVar) {
        return new y(vVar, renderViewHelperInterface, byteBuffer, i, i2, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10451a, this.b, this.c, this.d, this.e, this.f);
    }
}
