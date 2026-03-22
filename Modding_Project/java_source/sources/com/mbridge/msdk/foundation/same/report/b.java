package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONArray;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f9047a = "DomainReport";

    public static boolean a(com.mbridge.msdk.setting.g gVar, String str) {
        if (gVar != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    int K = gVar.K();
                    JSONArray I = gVar.I();
                    JSONArray H = gVar.H();
                    if (H != null) {
                        for (int i = 0; i < H.length(); i++) {
                            if (str.contains(H.getString(i))) {
                                return false;
                            }
                        }
                    }
                    if (K == 2) {
                        if (I != null) {
                            for (int i2 = 0; i2 < I.length(); i2++) {
                                if (str.contains(I.getString(i2))) {
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                }
            } catch (Exception e) {
                o0.b(f9047a, e.getMessage());
            }
        }
        return true;
    }
}
