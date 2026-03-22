package com.tencent.liteav.videobase.c;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class e extends com.tencent.liteav.videobase.a.a {
    protected final GLConstants.ColorSpace h;
    protected final GLConstants.ColorRange i;
    private int j;
    private final int[] k;
    private int l;
    private int m;

    public e(String str, String str2, GLConstants.ColorRange colorRange, GLConstants.ColorSpace colorSpace) {
        super(str, str2);
        int[] iArr = new int[2];
        this.k = iArr;
        this.l = 0;
        this.m = 0;
        Arrays.fill(iArr, -1);
        this.h = colorSpace == GLConstants.ColorSpace.UNKNOWN ? GLConstants.ColorSpace.BT601 : colorSpace;
        this.i = colorRange == GLConstants.ColorRange.UNKNOWN ? GLConstants.ColorRange.VIDEO_RANGE : colorRange;
    }

    private void e() {
        int i = 0;
        while (true) {
            int[] iArr = this.k;
            if (i < iArr.length) {
                OpenGlUtils.deleteTexture(iArr[i]);
                this.k[i] = -1;
                i++;
            } else {
                return;
            }
        }
    }

    public final void a(ByteBuffer byteBuffer, int i, int i2) {
        if (this.l != i || this.m != i2) {
            e();
            this.l = i;
            this.m = i2;
        }
        OpenGlUtils.loadYuv420DataToTextures(byteBuffer, d(), i, i2, this.k);
    }

    @Override // com.tencent.liteav.videobase.a.a
    public void b(com.tencent.liteav.videobase.frame.e eVar) {
        super.b(eVar);
        this.j = GLES20.glGetUniformLocation(this.f, "uvTexture");
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void c() {
        e();
        super.c();
    }

    public abstract int d();

    @Override // com.tencent.liteav.videobase.a.a
    public final void a(int i, com.tencent.liteav.videobase.frame.d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        super.a(this.k[0], dVar, floatBuffer, floatBuffer2);
    }

    @Override // com.tencent.liteav.videobase.a.a
    public final void a(int i) {
        super.a(i);
        GLES20.glActiveTexture(33985);
        OpenGlUtils.bindTexture(a(), this.k[1]);
        GLES20.glUniform1i(this.j, 1);
    }

    public e(String str, String str2) {
        this(str, str2, GLConstants.ColorRange.VIDEO_RANGE, GLConstants.ColorSpace.BT601);
    }
}
