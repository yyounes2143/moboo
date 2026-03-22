package com.tencent.vod.flutter.live.render;

import android.opengl.GLES20;
import com.tencent.vod.flutter.live.egl.OpenGlUtils;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.LinkedList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXGPUImageFilter {
    public static final String NO_FILTER_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";
    public static final String NO_FILTER_FRAGMENT_SHADER_FLIP = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, vec2(1.0 - textureCoordinate.x, textureCoordinate.y));\n}";
    public static final String NO_FILTER_VERTEX_SHADER = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}";
    private int mGLAttribPosition;
    private int mGLAttribTextureCoordinate;
    private int mGLUniformTexture;
    private boolean mIsInitialized;
    protected FTXProgram mProgram;
    private final LinkedList<Runnable> mRunOnDraw;
    protected float[] mTextureMatrix;

    public FTXGPUImageFilter() {
        this(false);
    }

    public final void destroy() {
        runPendingOnDrawTasks();
        onUninit();
        this.mIsInitialized = false;
        this.mProgram.destroy();
    }

    public int getTarget() {
        return 3553;
    }

    public final void init() {
        onInit();
        this.mIsInitialized = true;
    }

    public boolean isInitialized() {
        return this.mIsInitialized;
    }

    public void onDraw(int i, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        GLES20.glUseProgram(this.mProgram.getProgramId());
        runPendingOnDrawTasks();
        if (!this.mIsInitialized) {
            return;
        }
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, (Buffer) floatBuffer);
        GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        floatBuffer2.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribTextureCoordinate, 2, 5126, false, 0, (Buffer) floatBuffer2);
        GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoordinate);
        if (i != -1) {
            GLES20.glActiveTexture(33984);
            OpenGlUtils.bindTexture(getTarget(), i);
            GLES20.glUniform1i(this.mGLUniformTexture, 0);
        }
        beforeDrawArrays(i);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
        OpenGlUtils.bindTexture(getTarget(), 0);
    }

    public void onInit() {
        this.mProgram.build();
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mProgram.getProgramId(), "position");
        this.mGLUniformTexture = GLES20.glGetUniformLocation(this.mProgram.getProgramId(), "inputImageTexture");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mProgram.getProgramId(), "inputTextureCoordinate");
        this.mIsInitialized = true;
    }

    public void runPendingOnDrawTasks() {
        LinkedList linkedList;
        synchronized (this.mRunOnDraw) {
            linkedList = new LinkedList(this.mRunOnDraw);
            this.mRunOnDraw.clear();
        }
        while (!linkedList.isEmpty()) {
            ((Runnable) linkedList.removeFirst()).run();
        }
    }

    public void setTexutreTransform(float[] fArr) {
        this.mTextureMatrix = fArr;
    }

    public FTXGPUImageFilter(boolean z) {
        this.mRunOnDraw = new LinkedList<>();
        this.mProgram = new FTXProgram(NO_FILTER_VERTEX_SHADER, z ? NO_FILTER_FRAGMENT_SHADER_FLIP : NO_FILTER_FRAGMENT_SHADER);
    }

    public void onUninit() {
    }

    public void beforeDrawArrays(int i) {
    }

    public void onOutputSizeChanged(int i, int i2) {
    }
}
