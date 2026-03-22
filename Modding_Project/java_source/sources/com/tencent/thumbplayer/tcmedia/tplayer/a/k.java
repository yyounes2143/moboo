package com.tencent.thumbplayer.tcmedia.tplayer.a;

import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class k {
    public static a a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    TPLogUtil.e("TPReporterFactory", "Type is not match ReporterType, return null");
                    return null;
                }
                return new f();
            }
            return new e();
        }
        return new n();
    }
}
