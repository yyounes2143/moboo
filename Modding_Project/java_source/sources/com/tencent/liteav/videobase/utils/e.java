package com.tencent.liteav.videobase.utils;

import android.opengl.GLES20;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f10403a;
    public final String b;

    public e(String str, String str2) {
        this.f10403a = str;
        this.b = str2;
    }

    public static int a(String str, int i) {
        int[] iArr = new int[1];
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            OpenGlUtils.checkGlError("glCompileShader");
            GLES20.glDeleteShader(glCreateShader);
            return 0;
        }
        return glCreateShader;
    }
}
