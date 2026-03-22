package com.tencent.vod.flutter.player.render.gl;

import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.work.Data;
import com.tencent.liteav.base.util.LiteavLog;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXTextureRender {
    private static final int FLOAT_SIZE_BYTES = 4;
    private static final String FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n";
    private static final FloatBuffer FULL_RECTANGLE_BUF;
    private static final float[] FULL_RECTANGLE_COORDS;
    private static final FloatBuffer FULL_RECTANGLE_TEX_BUF;
    private static final float[] FULL_RECTANGLE_TEX_COORDS;
    private static final String TAG = "FTXTextureRender";
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n";
    int mPortHeight;
    int mPortWidth;
    private int mProgram;
    private final float[] mSTMatrix;
    private int mVideoHeight;
    private int mVideoWidth;
    private int maPositionHandle;
    private int maTextureHandle;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;
    private final float[] projectionMatrix = new float[16];
    private final int[] textureID = new int[1];
    private long mRenderMode = 1;

    static {
        float[] fArr = {-1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};
        FULL_RECTANGLE_COORDS = fArr;
        float[] fArr2 = {0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        FULL_RECTANGLE_TEX_COORDS = fArr2;
        FULL_RECTANGLE_BUF = TXGlUtilVideo.createFloatBuffer(fArr);
        FULL_RECTANGLE_TEX_BUF = TXGlUtilVideo.createFloatBuffer(fArr2);
    }

    public FTXTextureRender(int i, int i2) {
        float[] fArr = new float[16];
        this.mSTMatrix = fArr;
        Matrix.setIdentityM(fArr, 0);
        this.mPortWidth = i;
        this.mPortHeight = i2;
    }

    public void cleanDrawCache() {
        GLES20.glViewport(0, 0, this.mPortWidth, this.mPortHeight);
        GLES20.glClear(16384);
    }

    public void deleteTexture() {
        GLES20.glDeleteProgram(this.mProgram);
        GLES20.glDeleteTextures(1, this.textureID, 0);
    }

    public void drawFrame() {
        cleanDrawCache();
        GLES20.glUseProgram(this.mProgram);
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, 12, (Buffer) FULL_RECTANGLE_BUF);
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        GLES20.glVertexAttribPointer(this.maTextureHandle, 4, 5126, false, 16, (Buffer) FULL_RECTANGLE_TEX_BUF);
        GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.projectionMatrix, 0);
        GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.maPositionHandle);
        GLES20.glDisableVertexAttribArray(this.maTextureHandle);
        GLES20.glUseProgram(0);
    }

    public int getTextureID() {
        return this.textureID[0];
    }

    public int initTex() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        GLES20.glTexParameteri(36197, 10241, 9728);
        GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9728);
        return iArr[0];
    }

    public void setViewPortSize(int i, int i2) {
        this.mPortWidth = i;
        this.mPortHeight = i2;
        LiteavLog.i(TAG, "setViewPortSize：,viewWidth:" + this.mPortWidth + "，viewHeight：" + this.mPortHeight + ",hashCode:" + hashCode());
        updateSizeAndRenderMode(this.mVideoWidth, this.mVideoHeight, this.mRenderMode);
    }

    public void surfaceCreated() {
        int createProgram = TXGlUtilVideo.createProgram(VERTEX_SHADER, FRAGMENT_SHADER);
        this.mProgram = createProgram;
        if (createProgram != 0) {
            this.maPositionHandle = GLES20.glGetAttribLocation(createProgram, "aPosition");
            this.maTextureHandle = GLES20.glGetAttribLocation(this.mProgram, "aTextureCoord");
            this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
            this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
            this.textureID[0] = initTex();
            return;
        }
        throw new RuntimeException("failed creating program");
    }

    public void updateSizeAndRenderMode(int i, int i2, long j) {
        int i3;
        float f;
        float f2;
        float f3;
        float f4;
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.mRenderMode = j;
        int i4 = this.mPortWidth;
        if (i4 > 0 && (i3 = this.mPortHeight) > 0 && i > 0 && i2 > 0) {
            float f5 = i / i2;
            float f6 = i4 / i3;
            if (j != 0 ? !(j != 1 || f5 > f6) : f5 > f6) {
                float f7 = (i4 / f5) / i3;
                LiteavLog.i(TAG, "heightRadio:" + f7 + ",mWidth:" + this.mVideoWidth + ",mHeight:" + this.mVideoHeight + ",viewWidth:" + this.mPortWidth + "，viewHeight:" + this.mPortHeight + ",hashCode:" + hashCode());
                f = (-1.0f) / f7;
                f2 = 1.0f / f7;
                f3 = 1.0f;
                f4 = -1.0f;
            } else {
                float f8 = (i3 * f5) / i4;
                LiteavLog.i(TAG, "widthRadio:" + f8 + ",mWidth:" + this.mVideoWidth + ",mHeight:" + this.mVideoHeight + ",viewWidth:" + this.mPortWidth + "，viewHeight:" + this.mPortHeight + ",hashCode:" + hashCode());
                f4 = (-1.0f) / f8;
                f3 = 1.0f / f8;
                f2 = 1.0f;
                f = -1.0f;
            }
            Matrix.orthoM(this.projectionMatrix, 0, f4, f3, f, f2, -1.0f, 1.0f);
            return;
        }
        LiteavLog.w(TAG, "updateSizeAndRenderMode failed, size maybe zero, mWidth:" + this.mVideoWidth + ",mHeight:" + this.mVideoHeight + ",viewWidth:" + this.mPortWidth + "，viewHeight:" + this.mPortHeight + ",hashCode:" + hashCode());
    }
}
