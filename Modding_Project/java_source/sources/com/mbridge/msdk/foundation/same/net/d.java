package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d {
    public static String a(String str) {
        String b = b(str);
        if (TextUtils.isEmpty(b)) {
            return "";
        }
        return z0.a(b);
    }

    public static String b(String str) {
        int B;
        g b = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(str)) {
            B = b.p0();
        } else {
            B = b.B();
        }
        return com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
    }
}
