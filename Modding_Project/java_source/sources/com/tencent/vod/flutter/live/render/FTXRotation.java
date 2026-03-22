package com.tencent.vod.flutter.live.render;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum FTXRotation {
    NORMAL,
    ROTATION_90,
    ROTATION_180,
    ROTATION_270;

    public static FTXRotation fromInt(int i) {
        if (i != 0) {
            if (i != 90) {
                if (i != 180) {
                    if (i != 270) {
                        if (i != 360) {
                            return NORMAL;
                        }
                        return NORMAL;
                    }
                    return ROTATION_270;
                }
                return ROTATION_180;
            }
            return ROTATION_90;
        }
        return NORMAL;
    }

    public int asInt() {
        int ordinal = ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return 0;
                }
                return 270;
            }
            return 180;
        }
        return 90;
    }
}
