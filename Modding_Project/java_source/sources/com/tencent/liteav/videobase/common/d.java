package com.tencent.liteav.videobase.common;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum d {
    UNKNOWN(65535),
    IDR(0),
    P(1),
    B(6),
    P_MULTI_REF(7),
    I(8),
    SEI(17),
    SPS(18),
    PPS(19),
    VPS(20);
    
    private static final d[] k = values();
    private final int mValue;

    d(int i) {
        this.mValue = i;
    }

    public static d a(int i) {
        d[] dVarArr;
        for (d dVar : k) {
            if (dVar.mValue == i) {
                return dVar;
            }
        }
        return UNKNOWN;
    }
}
