package com.mbridge.msdk.tracker.network.toolbox;

import android.text.TextUtils;
import com.mbridge.msdk.tracker.network.t;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class d {
    public static String a(String str, t<?> tVar) {
        if (!TextUtils.isEmpty(str) && tVar != null) {
            byte[] b = tVar.b();
            if (b != null && b.length != 0) {
                if (str.endsWith("?")) {
                    return str + new String(b);
                }
                return str + "?" + new String(b);
            }
            return str;
        }
        return "";
    }
}
