package com.tencent.liteav.videobase.c;

import android.opengl.GLES20;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.liteav.videobase.base.GLConstants;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a extends e {
    private static final float[] j = {1.1644f, 1.1644f, 1.1644f, 0.0f, -0.3918f, 2.0172f, 1.596f, -0.813f, 0.0f};
    private static final float[] k = {1.0f, 1.0f, 1.0f, 0.0f, -0.3441f, 1.772f, 1.402f, -0.7141f, 0.0f};
    private static final float[] l = {1.1644f, 1.1644f, 1.1644f, 0.0f, -0.2132f, 2.1124f, 1.7927f, -0.5329f, 0.0f};
    private static final float[] m = {1.0f, 1.0f, 1.0f, 0.0f, -0.1873f, 1.8556f, 1.5748f, -0.4681f, 0.0f};
    private static final float[] n = {-0.0627451f, -0.5019608f, -0.5019608f};
    private static final float[] o = {0.0f, -0.5019608f, -0.5019608f};
    private int p;
    private int q;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.videobase.c.a$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10368a;

        static {
            int[] iArr = new int[GLConstants.ColorRange.values().length];
            f10368a = iArr;
            try {
                iArr[GLConstants.ColorRange.FULL_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10368a[GLConstants.ColorRange.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10368a[GLConstants.ColorRange.VIDEO_RANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(GLConstants.ColorRange colorRange, GLConstants.ColorSpace colorSpace) {
        super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}", "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D uvTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(inputImageTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform\n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor;\n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}", colorRange, colorSpace);
    }

    public static /* synthetic */ void a(a aVar) {
        float[] fArr;
        float[] fArr2;
        GLES20.glUseProgram(aVar.f);
        int i = aVar.q;
        if (AnonymousClass1.f10368a[aVar.i.ordinal()] != 1) {
            fArr = n;
        } else {
            fArr = o;
        }
        GLES20.glUniform3fv(i, 1, fArr, 0);
        int i2 = aVar.p;
        GLConstants.ColorSpace colorSpace = aVar.h;
        if (colorSpace == null || colorSpace == GLConstants.ColorSpace.UNKNOWN) {
            colorSpace = GLConstants.ColorSpace.BT601;
        }
        GLConstants.ColorRange colorRange = aVar.i;
        if (colorRange == null || colorRange == GLConstants.ColorRange.UNKNOWN) {
            colorRange = GLConstants.ColorRange.VIDEO_RANGE;
        }
        if (colorSpace == GLConstants.ColorSpace.BT601) {
            if (colorRange != GLConstants.ColorRange.VIDEO_RANGE && colorRange == GLConstants.ColorRange.FULL_RANGE) {
                fArr2 = k;
            }
            fArr2 = j;
        } else {
            if (colorSpace == GLConstants.ColorSpace.BT709) {
                if (colorRange == GLConstants.ColorRange.VIDEO_RANGE) {
                    fArr2 = l;
                } else if (colorRange == GLConstants.ColorRange.FULL_RANGE) {
                    fArr2 = m;
                }
            }
            fArr2 = j;
        }
        GLES20.glUniformMatrix3fv(i2, 1, false, fArr2, 0);
    }

    @Override // com.tencent.liteav.videobase.c.e, com.tencent.liteav.videobase.a.a
    public final void b(com.tencent.liteav.videobase.frame.e eVar) {
        super.b(eVar);
        this.p = GLES20.glGetUniformLocation(this.f, "convertMatrix");
        this.q = GLES20.glGetUniformLocation(this.f, TypedValues.CycleType.S_WAVE_OFFSET);
        a(b.a(this));
    }

    @Override // com.tencent.liteav.videobase.c.e
    public final int d() {
        return 6409;
    }
}
