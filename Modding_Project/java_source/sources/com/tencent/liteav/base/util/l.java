package com.tencent.liteav.base.util;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum l {
    NORMAL(0),
    ROTATION_90(90),
    ROTATION_180(180),
    ROTATION_270(270);
    
    private static final l[] e = values();
    public final int mValue;

    l(int i) {
        this.mValue = i;
    }

    public static l a(int i) {
        l[] lVarArr;
        for (l lVar : e) {
            if (lVar.mValue == i) {
                return lVar;
            }
        }
        return NORMAL;
    }

    public static boolean b(int i) {
        if (i != 0 && i != 90 && i != 180 && i != 270) {
            return false;
        }
        return true;
    }
}
