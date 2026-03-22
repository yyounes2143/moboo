package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Matrix;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10422a;
    private final ByteBuffer b;
    private final int c;
    private final int d;
    private final Matrix e;
    private final com.tencent.liteav.videobase.base.a f;

    private ac(v vVar, ByteBuffer byteBuffer, int i, int i2, Matrix matrix, com.tencent.liteav.videobase.base.a aVar) {
        this.f10422a = vVar;
        this.b = byteBuffer;
        this.c = i;
        this.d = i2;
        this.e = matrix;
        this.f = aVar;
    }

    public static Runnable a(v vVar, ByteBuffer byteBuffer, int i, int i2, Matrix matrix, com.tencent.liteav.videobase.base.a aVar) {
        return new ac(vVar, byteBuffer, i, i2, matrix, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10422a, this.b, this.c, this.d, this.e, this.f);
    }
}
