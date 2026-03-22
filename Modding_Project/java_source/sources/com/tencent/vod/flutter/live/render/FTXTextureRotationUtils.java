package com.tencent.vod.flutter.live.render;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXTextureRotationUtils {
    public static final float[] TEXTURE_NO_ROTATION = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    public static final float[] TEXTURE_ROTATED_90 = {1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
    public static final float[] TEXTURE_ROTATED_180 = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    public static final float[] TEXTURE_ROTATED_270 = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};

    /* compiled from: Proguard */
    /* renamed from: com.tencent.vod.flutter.live.render.FTXTextureRotationUtils$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation;

        static {
            int[] iArr = new int[FTXRotation.values().length];
            $SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation = iArr;
            try {
                iArr[FTXRotation.ROTATION_90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation[FTXRotation.ROTATION_180.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation[FTXRotation.ROTATION_270.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation[FTXRotation.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private FTXTextureRotationUtils() {
    }

    private static float flip(float f) {
        if (f != 0.0f) {
            return 0.0f;
        }
        return 1.0f;
    }

    public static float[] getRotation(FTXRotation fTXRotation, boolean z, boolean z2) {
        float[] fArr;
        int i = AnonymousClass1.$SwitchMap$com$tencent$vod$flutter$live$render$FTXRotation[fTXRotation.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    fArr = TEXTURE_NO_ROTATION;
                } else {
                    fArr = TEXTURE_ROTATED_270;
                }
            } else {
                fArr = TEXTURE_ROTATED_180;
            }
        } else {
            fArr = TEXTURE_ROTATED_90;
        }
        if (z) {
            fArr = new float[]{flip(fArr[0]), fArr[1], flip(fArr[2]), fArr[3], flip(fArr[4]), fArr[5], flip(fArr[6]), fArr[7]};
        }
        return z2 ? new float[]{fArr[0], flip(fArr[1]), fArr[2], flip(fArr[3]), fArr[4], flip(fArr[5]), fArr[6], flip(fArr[7])} : fArr;
    }
}
