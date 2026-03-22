package com.tencent.liteav.videobase.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum e {
    UNKNOWN(0),
    BASELINE(1),
    MAIN(2),
    HIGH(3),
    BASELINE_RPS(11),
    MAIN_RPS(12),
    HIGH_RPS(13);
    
    private static final e[] h = values();
    private final int mValue;

    e(int i2) {
        this.mValue = i2;
    }

    public static e a(int i2) {
        e[] eVarArr;
        for (e eVar : h) {
            if (eVar.mValue == i2) {
                return eVar;
            }
        }
        return UNKNOWN;
    }
}
