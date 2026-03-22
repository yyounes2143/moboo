package com.tencent.liteav.videobase.a;

import android.opengl.GLES20;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.Size;
import com.tencent.liteav.videobase.frame.c;
import com.tencent.liteav.videobase.frame.d;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.vod.flutter.live.render.FTXGPUImageFilter;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {
    private static final float[] h = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private static final AtomicInteger i = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    protected final Size f10360a;
    protected int b;
    protected int c;
    protected int d;
    protected e e;
    public int f;
    public float[] g;
    private final com.tencent.liteav.videobase.utils.a j;
    private final com.tencent.liteav.videobase.utils.e k;
    private int l;
    private final c m;
    private boolean n;

    public a() {
        this("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}", FTXGPUImageFilter.NO_FILTER_FRAGMENT_SHADER);
    }

    public int a() {
        return 3553;
    }

    public final void b() {
        if (this.n) {
            this.j.a();
            c();
            this.n = false;
            this.m.d();
            int i2 = this.f;
            if (i2 != -1) {
                GLES20.glDeleteProgram(i2);
                this.f = -1;
            }
            LiteavLog.d("TXCGPUImageFilter", "%s uninitialized, count: %d", this, Integer.valueOf(i.decrementAndGet()));
        }
    }

    public a(String str, String str2) {
        this.f10360a = new Size(-1, -1);
        this.f = -1;
        this.m = new c();
        this.j = new com.tencent.liteav.videobase.utils.a();
        this.k = new com.tencent.liteav.videobase.utils.e(str, str2);
    }

    public void a(int i2) {
    }

    public final void a(e eVar) {
        if (this.n) {
            return;
        }
        this.m.a();
        com.tencent.liteav.videobase.utils.e eVar2 = this.k;
        int a2 = com.tencent.liteav.videobase.utils.e.a(eVar2.f10403a, 35633);
        int i2 = -1;
        if (a2 == 0) {
            LiteavLog.e("Program", "load vertex shader failed.");
        } else {
            int a3 = com.tencent.liteav.videobase.utils.e.a(eVar2.b, 35632);
            if (a3 == 0) {
                LiteavLog.e("Program", "load fragment shader failed.");
                GLES20.glDeleteShader(a2);
            } else {
                int glCreateProgram = GLES20.glCreateProgram();
                GLES20.glAttachShader(glCreateProgram, a2);
                GLES20.glAttachShader(glCreateProgram, a3);
                GLES20.glLinkProgram(glCreateProgram);
                int[] iArr = new int[1];
                GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
                if (iArr[0] == 0) {
                    LiteavLog.e("Program", "link program failed. status: " + iArr[0]);
                    GLES20.glDeleteShader(a2);
                    GLES20.glDeleteShader(a3);
                    GLES20.glDeleteProgram(glCreateProgram);
                } else {
                    GLES20.glDeleteShader(a2);
                    GLES20.glDeleteShader(a3);
                    i2 = glCreateProgram;
                }
            }
        }
        this.f = i2;
        this.b = GLES20.glGetAttribLocation(i2, "position");
        this.c = GLES20.glGetUniformLocation(this.f, "inputImageTexture");
        this.d = GLES20.glGetAttribLocation(this.f, "inputTextureCoordinate");
        this.l = GLES20.glGetUniformLocation(this.f, "textureTransform");
        b(eVar);
        this.n = true;
        LiteavLog.d("TXCGPUImageFilter", "%s initialized, count: %d", this, Integer.valueOf(i.incrementAndGet()));
    }

    public void b(e eVar) {
        this.e = eVar;
    }

    public void c() {
    }

    public final void a(Runnable runnable) {
        com.tencent.liteav.videobase.utils.a aVar = this.j;
        synchronized (aVar.f10394a) {
            aVar.f10394a.add(runnable);
        }
    }

    public final void a(int i2, int i3) {
        Size size = this.f10360a;
        size.width = i2;
        size.height = i3;
    }

    public void a(int i2, d dVar, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (this.n) {
            GLES20.glUseProgram(this.f);
            this.j.a();
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.b, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.b);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.d, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.d);
            if (i2 != -1) {
                GLES20.glActiveTexture(33984);
                OpenGlUtils.bindTexture(a(), i2);
                GLES20.glUniform1i(this.c, 0);
            }
            if (dVar != null) {
                this.m.a(dVar.a());
                this.m.b();
            } else {
                OpenGlUtils.bindFramebuffer(36160, 0);
            }
            float[] fArr = this.g;
            if (fArr == null) {
                fArr = h;
            }
            GLES20.glUniformMatrix4fv(this.l, 1, false, fArr, 0);
            a(i2);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.b);
            GLES20.glDisableVertexAttribArray(this.d);
            GLES20.glActiveTexture(33984);
            OpenGlUtils.bindTexture(a(), 0);
            if (dVar != null) {
                OpenGlUtils.bindFramebuffer(36160, 0);
                this.m.c();
            }
        }
    }
}
