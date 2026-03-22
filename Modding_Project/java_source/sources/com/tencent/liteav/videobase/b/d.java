package com.tencent.liteav.videobase.b;

import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class d extends com.tencent.liteav.videobase.a.a {
    private int h = -1;
    private int i = -1;
    private int j = -1;

    @Override // com.tencent.liteav.videobase.a.a
    public final void a(int i, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        super.a(this.j, dVar, floatBuffer, floatBuffer2);
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void c() {
        super.c();
        OpenGlUtils.deleteTexture(this.j);
        this.j = -1;
    }

    public final void a(Buffer buffer, int i, int i2) {
        if (this.h != i || this.i != i2) {
            this.h = i;
            this.i = i2;
            OpenGlUtils.deleteTexture(this.j);
            this.j = -1;
        }
        this.j = OpenGlUtils.loadTexture(6408, buffer, i, i2, this.j);
    }
}
