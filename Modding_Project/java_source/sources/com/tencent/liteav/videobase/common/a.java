package com.tencent.liteav.videobase.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum a {
    UNKNOWN(-1),
    H264(0),
    H265(1),
    VP8(2),
    KAV1(3);
    
    private static final a[] f = values();
    private final int mValue;

    a(int i) {
        this.mValue = i;
    }

    public static a a(int i) {
        a[] aVarArr;
        for (a aVar : f) {
            if (i == aVar.mValue) {
                return aVar;
            }
        }
        return H264;
    }
}
