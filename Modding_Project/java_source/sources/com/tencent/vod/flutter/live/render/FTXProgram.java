package com.tencent.vod.flutter.live.render;

import android.opengl.GLES20;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXProgram {
    private static final int INVALID_PROGRAM_ID = -1;
    private static final String TAG = "Program";
    private final String mFragmentShader;
    private int mProgramId = -1;
    private final String mVertexShader;

    public FTXProgram(String str, String str2) {
        this.mVertexShader = str;
        this.mFragmentShader = str2;
    }

    private int loadShader(String str, int i) {
        int[] iArr = new int[1];
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            OpenGlUtils.checkGlError("glCompileShader");
            return 0;
        }
        return glCreateShader;
    }

    public void build() {
        int loadShader;
        int loadShader2 = loadShader(this.mVertexShader, 35633);
        if (loadShader2 == 0 || (loadShader = loadShader(this.mFragmentShader, 35632)) == 0) {
            return;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(glCreateProgram, loadShader2);
        GLES20.glAttachShader(glCreateProgram, loadShader);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] <= 0) {
            return;
        }
        GLES20.glDeleteShader(loadShader2);
        GLES20.glDeleteShader(loadShader);
        this.mProgramId = glCreateProgram;
    }

    public void destroy() {
        GLES20.glDeleteProgram(this.mProgramId);
        this.mProgramId = -1;
    }

    public int getProgramId() {
        return this.mProgramId;
    }
}
