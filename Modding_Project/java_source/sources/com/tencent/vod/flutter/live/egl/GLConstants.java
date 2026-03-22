package com.tencent.vod.flutter.live.egl;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class GLConstants {
    static float[] CUBE_VERTICES_ARRAYS = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    static float[] TEXTURE_COORDS_NO_ROTATION = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
    static float[] TEXTURE_COORDS_ROTATE_LEFT = {1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    static float[] TEXTURE_COORDS_ROTATE_RIGHT = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    static float[] TEXTURE_COORDS_ROTATED_180 = {1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f};
    boolean debug = false;
    int noTexture = -1;
    int invalidProgramId = -1;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum GLScaleType {
        FIT_CENTER,
        CENTER_CROP
    }
}
