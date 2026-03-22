package com.mbridge.msdk.setting.net;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.o0;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class d {
    public static void a(Context context, e eVar) {
        if (eVar != null) {
            try {
                eVar.a("gaid", f.d());
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("SettingRequestDiff", e.getMessage());
                }
            }
        }
    }
}
