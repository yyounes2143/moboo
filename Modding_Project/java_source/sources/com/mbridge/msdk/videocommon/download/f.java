package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.z0;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private String f10007a;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static f f10008a = new f(null);
    }

    public /* synthetic */ f(e eVar) {
        this();
    }

    public static f a() {
        return a.f10008a;
    }

    public void b() {
        this.f10007a = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
    }

    private f() {
        b();
    }

    public String a(String str) {
        try {
            String md5 = SameMD5.getMD5(z0.b(str));
            File file = new File(this.f10007a + "/" + md5 + ".html");
            if (file.exists()) {
                return m0.e(file);
            }
            return null;
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public String b(String str) {
        try {
            String str2 = this.f10007a + "/" + SameMD5.getMD5(z0.b(str)) + ".html";
            File file = new File(str2);
            if (file.exists()) {
                com.mbridge.msdk.setting.g d = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d != null && !TextUtils.isEmpty(d.T())) {
                    com.mbridge.msdk.foundation.same.d.a(str, file);
                }
                return "file:////" + str2;
            }
            return null;
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
                return null;
            }
            return null;
        }
    }
}
