package com.tencent.vod.flutter.live.egl;

import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Pair;
import android.widget.ImageView;
import androidx.work.Data;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.vod.flutter.live.render.FTXRotation;
import com.tencent.vod.flutter.live.render.FTXTextureRotationUtils;
import java.nio.Buffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class OpenGlUtils {
    public static final int NO_TEXTURE = -1;
    private static final String TAG = "OpenGlUtils";
    public static final float[] CUBE = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] TEXTURE = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};

    private static float addDistance(float f, float f2) {
        if (f == 0.0f) {
            return f2;
        }
        return 1.0f - f2;
    }

    public static void bindTexture(int i, int i2) {
        GLES20.glBindTexture(i, i2);
        checkGlError("bindTexture");
    }

    public static Pair<float[], float[]> calcCubeAndTextureBuffer(ImageView.ScaleType scaleType, FTXRotation fTXRotation, boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        int i6;
        float f;
        float f2;
        float f3;
        float f4;
        if (fTXRotation != FTXRotation.ROTATION_90 && fTXRotation != FTXRotation.ROTATION_270) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            i5 = i2;
        } else {
            i5 = i;
        }
        if (z2) {
            i6 = i;
        } else {
            i6 = i2;
        }
        float f5 = i3;
        float f6 = i4;
        float max = Math.max((f5 * 1.0f) / i5, (f6 * 1.0f) / i6);
        float round = (Math.round(f * max) * 1.0f) / f5;
        float round2 = (Math.round(f2 * max) * 1.0f) / f6;
        float[] fArr = CUBE;
        float[] rotation = FTXTextureRotationUtils.getRotation(fTXRotation, z, true);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            if (z2) {
                f3 = 1.0f / round2;
            } else {
                f3 = 1.0f / round;
            }
            float f7 = (1.0f - f3) / 2.0f;
            if (z2) {
                f4 = 1.0f / round;
            } else {
                f4 = 1.0f / round2;
            }
            float f8 = (1.0f - f4) / 2.0f;
            rotation = new float[]{addDistance(rotation[0], f7), addDistance(rotation[1], f8), addDistance(rotation[2], f7), addDistance(rotation[3], f8), addDistance(rotation[4], f7), addDistance(rotation[5], f8), addDistance(rotation[6], f7), addDistance(rotation[7], f8)};
        } else {
            fArr = new float[]{fArr[0] / round2, fArr[1] / round, fArr[2] / round2, fArr[3] / round, fArr[4] / round2, fArr[5] / round, fArr[6] / round2, fArr[7] / round};
        }
        return new Pair<>(fArr, rotation);
    }

    public static void checkGlError(String str) {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                LiteavLog.e(TAG, String.format("%s: glError %s", str, GLUtils.getEGLErrorString(glGetError)));
            } else {
                return;
            }
        }
    }

    public static void deleteFrameBuffer(int i) {
        if (-1 == i) {
            return;
        }
        GLES20.glDeleteFramebuffers(1, new int[]{i}, 0);
        LiteavLog.d(TAG, "delete frame buffer id: " + i);
    }

    public static void deleteTexture(int i) {
        if (-1 == i) {
            return;
        }
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
        LiteavLog.d(TAG, "delete textureId " + i);
    }

    public static int generateFrameBufferId() {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        return iArr[0];
    }

    public static int generateTextureOES() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, Data.MAX_DATA_BYTES, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        return iArr[0];
    }

    public static int loadTexture(int i, Buffer buffer, int i2, int i3, int i4) {
        int[] iArr = new int[1];
        if (i4 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            LiteavLog.d(TAG, "glGenTextures textureId: " + iArr[0]);
            bindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, Data.MAX_DATA_BYTES, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, i, i2, i3, 0, i, 5121, buffer);
        } else {
            bindTexture(3553, i4);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, i2, i3, i, 5121, buffer);
            iArr[0] = i4;
        }
        return iArr[0];
    }
}
