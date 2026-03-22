package com.tencent.liteav.videobase.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum c {
    UNKNOWN(-1),
    HDR10(0),
    HLG(1),
    UNSUPPORTED(2);
    
    final int mValue;

    c(int i) {
        this.mValue = i;
    }

    public static c a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return UNKNOWN;
                }
                return UNSUPPORTED;
            }
            return HLG;
        }
        return HDR10;
    }
}
